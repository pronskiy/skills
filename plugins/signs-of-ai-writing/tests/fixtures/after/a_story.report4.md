## AI-writing check

**Overall:** Surface prose reads clean and controlled — no catalog vocabulary, no punctuation tells, no puffery. Structure reads AI-consistent, and unusually precisely so: an opening built on the "hadn't set foot there in years" return, a central object explicitly equated to a marriage, a closed single-room plot that resolves on someone finally staying in the room, and a final sentence that steps outside the scene to state what it all cost — several of these land close to the diagnostic literature's own textbook examples of the pattern. This is the surface-clean-but-structurally-AI profile: the shape a humanized or heavily polished AI draft keeps even after the sentence-level tells are edited out.

### Findings

No catalog-level tells. Working through `references/catalog.md` category by category turns up nothing worth flagging: no AI-vocabulary words (delve, crucial, testament, underscores, vibrant...), no significance/legacy inflation, no puffery, no vague attribution, no "challenges and future" scaffolding, no rule-of-three padding, no elegant-variation thesaurus reaching, no Title Case or bold-label lists, no chatbot residue or placeholders. Punctuation is plain: the two em dashes present are unspaced interruptions inside dialogue ("I just—", "That's not—"), used correctly, and every quotation mark is straight. This is honest, sentence-level human-quality prose — the real signal in this piece is structural, not lexical.

### Structure

**Tier: Fiction (validated) — N1–N4 at full weight.** ~1,730 words of narrative prose. That's below the StoryScope study's validated corpus range of roughly 3,000–7,000 words, so read the following as directionally reliable rather than precisely calibrated.

1. **N1, thematic over-determination — the central object is named as the theme, not left to imply it.** "It was, Bertold used to say, like raising a child, or like a marriage. It could not be fixed with a single decisive motion..." and the preceding paragraph, "A piano cannot lie about being out of tune. It cannot pretend the strings haven't slackened or the felt hasn't compressed...", spell out exactly what the tuning is supposed to mean before the story is allowed to just show it.
   - Author decision: the tuning process already carries the marriage/reconciliation parallel through action alone; cut the explicit "like...a marriage" and the "cannot lie" paragraph's closing clauses, and let a reader draw the connection.

2. **N1, ending generalizes the story's meaning.** Final sentence: "...coaxing the whole grieving, resentful, beloved thing back toward the sound it used to make before either of them had learned what it cost to walk away from something and call it survival." This is the textbook shape for the pattern — a last clause that steps outside the scene to state the lesson, almost word for word the field guide's own illustrative example of the move.
   - Author decision: end on the preceding image — the piano "breathing in accord with itself," Ilse staying in the room — and cut the trailing generalization.

3. **N3, structural streamlining — one location, one causal line, closed-loop resolution.** Opens on "Marta Kessler had not set foot on Lindenstraße in twenty years, and the street had not waited for her" — the "hadn't set foot in [place] in [years]" opening formula. The entire story stays inside one house, runs a single causal line (arrival → tuning → confrontation → reconciliation), and resolves on "Ilse nodded, and did not leave the room this time" — again, the specific "didn't leave the room this time" reconciliation shape. No subplot, and nothing outside the two women's own choices moves the ending.
   - Author decision: a second thread, an interruption from outside the room, or an ending decided by something other than Ilse's choice would break the closed loop.

4. **N2, embodied emotion — present, but genuinely mixed rather than one-sided.** Three bodily/setting beats carry feeling: "Marta's chest did something complicated and old," "something in Marta's throat tightened unexpectedly," and "The coffee steamed and then stopped steaming" (the last is close to the field guide's own setting-as-mirror example). Against that, the story also uses plain labels — "anxious," "glad," "choosing anger over sadness." A roughly even split is closer to a human profile than the AI-typical one (81% bodily vs. 8% labeled, per the study), so weigh this one as a weak signal, not a strong one.

### Reads as human

- **Named real things, not vague gestures:** a Förster upright (a real piano maker), Gdańsk/Danzig, Marktplatz — specific, checkable anchors rather than "a piano" or "a nearby shop."
- **Moral ambivalence, not tidy resolution:** Marta's reason for leaving Bertold is left as a mix of love, fear, and self-protection, and Ilse never fully absolves her — the story doesn't resolve into one clean explanation.
- **A loose end that never pays off:** the letters ("Every letter. I have them all, you know, in a box...") are raised and then dropped — never shown, never opened on the page, never resolved.
- **Plain emotion labels sit next to the bodily ones:** "anxious," "glad," "anger," "sadness" — this skill's own guide counts that against AI authorship, not for it.
- **Deliberate repetition instead of elegant variation:** "coarser, then finer" / "go around and around" is echoed almost verbatim at the very end as a callback, not swapped for a synonym each time it recurs.
- **Uneven pacing:** paragraph lengths run from single-line dialogue beats to a 700-word backstory block, with no mechanical regularity — the kind of dispersed structure human stories tend toward.

### Hidden characters

Clean — no invisible characters. `scripts/clean_text.py` checked for zero-width spaces, direction marks, word joiners, soft hyphens, and homoglyphs/odd spacing; found none, and the cleaned output is byte-identical to the source file.
