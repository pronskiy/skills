## AI-writing check

**Overall:** This reads as strongly human, not AI-generated. Scanned against the
full catalog, the piece shows essentially none of the tells: no significance
inflation, no present-participle "analysis" tails, no puffery, no AI-vocabulary
words, no copula avoidance, no negative parallelisms, no formulaic lists or
headings, no chatbot scaffolding, no machine artifacts. What's here instead is
dense free-indirect narration with idiosyncratic rhythm, specific unusual
sensory detail, and heavy natural repetition of the same words and phrases —
the opposite of the regression-to-the-mean texture LLM prose tends to have.

### Findings

None. No span in this text matches a catalog category strongly enough to flag.
The closest surface-level candidates — frequent em dashes and a few
three-part phrasings — don't hold up on inspection (see below), so listing
them as findings would be padding, not evidence.

- **Em dashes**, e.g. "so brilliantly fine—the blue sky powdered with gold,"
  "Never mind—a little dab of black sealing-wax," "something light and
  sad—no, not sad, exactly—something gentle": these are unspaced (no space on
  either side), used to render a mid-thought interruption or correction — the
  classic literary use the catalog explicitly excludes ("em dashes alone,
  used well" is on the do-not-flag list), not the "clause — clause" spaced
  pattern §14 describes.
- **Triadic phrasing**, e.g. "Oh, how fascinating it was! How she enjoyed it!
  How she loved sitting here, watching it all!" and "He was tall, stiff,
  dignified": these are anaphora (repeated sentence-opening) and adjective
  stacking used for mounting emotional effect, not the shallow "efficient,
  scalable, and innovative" adjective-triad padding §9 targets. Low density
  overall, and the shape doesn't match the tell.

### Reads as human

- **Plain copulas throughout:** "It was her Sunday treat," "She was sure it
  was new," "They were beautifully dressed; they were in love" — no
  serves-as/stands-as dressing-up.
- **Blunt, plain verbs:** "said," "asked," "shook his head," "walked on" — no
  stiff synonyms.
- **Natural repetition instead of elegant variation:** the same woman is
  called "the ermine toque" every time she reappears rather than being
  re-labeled with a new synonym each pass; "Miss Brill" is repeated plainly
  throughout rather than varied into "the elderly observer" or similar.
- **Specific, unusual, checkable-feeling detail:** the fox fur's nose needing
  "a little dab of black sealing-wax," the honey-cake with an almond hidden
  "some Sundays," the "Jardins Publiques," the child's mother rushing "like a
  young hen."
- **Idiosyncrasy and mixed register:** stream-of-consciousness fragments and
  ellipses ("when the time came—when it was absolutely necessary...."),
  dialect spelling in dialogue ("fu-fur"), an untranslated French endearment
  ("ma petite chère"), interjections ("Dear little thing!", "No wonder!").
- **Hedges:** "she supposed," "she thought," "though what they understood she
  didn't know."

### Hidden characters
Clean — no invisible characters found (`scripts/clean_text.py` scan, exit 0,
byte-identical cleaned output).
