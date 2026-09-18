## AI-writing check

**Overall:** Surface reads clean — no AI-vocabulary words, no puffery, no
significance inflation, no chatbot residue, well-used dialogue dashes. Structure
reads AI: the narrator states the story's central metaphor outright through a
character, every major emotional beat is rendered as a body part or an object
doing something instead of a named feeling, and the piece runs on one causal
track, in essentially one room, to an internal reconciliation, closing on a
sentence that generalizes what the story meant. This is the surface-clean,
structure-AI profile — what a humanized or de-slopped draft looks like.

### Findings

1. **No catalog-level (surface) tells found.** Worked through
   `references/catalog.md` §1–17: no significance/legacy inflation, no
   present-participle "superficial analysis" tails, no puffery, no vague
   "researchers say" attribution, no "challenges and future prospects"
   scaffolding, no AI-vocabulary words (*delve, underscore, testament, vibrant,
   crucial, pivotal, tapestry, boasts...* — none appear), no copula avoidance
   (the prose uses plain *was/had/said* throughout), no "not just X but Y"
   constructions, no mechanical rule-of-three padding, no elegant variation, no
   Title Case headings or boldface piles, no chatbot scaffolding or
   placeholders, no citation/UTM artifacts. The two em dashes in the piece
   (`"I just—"`, `"That's not—"`) are unspaced and mark interrupted dialogue —
   a correct, human use, not the spaced punched-up kind. Quotes are straight
   and consistent throughout. There is nothing to fix at this layer.

### Structure

**Tier: Narrative** — literary short fiction, ~1,740 words, well over the
800-word threshold; full N1–N4 pass applies.

1. **Thematic over-determination (N1).** The central metaphor — piano-tuning as
   marriage/family repair — is stated outright rather than left to work. Via
   Bertold's remembered words: *"It was, Bertold used to say, like raising a
   child, or like a marriage. It could not be fixed with a single decisive
   motion, no matter how badly you wanted one. You went around. You came back.
   You went around again."* And the closing sentence generalizes the whole
   piece's meaning rather than ending on the image: *"...coaxing the whole
   grieving, resentful, beloved thing back toward the sound it used to make
   before either of them had learned what it cost to walk away from something
   and call it survival."* — Author decision: cut the "like raising a child, or
   like a marriage" gloss and let the tuning process carry the parallel
   unstated; end the last paragraph at "the sound it used to make" and drop the
   generalizing clause after it.

2. **Embodied-emotion formula (N2).** Feeling is consistently rendered as body
   or object rather than named, at the story's three biggest emotional beats:
   arrival — *"Marta's chest did something complicated and old at the sight of
   it"*; the first flat note — *"something in Marta's throat tightened
   unexpectedly"*; and the confrontation — *"The coffee steamed and then
   stopped steaming."* Smell is also used twice as an entry-point sensory cue
   (brine/diesel/nets on arrival; felt/machine oil opening the piano case),
   consistent with the pattern though weaker alone. — Author decision: let one
   of the three beats land as a plain stated feeling instead (afraid, angry,
   relieved) and let the coffee just sit there.

3. **Structural streamlining (N3).** One causal line, essentially one room, no
   subplot, resolved by the protagonist's own choice and an internal
   reconciliation rather than an external event. The opening places the reader
   in space with elapsed time in the near-canonical shape: *"Marta Kessler had
   not set foot on Lindenstraße in twenty years, and the street had not waited
   for her."* The ending resolves through someone finally staying rather than
   through anything happening: *"Ilse nodded, and did not leave the room this
   time."* — Author decision: give the piece a second location or a break in
   the single conversation (the street outside, a phone call, a second visit),
   or leave one thread genuinely open — the letters in the box, whether Ilse
   ever plays again, the sale of the house — instead of resolving everything in
   the one room.

### Reads as human

- **Specific, named, checkable things** rather than vague gestures: a Förster
  upright (a real piano maker), Gdańsk/Danzig, Lindenstraße, Marktplatz — this
  is the opposite of "a poet once wrote."
- **Morally ambivalent protagonist.** Marta's reasons for leaving, and for
  hiding Bertold's letters from Ilse for two decades, are left genuinely
  uncomfortable rather than resolved: Ilse's *"That's not the same thing"* /
  Marta's *"Isn't it?"* ends without being smoothed over.
- **Loose ends left loose.** The letters, the sale of the house, and whether
  Ilse will play again are all raised and never tied off.
- **Deliberate plain repetition instead of elegant variation:** "coarser, then
  finer" and "went around" recur as a callback rather than being re-worded each
  time.
- **Plain emotion labels sit alongside the embodied instances:** "she was
  glad, honestly, to have Ilse gone from the room," "which meant she had been
  anxious."
- **Dialogue dashes used correctly** for interrupted speech, not the AI spaced
  em-dash pattern.

### Hidden characters

Clean — no invisible characters found. Ran `scripts/clean_text.py` against the
file; the stderr report read "Hidden-character scan - clean. No invisible
characters found," and a diff against the cleaned stdout output showed zero
differences from the original.
