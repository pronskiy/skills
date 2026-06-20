<!--
  SPEC_template.md — fill this in to produce the project's SPEC.md.
  Strip every HTML comment before delivering. Replace [bracketed] placeholders.
  Keep the emoji status legend and the table shapes; they're load-bearing for scannability.
-->

# [Project Name] — Technical Spec

**Author:** [name/handle] · **Created:** [YYYY-MM-DD]

> 📄 **This is a living document.** Status markers, decisions, and guardrail outcomes are meant to be updated as the work happens. See [How to Update This Document](#how-to-update-this-document) before editing.

### Changelog

| Date | Change | Author |
|------|--------|--------|
| [YYYY-MM-DD] | Initial spec created | [author] |

### Status legend

🔲 Not started · 🔄 In progress · ✅ Done · ⏸️ Blocked · ❌ Cut

### Current focus

<!-- The one place an agent (or person) checks to find where work stands without scanning the whole doc. Keep it pointed at the next actionable 🔲 step. Update it whenever you finish a step or hit a boundary. -->

**Now on:** [Epic X → Phase Xn → step Xn.n] — [one-line what's in flight]

---

## 1. Executive summary

<!-- One paragraph. What it does, who it's for, why it exists. No filler. A reader should know in 4 sentences whether this project is relevant to them. -->

[What this is, who it serves, and the problem it solves — one tight paragraph.]

---

## 2. Technical decisions

<!--
  SNAPSHOT of current key choices and why. This is "what we've settled on," not the history of how.
  History lives in the Decision Log (§6). If a decision changes, update the row here AND add a new log row.
-->

| Area | Decision | Rationale |
|------|----------|-----------|
| Language | [e.g. Rust] | [why] |
| [Architecture choice] | [decision] | [why] |
| [Storage / data] | [decision] | [why] |
| [Distribution] | [decision] | [why] |

---

## 3. Architecture overview

<!-- ASCII diagram of components and data flow. Keep it legible in a monospace editor. Label the arrows with what flows across them. -->

```
[ ASCII diagram: components as boxes, arrows for data/control flow ]

  ┌──────────┐      request       ┌──────────┐
  │  Client  │ ─────────────────▶ │   API    │
  └──────────┘                    └────┬─────┘
                                       │ query
                                       ▼
                                  ┌──────────┐
                                  │   Store  │
                                  └──────────┘
```

[One or two sentences walking through the main path.]

---

## 4. Epics

<!--
  Every epic the project needs. Detail MVP epics fully; keep post-MVP epics lighter (goal, metric,
  rough phases, risks) until they come into focus. Mark which epics are MVP.

  Each epic = Goal + Success metrics, then Phases.
  Each phase = a status tracker table (all rows seeded 🔲), then the steps, then an exit guardrail
  table before the next phase begins.
-->

### Epic A — [Name]  ·  [MVP | Post-MVP]

**Goal:** [what done looks like for this epic]
**Success metrics:** [measurable — e.g. "cold start < 200ms", "covers the 3 core commands"]

#### Phase A1 — [Name]

| Step | Description | Status | Notes |
|------|-------------|--------|-------|
| A1.1 | [short, scannable description] | 🔲 | |
| A1.2 | [short, scannable description] | 🔲 | |
| A1.3 | [short, scannable description] | 🔲 | |

**Steps (detail):**

- **A1.1 — [title].** Deliverable: [the concrete artifact this produces].
  <!-- Include a code sketch or data structure where it removes ambiguity. MVP epics: yes. Far-future epics: usually skip. -->
  ```[lang]
  [illustrative code or data structure, if it helps]
  ```
- **A1.2 — [title].** Deliverable: [artifact].
- **A1.3 — [title].** Deliverable: [artifact].

**Exit guardrails — Phase A1 → A2**

<!-- A phase is done when these pass, not when the steps are checked. The "Actual outcome" column is filled in WHEN the gate is hit — that's the record of what really happened. -->

| Guardrail | Criteria (pass/fail) | Status | Actual outcome |
|-----------|----------------------|--------|----------------|
| [e.g. Tests green] | [e.g. all unit tests pass in CI] | 🔲 | |
| [e.g. Perf budget] | [e.g. p95 latency < Xms on the bench] | 🔲 | |

#### Phase A2 — [Name]

| Step | Description | Status | Notes |
|------|-------------|--------|-------|
| A2.1 | [description] | 🔲 | |

**Steps (detail):**

- **A2.1 — [title].** Deliverable: [artifact].

<!-- Repeat phases as needed, with a guardrail table between each. -->

---

### Epic B — [Name]  ·  [MVP | Post-MVP]

<!-- Same structure. For Post-MVP epics, a goal + metric + a single rough phase list is fine until it's closer. -->

**Goal:** [...]
**Success metrics:** [...]

#### Phase B1 — [Name]

| Step | Description | Status | Notes |
|------|-------------|--------|-------|
| B1.1 | [description] | 🔲 | |

---

## 5. Risk register

| Risk | Likelihood | Impact | Mitigation |
|------|------------|--------|------------|
| [technical unknown] | [High/Med/Low] | [High/Med/Low] | [how you'll de-risk / what the fallback is] |

---

## 6. Decision log

<!--
  APPEND-ONLY history. Seed with every non-trivial choice from the interview — technical AND otherwise
  (scope cuts, audience targeting, what was kept private, OSS-vs-private, monetization stance).
  Never edit or delete a row; a reversal gets a new row that references the old one.
-->

| # | Date | Decision | Context | Decided by |
|---|------|----------|---------|------------|
| 1 | [YYYY-MM-DD] | [decision] | [why, at the time] | [who] |
| 2 | [YYYY-MM-DD] | [decision] | [context] | [who] |

---

## 7. Open questions

<!-- Anything unresolved from the interview. Honest unknowns belong here, not buried. Convert to decisions (and log them) as they resolve. -->

- [ ] [open question]
- [ ] [open question]

---

## How to Update This Document

This spec is the source of truth for the build. Keep it current as work happens:

- **Status markers.** Update a step's status in its tracker table as you go: 🔲 → 🔄 → ✅. Use ⏸️ for blocked (note why in Notes) and ❌ for cut (leave the row; the strikethrough of history is useful).
- **Current focus.** Keep the pointer at the top aimed at the next actionable 🔲 step. Update it the moment you finish a step or cross a phase boundary — a stale pointer is worse than none, since it sends the next reader to the wrong place.
- **Guardrails.** When you hit a phase boundary, fill the **Actual outcome** column with what really happened and set the guardrail status. Don't advance to the next phase until its entry guardrails pass — or log a decision explaining why you're proceeding anyway.
- **Decisions.** Any non-trivial choice made during the build gets a new row in the Decision Log (§6). It's append-only — reversals are new rows, not edits. If the choice changes the architecture, also update the Technical Decisions snapshot (§2).
- **Spec changes.** Structural changes (new epic, re-scoped phase) get a Changelog row at the top. Keep the executive summary honest if the project's shape shifts.
- **Open questions.** When one resolves, strike it from §7 and log the decision in §6.
