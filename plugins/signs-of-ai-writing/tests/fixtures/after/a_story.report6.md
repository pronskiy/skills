## AI-writing check

**Overall:** Surface reads clean: no AI-vocabulary words, no curly quotes or spaced em dashes, no chatbot residue of any kind. Structure reads AI: the story voices its own central metaphor aloud (the piano tuning is "like raising a child, or like a marriage"), routes nearly every feeling through the body instead of naming it, mirrors the hardest exchange with a cooling cup of coffee, and resolves a single-location, single-track plot through the protagonist's private understanding rather than any outside event. That's the profile of a piece that's been surface-polished — by a careful human editor or a "humanizer" pass — without changing its underlying shape.

### Findings

No surface findings. Vocabulary, punctuation, and register all read as a plain, controlled prose voice — no significance inflation, no puffery, no rule-of-three padding, no copula avoidance, no vague attribution, and the two em dashes present are unspaced and used correctly for cut-off dialogue ("I just—", "That's not—"). See Structure below for where the actual signal in this piece lives.

### Structure

**Tier: Fiction (validated)** — 1,739 words, single continuous scene, well past the ~800-word threshold for full N1–N4 weight.

1. **Stated theme via explicit metaphor (N1)** — "Bertold used to say the piano was the only thing in the house that told the truth," followed later by "It was, Bertold used to say, like raising a child, or like a marriage." The comparison between the piano and the marriage is spoken outright rather than left for the reader to find.
   - Decision: cut "like raising a child, or like a marriage" and the "told the truth" framing; let the tuning process itself carry the parallel without naming it.

2. **Thematic ending generalization (N1)** — final sentence: "...coaxing the whole grieving, resentful, beloved thing back toward the sound it used to make before either of them had learned what it cost to walk away from something and call it survival." The story closes by stating what it all meant.
   - Decision: end on the concrete image — Marta going back to the strings — and cut the "before either of them had learned..." clause.

3. **Embodied-emotion formula (N2)** — "Marta's chest did something complicated and old at the sight of it"; "something in Marta's throat tightened unexpectedly"; "Ilse almost smiled. It did not finish arriving." Nearly every emotional beat is rendered as a body part or a gesture that doesn't complete, rather than named. Against that: one plain label does appear ("which meant she had been anxious," of Ilse) — noted below, but it's one instance against several embodied ones.
   - Decision: let one or two of these beats use a plain feeling word instead — "Marta felt something old and complicated" in place of the chest doing something.

4. **Object/setting as psychological mirror (N2)** — "The coffee steamed and then stopped steaming," placed immediately after the sharpest exchange between the two women, echoing the going-cold-cup formula almost exactly.
   - Decision: cut the sentence, or have someone actually drink the coffee, so it stops doing symbolic work.

5. **Structural streamlining (N3)** — opens with street/place grounding ("Marta Kessler had not set foot on Lindenstraße in twenty years, and the street had not waited for her"), stays inside one house for the whole scene, runs one causal line with no subplot, and resolves through Marta's private choice to explain herself rather than through any external event.
   - Decision: on its own this is just a valid short-story shape; stacked with 1–4 above, it completes the single-track AI pattern. A second thread, a scene outside the house, or an ending that turns on something other than Marta's decision to talk would break it.

### Reads as human

- **Förster upright piano** — a real, specific manufacturer (August Förster), not a generic "old piano."
- **Named real places** — Gdańsk, Danzig, Marktplatz, Lindenstraße — specific rather than vague gestures.
- **A plain emotion label** — "which meant she had been anxious" sits right alongside the embodied-emotion instances above.
- **Morally mixed backstory** — Bertold is shown as genuinely loving (he wept over the piano's arrival, unlike at his own father's funeral) and as the reason the family left (his drinking); neither Marta's leaving nor Bertold's grief is resolved into a clean villain or clean wound.
- **A loose end** — the box of Bertold's letters is raised, described in some detail, and then never opened or resolved; it doesn't pay off.
- **Plain copulas throughout** — "It was a Förster upright," "It was slow work," "The dust wasn't from an empty house" — no straining to avoid *is/was*.
- **Restrained, correct em-dash use** — both instances are unspaced and mark real cut-off dialogue, not the spaced "clause — clause" AI pattern.

### Hidden characters

Clean — no invisible characters found by `scripts/clean_text.py` (zero-width spaces, direction marks, word joiners, soft hyphens, homoglyphs all absent).
