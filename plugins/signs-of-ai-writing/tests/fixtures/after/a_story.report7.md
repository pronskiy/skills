## AI-writing check

**Overall:** Surface reads clean: no significance inflation, no AI-vocabulary words (delve/crucial/testament/underscore etc.), no spaced em dashes or curly quotes, and natural, frequent use of plain copulas ("was," "is," "had been"). Structure reads AI-leaning: the piano-tuning-as-marriage metaphor is spelled out explicitly four separate times, emotion is rendered almost entirely as chest/throat/voice/object rather than named, and the story opens on a street, holds one location, and resolves through the protagonist's own choice toward a quiet, internal reconciliation. Clean surface over an AI-shaped structure is the profile associated with a humanized or de-slopped AI draft — though a human writer who leans hard on a single extended metaphor can also produce this pattern, so weigh it as a lean, not a verdict.

### Findings

1. **Rule of three** — "which meant she had been watching from the window, which meant she had been anxious, which Marta filed away and said nothing about"; "It cannot pretend the strings haven't slackened or the felt hasn't compressed. It cannot pretend the wood hasn't shifted..." (preceded by "A piano cannot lie about being out of tune"); "You went around. You came back. You went around again."
   - Why: three separate triadic/anaphoric constructions recur across the piece. Any one is ordinary rhythm; three uses of the same device is a cadence tell, though a weak one here — it's a common literary move, not a giveaway on its own.
   - Fix: keep one instance for cadence and break the other two into a different shape (a single sentence, or a pair instead of a triad).

### Structure

**Tier:** Fiction (validated) — short story, ~1,700 words, N1–N4 at full weight.

1. **Thematic over-determination (N1, strong)** — the central device is named as a metaphor outright, more than once, rather than left to work on its own: "It was, Bertold used to say, like raising a child, or like a marriage. It could not be fixed with a single decisive motion, no matter how badly you wanted one." It's restated via the letters ("the way you kept this piano, unused but never thrown away") and again in the closing sentence, which fuses the piano and the relationship into one explicit summary image: "coaxing the whole grieving, resentful, beloved thing back toward the sound it used to make before either of them had learned what it cost to walk away from something and call it survival." Author decision: pick one vehicle for the metaphor — the piano itself, left unexplained — and cut the other three places that spell it out; end on Marta's hands on the keys, not on the "call it survival" clause.

2. **Embodied-emotion formula (N2, moderate-to-strong)** — feeling is given as body, voice, or object nearly every time it appears: "Marta's chest did something complicated and old at the sight of it," "something in Marta's throat tightened unexpectedly," "Ilse almost smiled. It did not finish arriving," "Ilse's voice had gone quiet," "The coffee steamed and then stopped steaming." Smell shows up at both the town's introduction and the tool case's opening. Against that: one clear plain label — "She was glad, honestly, to have Ilse gone from the room" — but embodied renderings outnumber it roughly six to one. Author decision: keep one or two of the physical cues and let at least one more emotional beat land as a plain "she felt X" instead.

3. **Structural streamlining (N3, present but softened)** — one location (the piano room), no subplot, an opening that places the reader on a street ("had not set foot on Lindenstraße in twenty years, and the street had not waited for her"), and a resolution driven by the protagonist's own continued choice ("It's not finished... Give me another hour") rather than an external event. It's softened by two things that break the pattern: Ilse gets no paragraph of external physical description when she enters, and the ending stops short of stating reconciliation — Ilse's "That's not the same thing" / "Isn't it?" is left open, and the last beat is a nod, not a spoken forgiveness. Author decision: this is already the piece's more human-leaning structural choice; a second thread or a beat where the reconciliation is complicated rather than completed would move it further still.

Two of the three AI-leaning patterns (N1 and N2) are present at real strength, which is what drives the structural call, tempered by N3's softened, ambiguous ending and by the human-leaning signals below.

### Reads as human

- **Named real things:** a Förster upright (a real piano maker), Gdańsk, Danzig, Lindenstraße, Marktplatz — specific, checkable geography and a real brand rather than a vague gesture like "a poet once wrote."
- **A plain emotion label:** "She was glad, honestly, to have Ilse gone from the room."
- **A definitive claim:** "the only thing in the house that told the truth" — models tend to hedge away from "only."
- **Precise, specific numbers throughout:** seventy-one years old, twenty years, thirty years, six years — not vague "for a long time."
- **Moral ambivalence and an unresolved beat:** the story never hands down a verdict on Marta's choice to leave and stay silent for two decades, and Ilse's "Isn't it?" is left standing without an answer.
- **Natural repetition of names** (Marta, Ilse) rather than elegant variation.

### Hidden characters

Clean — no invisible characters found (ran `scripts/clean_text.py` on the file; zero zero-width spaces, direction marks, word joiners, soft hyphens, or homoglyphs; the script's output was byte-for-byte identical to the source).
