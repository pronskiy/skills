---
name: duel-review
description: Use when you want two agents to review a pull request and challenge each other before you act on it — give a PR link (or number/branch) and Claude and the Codex CLI each review it independently, then debate the findings. Triggers like "duel review", "duel review this PR", "have Claude and Codex review this pull request", "review this PR with Codex", "two-agent PR review". Requires the codex and gh CLIs installed and authenticated. Not for reviewing local uncommitted changes (that is the Watchdog) or for planning (use duel-plan).
---

# Duel Review — Claude + Codex review a PR, debated

## Overview
Two independent agents review a pull request and challenge each other. Claude and the **Codex CLI** each produce a review of the same diff, argue for up to two rounds (false positives, missed issues, wrong severity), then Claude — acting as **chair** — synthesizes one merged review and flags anything they never agreed on. Results are presented to you; nothing is posted to the PR.

## When to use
- A pull request where a single reviewer might miss something, or you want an adversarial cross-check before merging
- You want two models' findings reconciled into one ranked list

**Not for:** reviewing your own local uncommitted changes (that is the Watchdog hook); planning a change (use the `duel-plan` skill).

## Prerequisites
The `codex` and `gh` CLIs must both be installed and authenticated (`codex login`, `gh auth status`). If either is missing, tell the user and stop. **Codex is stateless across calls**, so every call must carry the full debate so far.

## Severity scale
`blocker` (must fix before merge) · `major` (should fix) · `minor` (nice to fix) · `nit` (style/preference). Each finding: severity, `file:line`, and a one-line rationale.

## Procedure
1. **Fetch the PR.** Use the link/number/branch the user gave:
   ```bash
   gh pr view  <pr> --json title,body,author,baseRefName,headRefName
   gh pr diff  <pr> --patch
   ```
   Keep the diff for the next steps; if it is very large, trim to the substantive hunks and say so.
2. **Review A (you).** Independently review the diff. Produce findings in the severity format above. Don't look at Codex's review first.
3. **Review B (Codex), read-only:**
   ```bash
   codex exec --sandbox read-only --ephemeral -o /tmp/fh-review-b.md "$(cat <<'PROMPT'
   Review this pull request. For each issue give: severity (blocker|major|minor|nit), file:line, and a one-line rationale. Be specific; flag real bugs, security, and correctness over style.

   PR title/description and diff:
   <paste title + body + the unified diff>
   PROMPT
   )"
   cat /tmp/fh-review-b.md
   ```
4. **Challenge — up to 2 rounds.** Each round:
   - Compare the two reviews. Challenge Codex's findings you think are false positives, mis-severitied, or missed; concede the ones it got right that you missed.
   - Send the full exchange back to Codex and let it answer:
     ```bash
     codex exec --sandbox read-only --ephemeral -o /tmp/fh-review-r.md "$(cat <<'PROMPT'
     We are co-reviewing a PR. Here is the diff, both reviews, and the debate so far:
     <diff + review A + review B + every challenge and response to date>

     Respond: drop findings you now agree are wrong, defend the rest, add anything newly noticed, and adjust severities. State any remaining disagreement explicitly.
     PROMPT
     )"
     cat /tmp/fh-review-r.md
     ```
   - Stop early once the findings stabilize.
5. **Synthesize (you are the chair).** Produce ONE merged review:
   - Confirmed findings (agreed, or survived the challenge), grouped by severity, each with `file:line` and rationale.
   - Disagreements marked **⚔️** with both positions in one line so the user can judge.
   - A short overall verdict (e.g. approve / approve-with-nits / request-changes).
6. **Present** the merged review to the user. Do not post anything to the PR.

## Quick reference
| Step | Who | Output |
|---|---|---|
| Fetch | Claude (`gh`) | PR description + diff |
| Review A | Claude | findings + severity |
| Review B | Codex | findings + severity |
| Challenge ×≤2 | both | concessions + defenses |
| Synthesis | Claude (chair) | one merged review, ⚔️ on contested findings |

## Common mistakes
- Forgetting Codex is stateless — every call must include the diff and the full debate, not just the latest message.
- Reviewing your own A together with B instead of independently first — form Review A before reading Review B.
- Debating past 2 rounds for total agreement — cap it; the chair resolves the rest and contested findings stay visible as ⚔️.
- Posting to the PR — this skill only presents to the user.
