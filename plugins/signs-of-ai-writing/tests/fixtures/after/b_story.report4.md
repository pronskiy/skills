## AI-writing check

**Overall:** Reads as clearly human, on both the surface and the structural
layer. The prose has none of the catalog's tells — no significance inflation,
no AI-vocabulary words, no copula avoidance, all 33 em dashes unspaced in the
literary style rather than the AI "clause — clause" pattern, no chatbot
residue of any kind. Structurally it runs opposite to the AI profile: the
narrator never states the theme, the ending is resolved by another person's
cruelty rather than the protagonist's own insight or choice, several vignettes
are raised and never resolved, and plain emotion labels sit alongside the
sensory writing rather than replacing it.

### Findings

No findings. The text was checked against every category in `catalog.md` —
significance/legacy inflation, superficial-analysis present-participle tails,
puffery, vague attribution, the "challenges and future prospects" formula,
AI-vocabulary density, copula avoidance, negative parallelism, rule-of-three
padding, elegant variation, Title Case/boldface abuse, inline-header lists,
section summaries and didactic disclaimers, em-dash overuse, emoji/curly-quote
misuse, chatbot scaffolding, and the machine-artifact appendix — and nothing
clears the bar for a real tell:

- A direct search for the AI-vocabulary word list (*delve, underscore,
  tapestry, testament, crucial, boasts, meticulous, pivotal, garner,
  emphasizing, showcasing, highlighting, fostering, bolstered, enhance,
  enduring, landscape, vibrant, intricate*) returns zero matches anywhere in
  the piece.
- All 33 em dashes are unspaced — "so brilliantly fine—the blue sky powdered
  with gold," "Never mind—a little dab of black sealing-wax" — the standard
  literary convention, the opposite of the AI spaced "clause — clause" habit.
- The curly quotes and apostrophes throughout ("What has been happening to
  me?") are the text's consistent typesetting convention, and the catalog
  itself says these are weak-to-ignorable on their own without other signs
  nearby — there are none here.
- One construction technically echoes the negative-parallelism pattern in
  §8 — "They weren't only the audience, not only looking on; they were
  acting" — but it's a single instance doing real thematic work (the story is
  literally about watchers becoming performers), not formulaic padding, so it
  doesn't count as a tell on its own.
- No "serves as / stands as" copula avoidance anywhere; the piece runs on
  plain "was/is/had" throughout. No closing summary, no "it's important to
  note," no placeholder text, no knowledge-cutoff hedging.

### Structure

**Tier: Fiction (validated)** — third-person short story, 1,932 words, well
past the ~800-word threshold (below the study's 3,000–7,000-word validated
range, so read this as a strong but not maximal-confidence read). N1–N4 and N6
apply.

No structural tells found; the profile lands on the human side of nearly
every axis in `narrative.md`:

- **N1, thematic over-determination — absent.** The story never explains
  itself. The final line — "But when she put the lid on she thought she heard
  something crying" — names no cause and draws no lesson; there's no narrator
  gloss, no "she understood now that...", no character voicing the metaphor
  for the reader. Even Miss Brill's "stage" epiphany earlier in the piece
  ("They weren't only the audience, not only looking on; they were acting")
  reads as a character's self-flattering delusion that the ending quietly
  undercuts, not an authorial statement of theme.
- **N2, embodied-emotion formula — mixed, tilts human.** There is some
  sensory writing ("something light and sad... seemed to move in her bosom"),
  but it sits next to plain emotion labels the AI pattern avoids: "Miss Brill
  was glad," "This was disappointing," "she was so pleased to see
  him—delighted!," "How she enjoyed it!" No smell imagery appears anywhere in
  the piece, against the AI-elevated norm of 82% of scenes.
- **N3, structural streamlining — absent.** Two locations, not one (the
  public gardens, then her room at home). The middle of the story digresses
  through a half-dozen vignettes that never pay off or connect to a single
  causal line — the silent old couple, the Englishman and his wife arguing
  about spectacles, the old invalid gentleman she reads the newspaper to, the
  ermine-toque woman being dropped by her companion. The turn is caused by an
  external event, the young couple's cruelty about her fur, not by the
  protagonist's own choice or internal reconciliation. A habitual Sunday
  ritual is set up and then pointedly not followed ("But to-day she passed
  the baker's by") — the opposite of every setup paying off.
- **N4, human-leaning structure — present.** Loose digressions that never
  resolve; an ambiguous, morally unsettled close instead of tidy acceptance;
  natural repetition of "Miss Brill" and "the band" by name rather than
  elegant variation; specific named things (the Jardins Publiques, a Panama
  hat, the French aside "*ma petite chère*") instead of vague gestures.
- **N6, model fingerprint** — not applicable; nothing here rises to a
  consistent enough habit to name one, and the user didn't ask.

### Reads as human

- Plain copulas throughout: "Miss Brill was glad," "The air was motionless,"
  "This was disappointing."
- Plain emotion labels sitting beside embodied ones rather than replacing
  them (see N2 above).
- Specific, unusual, checkable detail instead of vague inflation: moth-powder
  and sealing-wax for the fur's nose, an almond sometimes baked into a slice
  of honey-cake, the girl's simile "It's exactly like a fried whiting,"
  rendered in dialect ("fu-fur").
- Natural repetition of "Miss Brill" by name dozens of times, with no
  synonym-hunting.
- Loose digressions and threads that never pay off — the spectacles argument,
  the invalid gentleman, the beggar at the railings — sitting beside the main
  scene rather than serving it.
- An ambiguous, unresolved ending rather than an AI-typical tidy
  reconciliation.
- Idiosyncratic voice: fragments, ellipses, interjections ("Dear me!", "No
  wonder!"), free indirect discourse close enough to render one specific,
  self-deluding consciousness rather than a generic narrator.

### Hidden characters

Clean — no invisible characters found. `scripts/clean_text.py` reported zero
zero-width spaces, direction marks, word joiners, soft hyphens, or
homoglyphs; the NFKC-normalized output is byte-identical to the source.
