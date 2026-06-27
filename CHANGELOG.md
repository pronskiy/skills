# Changelog

All notable changes to the **pronskiy-skills** marketplace and its plugins.

## fusion-harness 0.1.0 — 2026-06-27

### Added
- Initial release. Fuses Claude with the Codex CLI in three modes. Requires the `codex` CLI installed and authenticated (`codex login`).
- **Watchdog** — a `Stop` hook that sends each finished turn's uncommitted changes to `codex exec` (read-only, verdict shape pinned via `--output-schema`) and either blocks the stop on serious issues or surfaces a `warn`/`ok` note. Toggled per project with `/fusion-harness:watchdog on|off|status`; off by default; snapshot dedup skips re-reviewing identical state; `stop_hook_active` guards against block loops; fails open on any Codex error.
- **Duel Plan** — a skill where Claude and Codex each draft a plan, debate up to two rounds, then Claude (as chair) synthesizes one merged plan with contested points flagged ⚔️.
- **Consult** — a skill for an on-demand, read-only Codex second opinion on a specific question.

## spec-generator 0.1.0 — 2026-06-20

### Added
- Initial release.
- Two-phase skill: interview the user (rounds of 2–3 questions, options offered as tappable in chat or a numbered menu in the terminal), then produce the spec.
- `SPEC_template.md`: living-document header, changelog, status legend, Current focus pointer, executive summary, technical-decisions snapshot, ASCII architecture, fully-structured epics (phase status tables → detailed steps → exit guardrails with an actual-outcome column), risk register, append-only decision log, open questions, and update conventions.
- `CLAUDE_template.md`: Claude Code instructions that start at the Current focus pointer and drive the 🔲→🔄→✅ loop.
- Optional public/private spec split when the project is open source but some epics shouldn't be.
