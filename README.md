# pronskiy-skills

A [Claude Code](https://claude.com/claude-code) plugin marketplace with two plugins:

| Plugin | What it does |
| --- | --- |
| **[spec-generator](#spec-generator)** | Interviews you about a project, then writes a production-ready `SPEC.md` an agent can build against — plus a `CLAUDE.md` that drives it. |
| **[fusion-harness](#fusion-harness)** | Pulls the [Codex](https://github.com/openai/codex) CLI into a Claude session as a second opinion: an automatic per-turn **Watchdog**, plus **Duel Plan**, **Duel Review**, and **Consult**. |

## Install

Add the marketplace once, then install whichever plugins you want:

```
/plugin marketplace add pronskiy/skills
/plugin install spec-generator@pronskiy-skills
/plugin install fusion-harness@pronskiy-skills
```

Or from the CLI:

```bash
claude plugin marketplace add pronskiy/skills
claude plugin install spec-generator@pronskiy-skills
```

To update later:

```
/plugin marketplace update pronskiy-skills
/plugin update spec-generator@pronskiy-skills
```

## spec-generator

Turns a project idea into a build plan, not a pitch deck. It works in two phases — **interview first, then write** — asking in rounds of 2–3 questions and skipping anything you've already explained.

You get:

- **`SPEC.md`** — living-document header, status legend, a *Current focus* pointer, executive summary, technical-decisions snapshot, ASCII architecture, epics broken into phase status tables → concrete steps → exit guardrails with an actual-outcome column, plus a risk register, an append-only decision log, and open questions.
- **`CLAUDE.md`** — instructions that start Claude Code at the *Current focus* pointer and drive the 🔲 → 🔄 → ✅ loop.
- **An optional private spec** — when the project is open source but some epics shouldn't be.

Every step names a concrete deliverable, and every phase boundary has pass/fail guardrails, so an agent can find the next 🔲 and implement it without re-reading the whole document.

**Using it:** just describe a project and ask for a plan — the skill triggers on its own. `/spec-generator` also works.

## fusion-harness

Four ways to put Codex in the room. **Prerequisite:** the [`codex`](https://github.com/openai/codex) CLI installed and authenticated (`codex login`). Every mode runs Codex **read-only** — it advises, it never edits.

- **Watchdog** — at the end of each turn, Codex reviews your uncommitted changes and either blocks the stop on serious issues (a real bug, security hole, data loss, a clear violation of intent) or just shows a note. Off by default; switch it per project in-session:
  ```
  /fusion-harness:watchdog on      # also: off | status
  ```
  It fails open — a missing, slow, or confused Codex never traps you — and it skips re-reviewing a diff it has already seen.
- **Duel Plan** — Claude and Codex each draft a plan, debate up to two rounds, then Claude synthesizes one merged plan with contested points flagged ⚔️. Ask to "duel plan" a change.
- **Duel Review** — give a pull request link; Claude and Codex each review it, challenge each other for up to two rounds, and Claude merges the findings with severity and `file:line`. Read-only — nothing is posted to the PR. Needs the `gh` CLI authenticated too. Ask to "duel review \<PR url\>".
- **Consult** — a one-shot Codex second opinion on a specific decision, bug, or chunk of code. Ask to "consult Codex".

> **What leaves your machine.** Every mode hands context to the Codex CLI, which sends it to OpenAI. Watchdog is the one to know about, because it is the only automatic one: once enabled for a project, each finished turn sends your uncommitted diff (`git diff HEAD`, capped at 60KB), the list of untracked files, and your last request read from the session transcript. Duel Plan, Duel Review, and Consult send only what you point them at, when you invoke them. Watchdog is off by default and enabled per project — nothing is sent until you run `/fusion-harness:watchdog on`.

## Layout

```
skills/
├── .claude-plugin/
│   └── marketplace.json           # the catalog
├── plugins/
│   ├── spec-generator/
│   │   ├── .claude-plugin/plugin.json
│   │   └── skills/spec-generator/
│   │       ├── SKILL.md
│   │       └── assets/
│   │           ├── SPEC_template.md
│   │           └── CLAUDE_template.md
│   └── fusion-harness/
│       ├── .claude-plugin/plugin.json
│       ├── hooks/hooks.json        # registers the Watchdog Stop hook
│       ├── commands/watchdog.md    # /fusion-harness:watchdog on|off|status
│       ├── scripts/                # codex wrapper + Stop hook + toggle + verdict schema
│       └── skills/
│           ├── consult/SKILL.md
│           ├── duel-plan/SKILL.md
│           └── duel-review/SKILL.md
├── CHANGELOG.md
├── LICENSE
└── README.md
```

## Developing

Clone the repo and add it as a local marketplace. Relative-path plugin sources only resolve when the marketplace is a git repo, which a clone already is:

```bash
git clone https://github.com/pronskiy/skills.git
claude plugin marketplace add /absolute/path/to/skills
```

**The cache key is the `version` in `marketplace.json`** — not `plugin.json`. If you set a version there it wins silently and your bumps get ignored, which is why the `plugin.json` files here deliberately carry no `version` field. (The cost is that `claude plugin validate --strict` warns about it; run the validator without `--strict`.) So the release loop is:

1. Edit the skill.
2. Bump `version` for that plugin's entry in `.claude-plugin/marketplace.json` and add a `CHANGELOG.md` line.
3. Commit and push.
4. `/plugin marketplace update pronskiy-skills` then `/plugin update <plugin>@pronskiy-skills`.

Forget the bump and Claude Code sees the same string, keeps the cached copy, and `/plugin update` reports "already at the latest version."

**Faster loop while iterating:**

- **Live, in place** — copy the inner plugin folder into your skills dir as a [skills-directory plugin](https://code.claude.com/docs/en/plugins-reference#skills-directory-plugins): `plugins/spec-generator/` → `~/.claude/skills/spec-generator/`. It loads as `spec-generator@skills-dir` and `SKILL.md` edits take effect immediately (`/reload-plugins` for anything else).
- **Session-only** — `claude --plugin-dir /absolute/path/to/skills/plugins/spec-generator` loads it for one session without installing.

**Validate before pushing:**

```bash
claude plugin validate ./plugins/spec-generator
claude plugin validate ./plugins/fusion-harness
claude plugin validate .
```

## License

[MIT](LICENSE)
