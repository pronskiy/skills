#!/usr/bin/env bash
# Fusion Harness — Watchdog on/off switch.
# Writes (on) or removes (off) a per-project flag file that the Stop hook checks.
# Usage: watchdog-toggle.sh [on|off|status]

ACTION="${1:-status}"

sha() { if command -v shasum >/dev/null 2>&1; then shasum; else sha1sum; fi; }

BASE="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
KEY="$(printf '%s' "$BASE" | sha | cut -c1-16)"
STATE_DIR="${XDG_STATE_HOME:-$HOME/.local/state}/fusion-harness"
FLAG="$STATE_DIR/$KEY.on"
mkdir -p "$STATE_DIR"

case "$ACTION" in
  on)
    : > "$FLAG"
    echo "🐶 Watchdog: ON for $BASE — Codex reviews each finished turn."
    ;;
  off)
    rm -f "$FLAG" "$STATE_DIR/$KEY.snap"
    echo "🐶 Watchdog: OFF for $BASE."
    ;;
  status|"")
    if [ -f "$FLAG" ]; then
      echo "🐶 Watchdog: ON for $BASE."
    else
      echo "🐶 Watchdog: OFF for $BASE."
    fi
    ;;
  *)
    echo "usage: watchdog-toggle.sh [on|off|status]" >&2
    exit 2
    ;;
esac
