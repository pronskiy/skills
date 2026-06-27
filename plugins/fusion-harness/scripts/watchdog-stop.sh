#!/usr/bin/env bash
# Fusion Harness — Watchdog Stop hook.
# On each finished turn, if the watchdog is enabled for this project, sends the
# uncommitted changes to Codex for review and either blocks the stop (serious
# issues) or surfaces the review to the user. Fails OPEN: any error allows the
# stop so a flaky Codex never traps the developer.
#
# No `set -e`: resilience matters more than strictness here.

PLUGIN_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
INPUT="$(cat)"

sha() { if command -v shasum >/dev/null 2>&1; then shasum; else sha1sum; fi; }
field() { printf '%s' "$INPUT" | python3 -c "import sys,json; print(json.load(sys.stdin).get('$1',''))" 2>/dev/null; }

CWD="$(field cwd)";                 [ -n "$CWD" ] || CWD="${CLAUDE_PROJECT_DIR:-$PWD}"
STOP_ACTIVE="$(field stop_hook_active)"
TRANSCRIPT="$(field transcript_path)"

# --- enabled for this project? (default off → near-zero overhead) ---
PROJECT_ROOT="$(git -C "$CWD" rev-parse --show-toplevel 2>/dev/null || echo "$CWD")"
KEY="$(printf '%s' "$PROJECT_ROOT" | sha | cut -c1-16)"
STATE_DIR="${XDG_STATE_HOME:-$HOME/.local/state}/fusion-harness"
FLAG="$STATE_DIR/$KEY.on"
SNAP="$STATE_DIR/$KEY.snap"
[ -f "$FLAG" ] || exit 0

# --- collect uncommitted changes ---
cd "$PROJECT_ROOT" 2>/dev/null || exit 0
DIFF="$(git diff HEAD 2>/dev/null || git diff 2>/dev/null)"
UNTRACKED="$(git ls-files --others --exclude-standard 2>/dev/null)"
[ -n "$DIFF" ] || [ -n "$UNTRACKED" ] || exit 0
DIFF="${DIFF:0:60000}"

# --- skip if this exact state was already reviewed ---
HASH="$(printf '%s' "$DIFF$UNTRACKED" | sha | cut -c1-40)"
if [ -f "$SNAP" ] && [ "$(cat "$SNAP" 2>/dev/null)" = "$HASH" ]; then exit 0; fi
mkdir -p "$STATE_DIR"
printf '%s' "$HASH" > "$SNAP"   # review each distinct state at most once

# --- best-effort intent: the last user request from the transcript ---
INTENT="$(TRANSCRIPT="$TRANSCRIPT" python3 - <<'PY' 2>/dev/null
import os, json
p = os.environ.get("TRANSCRIPT", "")
last = ""
try:
    with open(p) as f:
        for line in f:
            try:
                o = json.loads(line)
            except Exception:
                continue
            if o.get("type") == "user":
                c = o.get("message", {}).get("content")
                if isinstance(c, str):
                    last = c
                elif isinstance(c, list):
                    t = " ".join(x.get("text", "") for x in c
                                 if isinstance(x, dict) and x.get("type") == "text")
                    if t.strip():
                        last = t
except Exception:
    pass
print(last[:2000])
PY
)"

# --- ask Codex for a verdict ---
read -r -d '' PROMPT <<EOF
You are a code-review watchdog. A coding agent (Claude) just finished a turn in this repository.
Review the uncommitted changes and classify severity:
- "block": a real bug, security hole, data loss, or a clear violation of the stated intent. Use sparingly — only for issues worth interrupting the developer right now.
- "warn": worth mentioning (minor risk, style, possible improvement) but not blocking.
- "ok": no concerns.

Stated intent (last user request; may be empty):
$INTENT

Uncommitted diff (git diff HEAD):
$DIFF

Untracked files:
$UNTRACKED

Respond ONLY with the JSON object required by the schema.
EOF

OUT="$(mktemp)"
trap 'rm -f "$OUT"' EXIT
if ! printf '%s' "$PROMPT" | "$PLUGIN_ROOT/scripts/codex-call.sh" \
        --schema "$PLUGIN_ROOT/scripts/schemas/watchdog-verdict.json" \
        --timeout 120 --cd "$PROJECT_ROOT" > "$OUT" 2>/dev/null; then
  echo '{"systemMessage":"🐶 Watchdog: Codex review unavailable (timeout or error) — allowing stop."}'
  exit 0
fi

# --- route the verdict (fail open on parse error) ---
STOP_ACTIVE="$STOP_ACTIVE" python3 - "$OUT" <<'PY' || echo '{"systemMessage":"🐶 Watchdog: could not parse Codex verdict — allowing stop."}'
import sys, json, os
out = json.load(open(sys.argv[1]))
sev = out.get("severity", "ok")
summ = (out.get("summary") or "").strip()
issues = out.get("issues") or []
stop_active = os.environ.get("STOP_ACTIVE", "").lower() == "true"
bullets = "\n".join(f"- {i}" for i in issues)

if sev == "block" and not stop_active:
    reason = ("🐶 Codex Watchdog flagged blocking issues before you stop:\n"
              + (bullets or summ)
              + "\n\nAddress these, then finish. (Turn this off with /fusion-harness:watchdog off)")
    print(json.dumps({"decision": "block", "reason": reason}))
elif sev in ("block", "warn"):
    tag = "still flagged" if sev == "block" else "heads up"
    msg = f"🐶 Watchdog ({tag}): {summ}"
    if bullets:
        msg += "\n" + bullets
    print(json.dumps({"systemMessage": msg}))
# sev == ok → print nothing, stop proceeds silently
PY
exit 0
