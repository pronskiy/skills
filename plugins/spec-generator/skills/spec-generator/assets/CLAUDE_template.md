<!--
  CLAUDE_template.md — fill this in to produce the project's CLAUDE.md (Claude Code project instructions).
  Strip every HTML comment before delivering. Replace [bracketed] placeholders.
  Tailor the conventions to the actual stack chosen in the interview — don't ship generic boilerplate.
-->

# CLAUDE.md

Project instructions for Claude Code working on **[Project Name]**.

## Overview

[One paragraph: what this project is and its current stage.]

**`SPEC.md` is the task list and source of truth.** Start at the **Current focus** pointer near the top of the spec — it names the next actionable step so you don't have to scan the whole file. Work the spec: implement that step's deliverable, update its status (🔲 → 🔄 → ✅) in the phase tracker, and advance the Current focus pointer. Don't skip ahead past a phase's exit guardrails — when you reach a phase boundary, verify the guardrail criteria, fill in the **Actual outcome** column, and only then move on.
<!-- If a private spec exists, mention it: e.g. "SPEC.private.md holds commercial/sensitive epics — read it for context but never commit its contents to the public repo." -->

## Code conventions

- **Directory structure:**
  ```
  [project-root]/
  ├── [src or equivalent]/
  ├── [tests]/
  └── ...
  ```
- **Style:** [formatter/linter and command, e.g. `cargo fmt` / `ruff` / `prettier`. Name the actual tools for the chosen stack.]
- **Testing:** [framework + how to run, e.g. `cargo test`, `pytest`. Note expectations — e.g. "every step with a code deliverable ships a test."]
- **Commits:** [convention, e.g. Conventional Commits: `feat(scope): summary`. Reference the spec step in the body where relevant, e.g. "implements A1.2".]

## Workflow

- **Autonomous:** [which kinds of phases/steps Claude can complete end-to-end without checking in — e.g. "pure-logic steps with clear deliverables and tests."]
- **Needs human input:** [which steps require a human — e.g. "anything touching the Decision Log, guardrail sign-offs, anything in the private spec, design/UX calls, dependency or licensing choices."]
- **The loop:** pick the next 🔲 step → implement the deliverable → run tests/linter → update the status table → commit referencing the step. At a phase boundary, stop and confirm the guardrail before continuing.
- **When blocked or ambiguous:** mark the step ⏸️ with a note, add an Open Question to the spec, and surface it rather than guessing.

## Goals

[The current near-term goal in plain terms — e.g. "get Epic A through Phase A2 so the MVP can run the three core commands end-to-end."]
