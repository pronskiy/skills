---
name: spec-generator
description: Interview the user about a project they want to build, then produce a production-ready SPEC.md (plus a CLAUDE.md for Claude Code, and an optional private spec when some plans must stay out of an open-source repo). Use this whenever someone wants to plan, scope, or spec out a project they intend to build — phrases like "produce a spec", "create a SPEC.md", "help me spec out this idea", "I'm building X, plan it", "turn this into a spec for Claude Code", or "production-ready spec". Trigger even when the user just describes a project and asks for a plan or roadmap without saying the word "spec" — if the output they want is a structured build plan an agent could execute against, this is the skill. Do NOT use for OpenAPI/API interface specs, formal standards documents, or editing an existing finished spec's prose.
---

# Spec Generator

Turn a project idea into a production-ready `SPEC.md` an AI agent (or a human team) can build against, plus a `CLAUDE.md` that tells Claude Code how to work the spec.

The deliverable is not a pitch or a PRD. It is a build plan: every step has a concrete deliverable, every phase boundary has pass/fail guardrails, and the status tables are scannable enough that an agent can find the next 🔲 step and implement it without re-reading the whole document.

Work in two phases. **Interview first, then write.** Skipping the interview produces a generic spec; the value is in the specifics you pull out of the user.

---

## Phase 1: Interview

Goal: gather exactly enough to write a spec that's specific to *this* project. Cheaply skip what's already obvious from the conversation.

**Read the context before asking anything.** If the user has already described the stack, the problem, or the scope — in this message or earlier in the conversation — don't ask again. Re-asking what they just told you is the fastest way to feel like a form instead of a collaborator. Only ask about genuine gaps.

**Ask in rounds of 2–3 questions, building on answers.** Don't dump the whole questionnaire at once. For questions with a small set of likely answers (stack, platform, OSS vs private, monetization, solo vs team, timeline), offer the options so the user can pick rather than compose: if the `ask_user_input_v0` tool is available (chat UI), use it for tappable options; in a terminal (Claude Code) where that tool doesn't exist, just list the options as a short numbered menu they can answer with a number. Use open text only when the answer is genuinely free-form (what it does, what's wrong with existing tools).

Cover these areas, adapting as you go — dig where answers are vague, skip where they're settled:

**What**
- One sentence: what does this do?
- Who is it for, and what problem does it solve?
- What exists already, and what's wrong with it? (This is where the real design constraints hide — push here.)

**How**
- Language / stack preferences, and key libraries to build on
- Platform (macOS, Linux, cross-platform, web, …)
- Open source or private?
- Monetization intent (none, freemium, paid, undecided)

**Scope**
- What are the big chunks of work (epics)? If the user isn't sure, propose a breakdown from what you know and let them react — this is often the most useful part of the interview.
- What's the MVP — the minimum that's actually useful to someone?
- What comes after MVP?
- Known technical risks or unknowns?

**Process**
- Solo or team?
- Timeline / commitment (nights-and-weekends side project vs. full-time)?
- **Watch for split-worthy material.** If the project is open source but some epics shouldn't be public — monetization plans, a hosted commercial tier, security-sensitive details — flag it and offer to split into a public `SPEC.md` and a private `SPEC.private.md`. Don't silently bury commercial plans in a repo the user intends to open.

**Before writing, confirm the plan.** When you have enough, say so explicitly and lay out: the epic list, what's MVP vs. later, and whether there'll be a public/private split. Get a nod before generating. This catches a wrong scope read before you've written 600 lines around it.

---

## Phase 2: Write the spec

Read the two templates and fill them in. They carry the exact structure so this file doesn't have to:

- `assets/SPEC_template.md` — the SPEC.md skeleton, with inline notes explaining every section
- `assets/CLAUDE_template.md` — the CLAUDE.md skeleton for Claude Code

Produce, in the working/output directory so the files are ready to drop into a git repo:

1. `SPEC.md` — always
2. `SPEC.private.md` — only if the interview surfaced material that shouldn't be public
3. `CLAUDE.md` — always

Then present the files to the user.

### What "production-ready" means here

These are the principles that separate a useful spec from a wish list. Hold to them while filling the template:

- **Every step has a concrete deliverable.** Not "work on auth" but "ship a `login()` that exchanges credentials for a JWT and a passing test for the happy path." If you can't name the artifact a step produces, the step is too vague to be in the spec.
- **Every phase boundary has guardrails with pass/fail criteria.** A phase isn't done because the steps are checked off; it's done because the guardrail conditions are met. Guardrail tables carry an **actual outcome** column, not just criteria — the spec is where you record what really happened when you hit the gate, so a later reader (or agent) knows whether you squeaked through or sailed past.
- **Status tables are scannable.** Each phase opens with a status tracker (step, description, status, notes), every row seeded 🔲. The point is that an agent scanning the file can locate the next 🔲 and start. Keep descriptions tight enough to scan.
- **The decision log captures every non-trivial choice from the interview — not just the technical ones.** "Chose Rust for the core" belongs there, but so does "MVP excludes Windows," "kept the billing epic private," and "targeting indie devs first, not enterprises." These are the choices a future contributor will otherwise re-litigate.

### Calibrate detail to distance — don't over-spec the far future

Detail the **MVP epics fully**: real steps, code sketches, data structures, guardrails. For **post-MVP epics**, keep it lighter — goal, success metric, a rough phase breakdown, known risks — and resist writing detailed code examples for work that's months out and will be redesigned by the time you reach it. This is a living document; later epics get fleshed out when they come into focus. A spec that front-loads precise designs for everything ages badly and wastes the user's time now.

### Technical decisions table vs. decision log — keep them distinct

Both appear in the template and they're easy to conflate. The **technical decisions table** is a *snapshot*: the current key choices and their rationale, something a newcomer reads to understand the architecture. The **decision log** is *append-only history*: when each choice was made, the context at the time, who made it. A reversed decision gets a new log row; the table just shows the current state. Use the table for "what we've settled on," the log for "how we got here."

---

## Notes

- The interview is conversational, not an interrogation. Match the user's register; if they're terse and expert, move fast and propose rather than quiz.
- If the user hands you a fully-formed brief and says "just write it," skip the interview, but still confirm the epic list and MVP boundary before generating — a 30-second confirmation beats a misaimed spec.
- Seed the changelog and decision log with creation entries dated today, authored by the user (ask their name/handle if it isn't already known).
