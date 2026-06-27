---
name: consult
description: Use when you want an independent second opinion from the Codex CLI on a specific decision, design, bug, or piece of code — triggers like "ask Codex", "what would Codex say", "get a second opinion", "cross-check this with another model", "have another agent look at this". One-shot and read-only. Requires the codex CLI installed and logged in. Not for an adversarial planning back-and-forth (use duel-plan) or for routine work you are already confident about.
---

# Consult — Codex second opinion

## Overview
Fetch an independent second opinion from the **Codex CLI** (a different model and agent) on one specific question. Codex runs **read-only** — it observes the repo and advises, it never edits.

## When to use
- You are weighing a decision and want a cross-check (architecture, naming, a tradeoff)
- A bug resists and a fresh, independent take might unstick it
- You want to validate your own plan or diagnosis against another agent

**Not for:** routine work you are confident about; anything that needs Codex to write files; a multi-round planning debate (use the `duel-plan` skill).

## Prerequisite
The `codex` CLI must be installed and authenticated (`codex login`). If it is missing or not logged in, tell the user and stop — don't fake an answer.

## Procedure
1. **Frame one focused question.** Gather only the relevant context — the specific code, error, or decision. Keep it tight; Codex can read the repo, so reference files by path instead of pasting everything.
2. **Ask Codex, read-only, capturing its final answer:**
   ```bash
   codex exec --sandbox read-only --ephemeral -o /tmp/fh-consult.md \
     "Second opinion requested. <your question>.

   Context:
   <minimal context, or file paths to look at>"
   cat /tmp/fh-consult.md
   ```
3. **Present Codex's answer labeled as Codex's view** — not yours. Then add your own brief reaction: where you agree, where you'd push back, and your resulting recommendation.

## Common mistakes
- Pasting whole files instead of pointing Codex at paths — wastes tokens, Codex has repo read access.
- Blending Codex's opinion into your own voice — keep the attribution explicit so the user knows it's a second source.
- Consulting on trivia — each call takes 10–60s and costs tokens.
