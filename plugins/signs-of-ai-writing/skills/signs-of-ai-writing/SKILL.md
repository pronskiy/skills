---
name: signs-of-ai-writing
description: >-
  Check writing for the tells of AI-generated text, surface (word choice,
  punctuation, chatbot residue) and structural (stated morals, embodied
  emotion, tidy single-track plots), and report each with the exact quoted
  span, category, and a concrete fix, or return a de-slopped rewrite. Based on
  Wikipedia's "Signs of AI writing" and the StoryScope narrative study. Invoke
  whenever someone shares writing and wants to know if it reads as AI, or wants
  that quality removed: "does this sound like ChatGPT?", "what are the specific
  tells?", "will a detector flag my essay?", "make it sound human", "it still
  reads like AI after the humanizer", or de-AI / humanize / de-slop a draft.
  Applies to any real text pasted or linked: resume, cover letter, essay, blog
  post, email, marketing page, short story, novel chapter, memoir. Trigger on
  that worry even when they never say "AI". Do NOT trigger for plain
  proofreading, punching up one line, writing from scratch, or comparing AI
  models.
---

# Signs of AI writing

## What this does

Large language models leave a recognizable stylistic fingerprint: puffed-up
significance, present-participle "analysis" tacked onto sentences, the rule of
three, a small set of overused words (*delve*, *underscore*, *vibrant*,
*testament*...), spaced em dashes, curly quotes, and so on. This skill scans a
piece of writing for those tells and hands back a findings report the author can
act on.

They also leave a structural fingerprint, and it survives surface editing: the
story explains its own theme, every feeling is a tightening chest, the plot runs
on one tidy track to a reconciliation. The skill checks both layers:
`references/catalog.md` for the surface, `references/narrative.md` for the
structure.

The point is **not** to declare "this was written by AI" — that judgment is
unreliable and false positives drive people away (see *Caveats*). The point is
to surface the specific phrases that make prose read as generic, inflated, or
machine-made, so the author can decide what to tighten.

## The one thing to get right

A tell is a **symptom**, not the disease. "Idescat represented a significant
shift toward regional statistical independence" is flagged not because it
contains the word *significant* but because it inflates importance without saying
anything concrete. If you just swap the flagged word for a synonym, the prose is
still hollow — you've only made the tell harder to spot.

So for every finding, aim the fix at the underlying problem: replace vague
inflation with a concrete fact, cut the editorializing tail, or say the plain
thing (*is* instead of *serves as*). When you can't fix it because the concrete
fact is missing, say so — that's a content gap the author needs to fill, and it's
worth more than a cosmetic reword.

## Workflow

1. **Get the text.** If the user pasted it, use that. If they pointed at a file,
   read it. If it's long, keep the whole thing in view — many tells (elegant
   variation, repeated structures, rule-of-three pile-ups) only show up across
   paragraphs.

2. **Scan against the catalog.** Read `references/catalog.md` for the full set of
   categories, watch-words, and fix patterns. Work through the text looking for
   each category. A few of the categories are mechanical and near-certain
   (spaced em dashes, curly quotes, `utm_source=chatgpt.com`, `turn0search`,
   leftover "Certainly! Here's..." scaffolding) — flag every instance of those.
   The rest are stylistic and judgment-based — flag them where the prose actually
   reads as inflated or formulaic, not on a raw keyword match.

3. **Structural pass.** Pick the tier from the table at the top of
   `references/narrative.md`: fiction of roughly 800+ words gets the full pass
   (N1–N4); memoir or personal essay of that length gets the same pass, labeled
   as extrapolated and weighed a notch lighter; expository prose of 500+ words
   gets the weak-signal subset (N5); anything shorter or functional gets
   `Structure: N/A`. Read a qualifying text as a whole piece: does it state its
   own theme, render every feeling as a body part or the weather, run on one
   causal track to an internal reconciliation, allude without naming, never
   acknowledge a reader? Note human-leaning structure too (named real things,
   asides, time jumps, loose ends, plain emotion labels). These tells survive
   surface editing, so a text that came back clean from step 2 still gets this
   pass.

4. **Weigh the whole, not just the parts.** One *crucial* or one em dash proves
   nothing; humans write those too. Density is the real signal — several
   different tells, several times, in text written after 2022. Weigh the two
   layers separately, then together. Surface-clean but structurally AI is the
   profile of a humanized or de-slopped draft; surface-heavy but structurally
   human is a person writing in press-release voice, or a human draft with AI
   polish. Say which of the four cells the text falls in. Within the structural
   layer, two of the AI-leaning patterns at strength make the call; human-leaning
   structure lowers confidence, it does not cancel them.

5. **Report** using the format below.

