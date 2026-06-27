---
description: Turn the Codex Watchdog (auto-review on each finished turn) on or off for this project
argument-hint: "on | off | status"
---

Run the Fusion Harness watchdog switch and report the result.

Execute this exact command, passing the user's argument through:

```bash
"${CLAUDE_PLUGIN_ROOT}/scripts/watchdog-toggle.sh" $ARGUMENTS
```

- `on` — enable the watchdog: Codex reviews the uncommitted changes at the end of each of your turns and can block the stop on serious issues.
- `off` — disable it.
- `status` (or no argument) — report the current state.

Report exactly what the script prints. Do nothing else.
