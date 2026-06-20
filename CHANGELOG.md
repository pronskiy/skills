# Changelog

All notable changes to the **spec-generator** plugin.

## [0.1.0] — 2026-06-20

### Added
- Initial release.
- Two-phase skill: interview the user (rounds of 2–3 questions, options offered as tappable in chat or a numbered menu in the terminal), then produce the spec.
- `SPEC_template.md`: living-document header, changelog, status legend, Current focus pointer, executive summary, technical-decisions snapshot, ASCII architecture, fully-structured epics (phase status tables → detailed steps → exit guardrails with an actual-outcome column), risk register, append-only decision log, open questions, and update conventions.
- `CLAUDE_template.md`: Claude Code instructions that start at the Current focus pointer and drive the 🔲→🔄→✅ loop.
- Optional public/private spec split when the project is open source but some epics shouldn't be.