6. **Always run the hidden-character scan — this is a required final step, every
   time.** Stylistic reading can't see invisible characters (zero-width spaces,
   direction marks, word joiners, soft hyphens, homoglyphs). They're a strong
   mechanical tell — they survive copy-paste out of chatbots and "humanizer"
   tools — so the skill isn't finished until you've checked. Run:

   ```
   python3 scripts/clean_text.py <file>      # or:  <pipe the text> | python3 scripts/clean_text.py
   ```

   The scan report prints to stderr; the cleaned text prints to stdout. If it
   reports any hidden characters, add a **Hidden characters** finding naming them
   (they're near-certain evidence of pasted/machine-processed text) and offer the
   cleaned version. If it comes back clean, say so in one line. Do this even when
   the prose itself reads perfectly human — invisible tells are independent of
   style. When you produce a de-slopped rewrite, run your own output through it
   too, so the skill never hands back text with hidden characters of its own.

## Report format

Lead with a one-line verdict, then the findings, then a short note on what's
working. Use this structure:

```
## AI-writing check

**Overall:** <one or two sentences: how strongly this reads as AI-written, and
the dominant pattern — e.g. "Reads fairly AI-generated: heavy on significance
inflation and rule-of-three lists, plus spaced em dashes throughout." or
"Surface reads clean; structure reads AI: the narrator states the theme, every
feeling is embodied, one room, one track.">

### Findings

1. **<category>** — "<exact quoted span from the text>"
   - Why: <what makes this a tell, in one line>
   - Fix: <a concrete rewrite, or "cut it", or "needs a real fact here — none in the source">

2. ...

### Structure
<Tier: fiction / narrative nonfiction (extrapolated) / expository (extrapolated)
/ N/A, with the reason in a few words (e.g. "N/A — 180-word email"). For a
qualifying text, each structural tell found as: the pattern, the passage(s)
that carry it, and the author decision that would change it (e.g. "stated theme
— last paragraph, 'it was never really about the house' — end on the image and
cut the sentence"). Or "No structural tells", with a line on what the structure
does instead. Always include this block.>

### Reads as human
<Briefly, the things that count *against* AI authorship: plain copulas, specific
unusual facts, superlatives, hedges, natural variation. Skip if there's nothing
notable. This keeps the check honest and guards against over-flagging.>

### Hidden characters
<Result of scripts/clean_text.py. Either "Clean — no invisible characters" or a
list of what it found (e.g. "3x zero-width space (U+200B), 1x soft hyphen"),
plus an offer of the cleaned text. Always include this line.>
```

Guidelines for good findings:

- **Quote exactly** so the author can find the span. Don't paraphrase the tell.
- **Order by impact.** Lead with the pervasive, prose-defining patterns
  (significance inflation, superficial analysis, puffery). Put mechanical
  one-offs (a stray curly quote) lower.
- **Group repeats.** If "stands as a testament", "serves as a reminder", and
  "marks a pivotal moment" all appear, that's one finding — *significance
  inflation* — with the examples listed, not three findings.
- **Don't pad.** If the text is clean, say so plainly and stop. A short honest
  report beats a long list of stretches. Flagging weak signals to look thorough
  just trains the author to distrust the check.
- **Match the fix to the register.** A resume bullet, a wedding toast, and a
  Wikipedia article get different rewrites. Preserve the author's voice; you're
  removing machine residue, not imposing your own style.

## When the user wants a rewrite instead of a report

If they ask you to just fix it (not list the problems), produce the de-AI'd text
directly, then add a short changelog — a handful of bullets naming the categories
you addressed (e.g. "cut significance-inflation tails; replaced *serves as* with
*is*; removed spaced em dashes"). The categories in `references/catalog.md` are
still your guide for what to hunt down.

A rewrite is a surface edit; the structural profile stays, and a structural
reader will still see it. So the changelog ends with **Still reads as AI at the
structural level** (or "Structure: nothing to change") listing each remaining
tell as: the tell, where it lives, the choice it implies ("stated theme, last
paragraph — end on the image and cut the sentence"; "no named work behind 'a
poet once wrote' — name it or drop it"). Those choices belong to the author; the
missing subplot, reference, or aside stays missing until the author supplies it.

## Caveats — read before you accuse

These matter because a confident wrong call does real harm.

- **Signs are not proof.** LLMs learned this style from human writing, so
  editorials, press releases, travel guides, and fan wikis are full of the same
  moves. Report tells, not verdicts about authorship.
- **Untrained readers are bad at this and so are detectors.** Don't lean on a
  gut "this feels like AI." Point at specific spans and specific patterns; if
  you can't, you don't have a finding. (Readers who use chatbots daily get
  near-perfect accuracy, and they do it by pointing at specifics.)
- **Surface-clean is not human.** Editing out the catalog's tells moved
  structural detection by 1.6 points in StoryScope's test. A text that has been
  through a humanizer, or this skill's rewrite mode, keeps its structural
  profile.
- **Structural tells need length and narrative.** They say nothing about a
  200-word email; report `Structure: N/A` there. And every structural feature
  overlaps heavily between human and AI writing: the profile counts, not any
  one feature.
- **Some "tells" are just good or normal writing** — don't flag these on their
  own: perfect grammar, a formal or academic register, occasional transition
  words, curly quotes from Word/macOS, Markdown from a developer, an em dash used
  well. `references/catalog.md` has a "Do not flag" section; respect it.
- **Text predating ~November 2022** can't be AI and shouldn't be scored as such,
  however "AI-ish" it looks.

## Reference

`references/catalog.md` — the full catalog: every category with its watch-words,
a real example, and how to fix it; the AI-vocabulary word lists (with era
breakdown); the high-confidence machine artifacts; the "signs of human writing"
list; and the "do not flag" list. Read it before scanning; it's the substance of
this skill.

`references/narrative.md` — the structural catalog from the StoryScope study:
the tier table, the AI-leaning patterns (N1–N3), human-leaning structure (N4),
extrapolated expository analogues (N5), low-confidence model fingerprints (N6),
"do not flag structurally" (N7), and the calibration table of the 30 core
features. Read it for workflow step 3.

`scripts/clean_text.py` — the hidden-character scanner run as the required final
step (workflow step 6). Strips zero-width spaces, direction marks, word joiners,
and soft hyphens, and NFKC-normalizes homoglyphs and odd spaces; reports what it
found (stderr) and prints the cleaned text (stdout). Run it on every check.
