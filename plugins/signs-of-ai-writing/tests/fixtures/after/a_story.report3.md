## AI-writing check

**Overall:** Surface reads clean — no AI-vocabulary words, no spaced em dashes or curly quotes, no puffery or significance inflation; this is competent, controlled literary prose at the sentence level. Structure reads strongly AI by the StoryScope profile: the central image is spelled out as a marriage metaphor, the ending states what the story means, the plot runs a single track in one location to a purely internal reconciliation, and two of its emotional beats land as near-verbatim matches to the catalogued AI-fingerprint phrases for embodied emotion.

### Findings

1. **Rule of three** (weak/minor) — "brine and diesel and the particular sweetness of nets drying on the quay"; "which meant she had been watching from the window, which meant she had been anxious, which Marta filed away and said nothing about"; "You went around. You came back. You went around again."; "the whole grieving, resentful, beloved thing"
   - Why: Triadic phrasing recurs five times across the piece — adjective triads, anaphoric "which meant"/"you" clauses, three-beat sentences. Density is the signal the catalog asks for, but the rhythm here is controlled and varied rather than formulaic filler, so this is closer to a literary tic than a machine one.
   - Fix: Nothing urgent. If tightening, cut the third item in one or two of these (the anaphoric "which meant... which meant..." sentence is the best candidate) so the device doesn't become a signature.

### Structure

**Tier:** Fiction (validated) — 1,739 words, single narrative scene; shorter than the StoryScope paper's 3,000–7,000-word validation range but well past the 800-word floor, so N1–N4 apply at full weight.

1. **N1 — central object explicitly compared to a marriage** — "It was, Bertold used to say, like raising a child, or like a marriage." The tuning-work paragraph already carries the parallel (go around, come back, go around again, coaxing the instrument toward agreement with itself); saying it outright is the over-determination the catalog flags almost verbatim ("the central object compared to a marriage, a wound, a promise").
   - Author decision: cut the sentence and let the tuning process itself do the comparing.

2. **N1 — narrator states the theme in the closing line** — "...coaxing the whole grieving, resentful, beloved thing back toward the sound it used to make before either of them had learned what it cost to walk away from something and call it survival." A final sentence that generalizes from the scene into a stated lesson about cost and survival.
   - Author decision: end one beat earlier, on "did not leave the room this time" or on Marta returning to the strings, and cut the explaining clause.

3. **N3 — structural streamlining, opening to closing** — Opens with "Marta Kessler had not set foot on Lindenstraße in twenty years, and the street had not waited for her" (the canonical "hadn't set foot in X in Y years" opening) and closes with "Ilse nodded, and did not leave the room this time" (the canonical tidy-reconciliation beat). In between: one location (the house, mostly one room), one causal line, no subplot, and a resolution that is entirely internal/interpersonal rather than an external event.
   - Author decision: let a second thread run alongside the reconciliation (the house sale falling through, a phone call, a neighbor at the door) so the ending isn't carried by the protagonists' internal shift alone; or cut the confirming final gesture and leave whether Ilse has changed unresolved.

4. **N2 — embodied-emotion formula** — "Marta's chest did something complicated and old at the sight of it"; "something in Marta's throat tightened unexpectedly"; "The coffee steamed and then stopped steaming" (setting-as-mirror); "Ilse almost smiled. It did not finish arriving."; "Ilse's voice had gone quiet"; "She almost laughed at herself, bitterly." Six bodily-or-setting renderings of emotion against two plain labels elsewhere ("glad," "anxious") — the first three are close to word-for-word matches of the example phrases used to define this category. Three-to-one still fits the AI profile; the two labels count against it but don't offset it.
   - Author decision: let Marta or Ilse feel something in plain words at least once at a major beat — the confession about the letters, or the final page — and cut one or two of the six body-sensation beats.

### Reads as human

- **Specific, checkable, named things:** a Förster upright piano, Gdańsk, Danzig, Lindenstraße, Marktplatz, the C major scale, a harbor-pilot husband, cherry liqueur sent for Christmas — concrete and unusual rather than vague anchors.
- **Plain emotion labels, twice:** "She was glad, honestly, to have Ilse gone from the room"; "which meant she had been anxious" — real, but outnumbered three-to-one by the bodily/setting beats above, so it counts against the AI profile without offsetting it.
- **A definitive claim without hedging:** "Because I'm better than the shop on Marktplatz."
- **Blunt, concrete verbs:** opened, stepped back, crossed her arms, struck, filed away — not stiff synonyms.
- **Em dashes used correctly:** both instances ("That's not—", "I just—") mark interrupted dialogue, not the spaced "clause — clause" filler pattern.
- **No elegant variation:** "Marta" and "Ilse" are repeated plainly rather than renamed with descriptors.
- **A loose end that never pays off:** the box of Bertold's letters is raised and dropped — "I have them all, you know... I couldn't bring myself to burn them or to show them to you" — with no resolution.
- **Moral ambivalence:** Marta's twenty years of silence, and her admission that fear of gossip about "a piano tuner's wife who couldn't tune her own marriage" shaped her leaving, keep her sympathetic but not fully vindicated.

### Hidden characters

Clean — no invisible characters found (`scripts/clean_text.py` reports "Hidden-character scan - clean").
