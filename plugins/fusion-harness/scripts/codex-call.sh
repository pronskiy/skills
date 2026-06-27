#!/usr/bin/env bash
# Fusion Harness — shared Codex wrapper.
#
# Reads the prompt from stdin, runs `codex exec` read-only, and prints Codex's
# final message to stdout. Used by the Watchdog hook; the skills call codex
# directly since Claude orchestrates them interactively.
#
# Usage:  printf '%s' "<prompt>" | codex-call.sh [--schema FILE] [--timeout SECS] [--cd DIR]
# Exit:   0 ok | 1 codex missing | non-zero on timeout/codex failure.

SCHEMA=""
TIMEOUT=120
CD=""
while [ $# -gt 0 ]; do
  case "$1" in
    --schema)  SCHEMA="$2"; shift 2 ;;
    --timeout) TIMEOUT="$2"; shift 2 ;;
    --cd)      CD="$2"; shift 2 ;;
    *)         shift ;;
  esac
done

if ! command -v codex >/dev/null 2>&1; then
  echo "fusion-harness: 'codex' CLI not found on PATH (install it and run 'codex login')" >&2
  exit 1
fi

PROMPT="$(cat)"
OUT="$(mktemp)"
trap 'rm -f "$OUT"' EXIT

args=(exec --sandbox read-only --ephemeral --skip-git-repo-check -o "$OUT")
[ -n "$SCHEMA" ] && args+=(--output-schema "$SCHEMA")
[ -n "$CD" ] && args+=(--cd "$CD")

# Portable timeout: prefer GNU timeout / gtimeout, fall back to perl's alarm
# (the alarm timer survives exec; default SIGALRM action terminates codex).
run_with_timeout() {
  local secs="$1"; shift
  if command -v timeout >/dev/null 2>&1; then
    timeout "$secs" "$@"
  elif command -v gtimeout >/dev/null 2>&1; then
    gtimeout "$secs" "$@"
  else
    perl -e 'alarm shift; exec @ARGV' "$secs" "$@"
  fi
}

# '-' makes codex read the prompt from stdin.
if printf '%s' "$PROMPT" | run_with_timeout "$TIMEOUT" codex "${args[@]}" - >/dev/null 2>&1; then
  cat "$OUT"
else
  rc=$?
  echo "fusion-harness: codex exec failed (rc=$rc)" >&2
  exit "$rc"
fi
