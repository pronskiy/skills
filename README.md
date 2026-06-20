# pronskiy-skills

A personal Claude Code marketplace. Currently ships one plugin:

- **spec-generator** — interviews you about a project, then produces a production-ready `SPEC.md` (plus a `CLAUDE.md` for Claude Code, and an optional private spec when some plans must stay out of an open-source repo).

```
spec-generator-plugin/
├── .claude-plugin/
│   └── marketplace.json          # the catalog
├── plugins/
│   └── spec-generator/
│       ├── .claude-plugin/
│       │   └── plugin.json        # plugin manifest
│       └── skills/
│           └── spec-generator/
│               ├── SKILL.md
│               └── assets/
│                   ├── SPEC_template.md
│                   └── CLAUDE_template.md
├── CHANGELOG.md
└── README.md
```

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
