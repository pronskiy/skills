## AI-writing check

**Overall:** Doesn't read as AI-written. The surface prose is clean — no significance inflation, no AI-vocabulary words, no puffery, no copula avoidance, and both em dashes in the piece are used correctly for interrupted dialogue. Structurally there is one genuine, worth-naming pattern: the piano's out-of-tuneness is explicitly voiced as a metaphor for marriage and truth-telling, and the closing sentence generalizes from it. But that single pattern sits inside a story with an open ending, a morally ambivalent protagonist, several named real things, and emotion rendered in a real mix of bodily and plain-label terms — the profile as a whole reads human.

### Findings

No surface findings. I checked the piece against every category in the catalog:

- No significance/legacy inflation (§1), no present-participle "-ing" editorializing tails (§2), no puffery (§3, no "vibrant," "nestled," "breathtaking" register), no vague attribution (§4), no "despite its challenges" scaffolding (§5).
- No AI-vocabulary words at all — none of *delve, crucial, underscore, testament, vibrant, tapestry, boasts, meticulous, pivotal, intricate, interplay, landscape, garner, bolstered, enduring* appear anywhere in ~1,740 words (§6).
- No copula avoidance — the prose runs on plain *was / had / sat / opened / struck*, not *serves as / stands as / features* (§7).
- No negative-parallelism ("not just X but Y") constructions (§8). The few local negations ("It was not this way," "not because of anything else") are plain qualification, not the manufactured-strawman shape.
- Triadic structures exist ("brine and diesel and the particular sweetness of nets," "You went around. You came back. You went around again," "the whole grieving, resentful, beloved thing") but each is doing real, specific work rather than padding for cadence — this is the "some triads are just good writing" case in §9, not a tell.
- No elegant variation (§10) — "Marta" and "Ilse" are repeated plainly rather than re-synonymized.
- No headers, boldface, inline-header lists, or section summaries (§11–13) — it's continuous narrative prose.
- Two em dashes total, both unspaced mid-word cutoffs in dialogue ("I just—" / "That's not—"), the correct use for interrupted speech, not the "clause — clause" emphasis pattern (§14). Do-not-flag per the skill's own guidance.
- No curly quotes (confirmed by direct character scan — straight quotes throughout) and no chatbot scaffolding, placeholders, or citation artifacts (§15–17).

### Structure

**Tier:** Fiction (validated) — 1,739 words, well past the ~800-word threshold, full N1–N4 weight.

1. **N1 — thematic over-determination (AI-leaning, strong pattern, present).** The central object is explicitly compared to the story's real subject rather than left to imply it, in three places:
   - "Bertold used to say the piano was the only thing in the house that told the truth."
   - "It was, Bertold used to say, like raising a child, or like a marriage." — this is close to a word-for-word match of the catalog's own N1 example pattern ("the central object compared to a marriage, a wound, a promise").
   - The closing sentence: "coaxing the whole grieving, resentful, beloved thing back toward the sound it used to make before either of them had learned what it cost to walk away from something and call it survival" — a generalizing final clause that extends the piano to the whole relationship.
   - Author decision: end on the clean-struck note or on "Give me another hour," and cut the explanatory tail; let the piano stay a piano and trust the reader to make the marriage connection instead of writing it in twice more.

2. **N3 — structural streamlining (AI-leaning, moderate, partial).** Single location (one room, one afternoon), no subplot, and the opening sentence places the reader in space before anything happens: "Marta Kessler had not set foot on Lindenstraße in twenty years, and the street had not waited for her." This matches the pattern. It's weakened by two things the pattern predicts against: Ilse is introduced through action and dialogue, not external description, and the ending is explicitly left unresolved — "It's not finished," she said. "Give me another hour" — rather than tidied into a completed reconciliation.

No finding for N2 (embodied emotion): two bodily instances appear ("Marta's chest did something complicated and old," "something in Marta's throat tightened unexpectedly") but they sit beside two plain labels ("she had been anxious," "She was glad, honestly") in the same piece — close to even, not the lopsided ratio the pattern describes, so it isn't flagged as a tell on its own.

### Reads as human

- **Named real things**, repeatedly, not vague gestures: a Förster upright (a real piano maker), shipped from Gdańsk, cherry liqueur sent from Danzig, "the shop on Marktplatz," Tante Hedda.
- **Morally ambivalent protagonist and an unresolved ending** — Marta's own account of leaving ("I decided I would rather you hate me for leaving than pity me for staying") doesn't get validated or forgiven within the story, and the piece ends mid-repair, not at reconciliation.
- **A loose end that never pays off**: the letters ("I have them all, you know. Every single one, in a box") are raised and dropped, not resolved.
- **Plain emotion labels** alongside the bodily ones: "anxious," "glad."
- **A flat, undefended superlative claim** — "Because I'm better than the shop on Marktplatz" — the kind of definitive assertion the catalog notes LLMs tend to hedge away from.
- **Nonlinear insertions**: the compressed four-stage flashback ("first as a bride... then as a wife... then as a mother... then as a widow") and the embedded backstory of Bertold buying the piano interrupt the linear present-tense scene.
- **Specific, occupational, checkable detail** rather than generic description: "fallboard," "wrapped in blankets like a body," "twenty winters of damp Baltic air coming in under a door that no one weatherstripped."
- **Plain copulas and blunt verbs** throughout ("was," "had," "sat," "struck") instead of dressed-up substitutes.

### Hidden characters

Clean — no invisible characters. Ran `scripts/clean_text.py` on the full file: scan reported "clean, no invisible characters found," and a diff between the original and the cleaned output showed zero differences.
