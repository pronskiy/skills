# Changelog

All notable changes to the **pronskiy-skills** marketplace and its plugins.

## Marketplace — 2026-09-02

### Added
- `LICENSE` (MIT) — both plugin manifests already declared MIT; now the repo actually ships it.
- `.gitignore` for editor state (`.idea/`, `.vscode/`, `.DS_Store`), `.claude/settings.local.json`, and `.env*`, so local state and secrets can't be committed from a fresh clone.
- `repository` field on both plugin manifests; `homepage` now points at each plugin's folder instead of a personal site.

### Changed
- README rewritten for public use: install via `/plugin marketplace add pronskiy/skills` up front, a section per plugin, and the maintainer-only release loop moved to a **Developing** section at the bottom.
- Documented what the Watchdog sends to Codex/OpenAI (uncommitted diff, untracked file list, last user request) and that it is off by default per project.
- Plugin descriptions said "three modes" — fusion-harness has had four since Duel Review landed in 0.1.1.

## fusion-harness 0.1.1 — 2026-06-29

### Added
- **Duel Review** — a skill that reviews a pull request with two agents. Claude fetches the PR via `gh` (description + diff), Claude and Codex each review it independently, they challenge each other for up to two rounds, then Claude (as chair) synthesizes one merged review (findings with severity, `file:line`, contested points flagged ⚔️) and presents it. Read-only; nothing is posted to the PR. Requires the `gh` CLI authenticated in addition to `codex`.

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
