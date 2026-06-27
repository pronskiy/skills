---
name: duel-plan
description: Use when planning a non-trivial change and you want two agents to plan it adversarially before any code is written — Claude and the Codex CLI each draft a plan, debate it, and converge into one. Triggers like "duel plan", "plan this with Codex", "have Claude and Codex argue out a plan", "co-plan this", "two-agent plan". Requires the codex CLI installed and logged in. Not for small or obvious tasks, and not when you just want a single quick opinion (use consult).
---

# Duel Plan — Claude + Codex, debated

## Overview
Plan a change with two independent agents. Claude and the **Codex CLI** each draft a plan, argue for up to two rounds, then Claude — acting as **chair** — synthesizes one merged plan and flags any point they never agreed on. The user approves the merged plan before implementation.

## When to use
- A non-trivial or ambiguous change where a single planner might miss an angle
- High-stakes work worth an adversarial cross-check before committing to an approach

**Not for:** small or obvious tasks; when you only need one quick opinion (use the `consult` skill).

## Prerequisite
The `codex` CLI must be installed and authenticated (`codex login`). If missing, tell the user and stop. **Codex is stateless across calls**, so every call must carry the full debate so far.

## Procedure
1. **Plan A (you).** Draft your own implementation plan for the task — concise: steps, files, key decisions, risks.
2. **Plan B (Codex), read-only:**
   ```bash
   codex exec --sandbox read-only --ephemeral -o /tmp/fh-duel-b.md \
     "Produce an implementation plan for: <task>. Be concrete: steps, files touched, key decisions, risks."
   cat /tmp/fh-duel-b.md
   ```
3. **Debate — up to 2 rounds.** Each round:
   - Critique Plan B against Plan A: concede where B is stronger, defend where A is better or B is risky, and revise your own position.
   - Send the whole exchange to Codex and let it answer:
     ```bash
     codex exec --sandbox read-only --ephemeral -o /tmp/fh-duel-r.md "$(cat <<'PROMPT'
     We are co-planning a change. Task, both plans, and the debate so far:
     <task + plan A + plan B + every critique and response to date>

     Respond: concede the points you are now convinced of, defend the rest, and revise YOUR plan. State any remaining disagreement explicitly.
     PROMPT
     )"
     cat /tmp/fh-duel-r.md
     ```
   - Stop early if both sides have converged.
4. **Synthesize (you are the chair).** Merge into ONE plan: steps, files, decisions, risks. Mark every unresolved disagreement with **⚔️** and give both positions in one line so the user can break the tie.
5. **Present** the merged plan and wait for approval. Do not start implementing until the user approves.

## Quick reference
| Step | Who | Output |
|---|---|---|
| Plan A | Claude | initial plan |
| Plan B | Codex | initial plan |
| Debate ×≤2 | both | critiques + revisions |
| Synthesis | Claude (chair) | one merged plan, ⚔️ on contested points |
| Approval | user | go / revise |

## Common mistakes
- Forgetting Codex is stateless — every call must include the full debate, not just the latest message.
- Debating past 2 rounds chasing total agreement — cap it; the chair's synthesis resolves the rest and contested points stay visible as ⚔️.
- Pasting whole files into the prompts — reference paths; Codex has repo read access.
- Implementing before the user approves the merged plan.
