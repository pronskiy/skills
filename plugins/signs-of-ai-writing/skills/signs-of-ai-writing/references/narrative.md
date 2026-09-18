# Structural signs of AI writing

Where `catalog.md` covers *how the sentences sound*, this file covers *what the piece
does*: how it handles theme, emotion, plot, time, and the reader. Source: Russell,
Rajendhran, Pham, Iyyer and Wieting, *StoryScope: Investigating idiosyncrasies in AI
fiction* (COLM 2026, arXiv 2604.03136). They took 10,272 human short stories, had five
models (Claude Sonnet 4.6, GPT-5.4, Gemini 3 Flash, DeepSeek V3.2, Kimi K2.5) write the
same stories from the same prompts, and extracted 304 narrative features per story with
every stylistic feature removed. Narrative structure alone separates human from AI at
93% macro-F1.

Two results shape how this file is used:

- **Surface editing does not touch these tells.** When AI stories were rewritten to
  remove cliché, purple prose, and redundant exposition (the LAMP editor, trained on
  professional writers' edits), structural detection fell by 1.6 points. A de-slopped or
  "humanized" text keeps its structural profile. This skill's own rewrite mode is that
  kind of edit.
- **It is a profile, not a checklist.** Every feature below overlaps heavily between
  human and AI writing. One of them proves nothing. Several at once, in the strong
  categories, is the signal. Report the pattern, then the spans that carry it.
- **AI-leaning structure outweighs human-leaning structure.** The gaps behind N1 to
  N3 are roughly twice the size of the gaps behind N4 (see the calibration table).
  Two of N1 to N3 present at strength in a surface-clean text is the humanized-AI
  profile; N4 signals lower the confidence of that call and go in "Reads as human",
  they do not cancel it.

Validated on English fiction of roughly 3,000 to 7,000 words. Everything outside
fiction is an extrapolation: N1 to N4 on memoir and personal essay carry less weight
than on fiction, and N5 on expository prose carries the least. Name the tier in the
report so the reader knows how much to trust the structural read.

## When to apply

| The text is... | Tier | Check |
|---|---|---|
| Fiction (short story, novel chapter, flash); about 800 words or more | Fiction (validated) | N1 to N4 at full weight, N6 |
| Memoir, personal essay, narrative nonfiction, a case study told as a story; about 800 words or more | Narrative nonfiction (extrapolated) | N1 to N4, weighed a notch lighter and labeled as extrapolated |
| Argumentative or expository prose (essay, blog post, article, report); about 500 words or more | Expository (extrapolated) | N5 as weak signals; N4 for human-leaning structure |
| Under about 500 words, or functional text (email, resume, bio, ad copy, documentation, a message) | N/A | Skip. Report `Structure: N/A` and say why in a few words |

## N1. Thematic over-determination (AI, strong)

The piece tells you what it means. The narrator states the theme or the lesson; the
ending restates it; characters debate the theme in dialogue; the central metaphor is
explained instead of left to work; allusions to other works are vague gestures rather
than named.

**Numbers:** narrator comments on the theme in 77% of AI stories vs 52% of human ones;
dialogue used as philosophical debate 59% vs 34%; vague "echoes" of other works 72% vs
50%; thematic explicitness 3.9 vs 3.3 on a 1 to 5 scale.

**Watch-patterns:** a final sentence or paragraph that generalizes from the story
("it was never really about the house", "she understood now that...", "that, he
thought, was what forgiveness looked like"); a character voicing the metaphor ("Maybe
we're all just out of tune with each other"); the central object compared to a
marriage, a wound, a promise; "a poet once wrote", "as the old saying goes", with no
poet and no saying.

**Fix (author decisions, not rewrites):** end on the image, the action, or the last
line of dialogue and cut the sentence that explains it. Keep the thing and drop the
"like a marriage". Name the actual work alluded to, or drop the gesture. The check
names these choices; it never invents the missing specifics.

## N2. Embodied-emotion formula and sensory over-write (AI, strong)

Emotion is almost never named. It is rendered as a body part doing something (chest
tightens, throat closes, hands shake, stomach drops) or as a setting that mirrors the
mood (light dims, coffee goes cold, rain starts, a plant has grown). Smell appears in
nearly every scene. Interior access is constant.

**Numbers:** emotion conveyed as bodily sensation 81% AI vs 38% human; explicit emotion
labels 8% AI vs 29% human; smell imagery present 82% vs 57%; setting-as-mirror 4.1 vs
3.6; sensory density 3.9 vs 3.7.

**The counterintuitive part:** "She felt afraid." "He was angry." Plain emotion labels
are a *human* sign. Show-don't-tell is craft advice that models have over-learned.
Count both kinds before reporting: plain labels against bodily, facial, vocal, or
setting renderings (a chest, a throat, a voice gone quiet, a smile that does not
arrive, a drink going cold, a plant that has grown, a smell on entering a room). Two
labels beside a dozen renderings still fits the profile; report the counts and quote
a label if one exists, rather than claiming none appears.

**Watch-patterns:** "her stomach dropped", "his hands would not stay still", "the
tea went cold between them", "the light through the window had gone thin and gray",
"the hallway smelled of dust and old paper", a sensory correlate on every emotional
beat, weather that tracks the argument.

**Fix:** let a character be sad in plain words now and then. Keep the one bodily detail
that does real work; cut the rest. A room can just be a room.

## N3. Structural streamlining (AI, moderate)

One causal line from inciting incident to ending. No subplot. Usually one location.
Opens by placing the reader in space (street, weather, building, season). Characters
enter with a paragraph of external description. The protagonist's own choice resolves
the story, and the resolution is internal (acceptance, understanding, reconciliation)
rather than an external event. Ambiguity gets tidied away.

**Numbers:** no subplots 79% AI vs 57% human; resolved by the protagonist's choice 69%
vs 46%; resolved through internal understanding 47% vs 27%; character introduced by
external description 52% vs 30%; causal-chain continuity 4.2 vs 3.9.

**Watch-patterns:** an opening that places the reader on a street or in a season
("The rain had followed her all the way from the station"); a single scene; a closing
beat where the estranged pair finally sit down together; every setup paid off; nobody
acts against the protagonist's arc.

**Fix (author decisions):** a thread raised and not resolved; a second location or
timeline; a character who enters through dialogue or action; an ending decided by
something outside the protagonist; one thing left morally unsettled. See N7 for genres
where a single line is the convention.

## N4. Human-leaning structure

Report these under "Reads as human". They lower the likelihood and keep the check honest.

- **Named real things:** a real book, author, song, brand, street, product, event (47%
  of human stories name a work vs 24% AI).
- **A narrator who knows someone is reading:** asides, "you", "I should say here", a
  fourth-wall break (67% vs 39%; direct reader address 28% vs 7%).
- **Nonlinear time:** opens late and goes back; flashback or flash-forward scenes; a
  reveal that forces re-reading of earlier scenes.
- **Range:** several locations; more dialogue than narration; a subplot that runs
  parallel to the main one (42% vs 21%).
- **Moral ambivalence:** the protagonist's choices left mixed (59% vs 38%).
- **Plain emotion labels** (see N2).
- **Loose ends, digressions, uneven pacing.** Human stories sit in a rarer, more
  dispersed region of the feature space; AI stories cluster.

## N5. Expository-prose analogues (extrapolated, weak)

Not validated by the paper, which studied fiction only. Report these as weak, in one
grouped finding, and let them change the verdict only when three or more stack on a
text that is otherwise surface-clean.

- **The piece explains its own point.** A closing paragraph that says what it all meant;
  each anecdote followed by its lesson; a metaphor stated and then decoded.
- **Single-track argument.** No digression, no aside, no objection left standing; every
  paragraph advances the thesis; the ending is at peace with the subject.
- **Vague anchors.** "A book I read", "studies show", "a famous investor once said",
  where a name would do. (Catalog §4 covers attribution of opinion; this is about
  cultural and factual anchors generally.)
- **No acknowledgement of the reader or of the writing.** Never "bear with me", "skip
  this if you know it", "I'll come back to this", "you're probably thinking".
- **Memoir emotion rendered only through body and weather** (as N2).

Human-leaning analogues: named sources; a digression that goes nowhere; "I still don't
know"; uneven section lengths; the author arguing against their own point.

## N6. Model fingerprints (low confidence)

Six-way attribution from structure alone reaches only 68% F1. Say "consistent with",
never "written by". Mention only when the user asks which model, or when a habit is
glaring and the surface tells agree.

| Model | Narrative habits |
|---|---|
| Claude | Flat event escalation, uniform voice, quiet endings, epilogues, avoids dream sequences, reverent toward literary convention, uncanny or haunted moods |
| GPT | Gossip and rumor drive the plot; distant retrospective narrator ("years later"); ensemble casts; subverts expectations; ambiguous reconciliations |
| Gemini | Tidiest endings; long denouements; bleak settings (88% of stories); external character description; mostly direct speech; siege or ordeal plots; frequent flashbacks |
| DeepSeek | Front-loads context; visible narrator; emotion as behavioral cues; backstory evenly interleaved; story-within-story scenes |
| Kimi | Generic center of the AI cluster; in-medias-res openings; no explicit trait labels |

## N7. Do not flag structurally

- **A stated moral where the genre asks for one:** fable, parable, children's story,
  sermon, self-help, a toast.
- **Genre conventions:** a mystery back-loads its revelation; a romance resolves; a
  thriller runs one causal line fast.
- **Any single instance.** One flashback, one smell, one "her chest tightened", one
  explained metaphor. The profile is several patterns at once.
- **Competent show-don't-tell in isolation.** It becomes a tell only when no feeling is
  ever named across the whole piece.
- **Anything under the tier threshold.** A 200-word email has no structure to judge.
- **Any structural verdict on its own.** Weigh it with the surface scan; the two axes
  disagree often, and the disagreement is itself informative (see SKILL.md).

## Calibration table: the 30 core features

Human vs AI. Percentages are how often the option appears; decimals are means on a 1 to
5 scale. Gap is human minus AI. Use this to judge how much weight a pattern carries.

| Feature | Human | AI | Gap |
|---|---|---|---|
| *AI-elevated: thematic over-determination* | | | |
| Thematic explicitness and moralizing | 3.28 | 3.94 | -0.65 |
| Moral or philosophical weighting | 3.26 | 3.68 | -0.42 |
| Thematic unity | 4.41 | 4.74 | -0.33 |
| Narrator comments on theme | 52% | 77% | -25 |
| Dialogue as philosophical debate | 34% | 59% | -25 |
| References are implicit echoes | 50% | 72% | -22 |
| *AI-elevated: sensory and embodied* | | | |
| Emotion expressed as bodily sensation | 38% | 81% | -42 |
| Setting as psychological mirror | 3.58 | 4.07 | -0.49 |
| Environmental and ecological emphasis | 2.83 | 3.21 | -0.38 |
| Smell imagery present | 57% | 82% | -26 |
| Sensory density | 3.66 | 3.93 | -0.26 |
| Depth of interior access | 3.67 | 3.93 | -0.26 |
| *AI-elevated: structural streamlining* | | | |
| Causal chain continuity | 3.92 | 4.20 | -0.28 |
| Spatial granularity | 2.27 | 2.53 | -0.26 |
| Resolution by protagonist's choice | 46% | 69% | -23 |
| Character introduced by external description | 30% | 52% | -22 |
| No subplots | 57% | 79% | -22 |
| Resolution through internal understanding | 27% | 47% | -21 |
| Opening spatial grounding | 2.12 | 2.33 | -0.20 |
| Pre-threat character investment | 2.76 | 2.99 | -0.23 |
| *Human-elevated: intertextual richness* | | | |
| Explicit named reference to a real work | 47% | 24% | +23 |
| Balanced explicit and implicit references | 37% | 16% | +21 |
| *Human-elevated: reader engagement* | | | |
| Fourth-wall permeability | 0.67 | 0.39 | +0.28 |
| Direct reader address | 0.28 | 0.07 | +0.21 |
| *Human-elevated: temporal complexity* | | | |
| Recontextualization after a surprise | 3.28 | 2.95 | +0.34 |
| Chronological discontinuity | 2.40 | 2.12 | +0.28 |
| Nonlinear framing for delayed disclosure | 1.96 | 1.68 | +0.28 |
| Anachrony intensity | 2.58 | 2.31 | +0.27 |
| *Human-elevated: narrative diversity* | | | |
| Location variety | 1.34 | 1.08 | +0.26 |
| Dialogue-to-narration proportion | 2.95 | 2.70 | +0.24 |
| Subplots thematically parallel | 42% | 21% | +22 |
| Morally ambivalent protagonist | 59% | 38% | +21 |
| Emotion expressed as explicit labels | 29% | 8% | +21 |
