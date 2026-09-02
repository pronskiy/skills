# pronskiy-skills

A personal Claude Code marketplace. Ships two plugins:

- **spec-generator** — interviews you about a project, then produces a production-ready `SPEC.md` (plus a `CLAUDE.md` for Claude Code, and an optional private spec when some plans must stay out of an open-source repo).
- **fusion-harness** — fuses Claude with the [Codex](https://github.com/openai/codex) CLI: a **Watchdog** hook that has Codex review each finished turn, a **Duel Plan** skill where Claude and Codex debate a plan to consensus, and a **Consult** skill for an on-demand Codex second opinion.

```
spec-generator-plugin/
├── .claude-plugin/
│   └── marketplace.json          # the catalog
├── plugins/
│   ├── spec-generator/
│   │   ├── .claude-plugin/
│   │   │   └── plugin.json        # plugin manifest
│   │   └── skills/
│   │       └── spec-generator/
│   │           ├── SKILL.md
│   │           └── assets/
│   │               ├── SPEC_template.md
│   │               └── CLAUDE_template.md
│   └── fusion-harness/
│       ├── .claude-plugin/
│       │   └── plugin.json        # plugin manifest
│       ├── hooks/hooks.json        # registers the Watchdog Stop hook
│       ├── commands/watchdog.md    # /fusion-harness:watchdog on|off|status
│       ├── scripts/                # codex wrapper + Stop-hook + toggle + verdict schema
│       └── skills/
│           ├── consult/SKILL.md
│           ├── duel-plan/SKILL.md
│           └── duel-review/SKILL.md
├── CHANGELOG.md
├── LICENSE
└── README.md
```

## fusion-harness

Three ways to pull the Codex CLI into a Claude session. **Prerequisite:** the
[`codex`](https://github.com/openai/codex) CLI installed and authenticated (`codex login`);
every mode runs Codex **read-only** (it advises, never edits).

- **Watchdog** — at the end of each turn, Codex reviews your uncommitted changes and either
  blocks the stop on serious issues (a real bug, security hole, data loss, a clear violation
  of intent) or just shows a note. Off by default; switch it per project in-session:
  ```
  /fusion-harness:watchdog on      # also: off | status
  ```
- **Duel Plan** — Claude and Codex each draft a plan, debate up to two rounds, then Claude
  synthesizes one merged plan with contested points flagged. Ask to "duel plan" a change.
- **Consult** — a one-shot Codex second opinion. Ask to "consult Codex" or "get a second
  opinion" on a specific decision, bug, or chunk of code.
- **Duel Review** — give a pull request link and Claude and Codex each review it, challenge
  each other for up to two rounds, and Claude merges the findings (with severity, contested
  points flagged) for you. Needs the `gh` CLI authenticated too. Ask to "duel review <PR url>".

> **What leaves your machine.** Every mode hands context to the Codex CLI, which sends it to
> OpenAI. Watchdog is the one to know about, because it is the only automatic one: once enabled
> for a project, each finished turn sends your uncommitted diff (`git diff HEAD`, capped at
> 60KB), the list of untracked files, and your last request read from the session transcript.
> Duel Plan, Consult, and Duel Review send only what you point them at, when you invoke them.
> Watchdog is off by default and enabled per project — nothing is sent until you run
> `/fusion-harness:watchdog on`.

## Install from this folder

Relative-path plugin sources only resolve when the marketplace is added **via git**, so make this a git repo first (one time):

```bash
cd spec-generator-plugin
git init && git add -A && git commit -m "spec-generator 0.1.0"
```

Then add the marketplace by local path and install the plugin:

```bash
# in Claude Code
/plugin marketplace add /absolute/path/to/spec-generator-plugin
/plugin install spec-generator@pronskiy-skills
```

Or from the CLI:

```bash
claude plugin install spec-generator@pronskiy-skills
```

Invoke it by just describing a project you want to build and asking for a spec — the skill triggers on its own. The `/spec-generator` shortcut also works.

## Update regularly

The cache key for a relative-path plugin is the **version in `marketplace.json`** (not `plugin.json` — if you set it there it wins silently and your bumps get ignored). So the update loop is:

1. Edit the skill (`plugins/spec-generator/skills/spec-generator/...`).
2. Bump `version` for the `spec-generator` entry in `.claude-plugin/marketplace.json` (e.g. `0.1.0` → `0.1.1`) and add a `CHANGELOG.md` line.
3. Commit.
4. In Claude Code:
   ```bash
   /plugin marketplace update pronskiy-skills
   /plugin update spec-generator@pronskiy-skills
   ```

If you forget to bump the version, Claude Code sees the same string and keeps the cached copy — `/plugin update` will report "already at the latest version."

### Faster loop while iterating

If you're changing the skill a lot, skip the version-bump dance:

- **Live, in place** — drop the inner plugin folder into your skills dir as a [skills-directory plugin](https://code.claude.com/docs/en/plugins-reference#skills-directory-plugins). Copy `plugins/spec-generator/` to `~/.claude/skills/spec-generator/`; it loads as `spec-generator@skills-dir`, and edits to `SKILL.md` take effect immediately (run `/reload-plugins` for other changes).
- **Session-only test** — `claude --plugin-dir /absolute/path/to/spec-generator-plugin/plugins/spec-generator` loads it for one session without installing.

## Validate before sharing

```bash
claude plugin validate ./plugins/spec-generator --strict
```
