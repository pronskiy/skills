# Skill tests

Fixtures and prompts for checking that the skill catches structural (narrative-level)
tells, not just surface ones. Nothing in this directory is loaded by the skill.

## Fixtures

| File | What it is | Expected verdict |
|---|---|---|
| `fixtures/a_story_raw.md` | Short story written by an LLM (Claude Sonnet) from a StoryScope-style prompt, untouched. | Surface tells present; structural tells present. |
| `fixtures/a_story.md` | The same story after a surface-only clean using `references/catalog.md` (no em dashes, no AI vocabulary, no triads, no summaries). Plot, scene order, narration and emotion handling left as they were. Simulates the LAMP edit from the StoryScope paper. | Surface mostly clean; structural tells still present. The skill should say so. |
| `fixtures/b_story.md` | "Miss Brill", Katherine Mansfield, 1920. Public domain, Project Gutenberg #1429. Human control. | Reads as human at the structural level. Em dashes and curly quotes are the author's and must not be over-flagged. |
| `fixtures/c_essay_raw.md` | First-person blog post written by an LLM, untouched. | Surface and (extrapolated) structural tells present. |
| `fixtures/c_essay.md` | Same post after the surface-only clean. | Surface mostly clean; structural tells (stated lesson, single track, no named sources, no reader asides) still present, reported as weak signals. |

Reports from the run before the structural pass was added are in `fixtures/baseline/`;
reports from after are in `fixtures/after/`.

## Test prompt (identical for baseline and after)

Run a fresh subagent (no prior context) with this prompt, substituting the fixture and
output paths:

```
Read plugins/signs-of-ai-writing/skills/signs-of-ai-writing/SKILL.md and follow it exactly,
including every reference file it tells you to read and every script it tells you to run.

The user's request is: "Does this read like it was written by AI? Point me at the
specific tells." The text is in <FIXTURE>. Treat it as written in 2026.

Produce the full report in the skill's report format. Save the report verbatim to
<OUTPUT> with the Write tool, and return it as your final message.
```

Rewrite-mode prompt (run on `a_story.md` only):

```
Read plugins/signs-of-ai-writing/skills/signs-of-ai-writing/SKILL.md and follow it exactly,
including every reference file it tells you to read and every script it tells you to run.

The user's request is: "Just fix it so it doesn't sound like AI. I don't need the list
of problems, give me the text." The text is in <FIXTURE>. Treat it as written in 2026.

Save your full response verbatim to <OUTPUT> with the Write tool, and return it as your
final message.
```

All runs use a fresh `general-purpose` subagent on Claude Sonnet, so that the skill text is
doing the work rather than a stronger model's own judgment.

## Baseline results (skill without the structural pass)

| Fixture | Verdict | Findings | Any structural observation? |
|---|---|---|---|
| `a_story.md` | "Reads as human-written" | none | No. Sensory density and dialogue were cited as *human* signs. |
| `b_story.md` | "Reads as strongly human" | none | No. |
| `c_essay.md` | "Reads as human-written" | none | No. |

The humanized AI story and essay both pass as human. That is the gap the structural pass
closes.

## Pass criteria (after the change)

- `a_story.md`: a `### Structure` block naming at least three structural tells (stated
  theme, embodied-emotion formula, single-track plot, vague allusion, and so on) and an
  Overall line that names the surface-clean-but-structurally-AI pattern.
- `b_story.md`: a `### Structure` block that lists human-leaning structure and does not
  flag show-don't-tell, a lone flashback, or the author's em dashes as tells.
- `c_essay.md`: proportionate result; tier reported as narrative nonfiction or expository
  and labeled extrapolated; the stated-lesson pattern found and weighed lighter than it
  would be on fiction.
- Rewrite mode on `a_story.md`: ends with a short list of author decisions for the
  structural tells; contains no invented subplot, named reference, or reader aside.

## Results after the change

| Fixture | Run | Verdict | Structure block | Pass |
|---|---|---|---|---|
| `a_story.md` | 1 | "Surface reads clean. Structure reads AI... the surface-clean, structure-AI profile" | Tier narrative; N1 (stated metaphor, generalizing last sentence), N2 (chest, throat, cooling coffee; smell twice), N3 (one room, one track, internal reconciliation), each with spans and an author decision. Named real things and loose ends credited under "Reads as human". | Yes |
| `b_story.md` | 1 | Human | Tier narrative; N1 absent, N2 tilts human (plain emotion labels), N3 partly present but offset by digressions and an external-event ending, N4 present. Em dashes, curly quotes, and the spatial opening explicitly not flagged. | Yes |
| `a_story.md` | 2 | "Surface prose reads clean... Structure reads strongly AI... the profile of a de-slopped or humanized AI draft" | Tier fiction (validated), with a caveat that the story is under the paper's validated length. N1 twice, N2 twice, N3, each with a decision. Ilse's introduction through inferred psychology credited as human. Over-claimed "no plain emotion label appears anywhere" (the text has two); N2 was reworded to ask for counts. | Yes |
| `a_story.md` | 3 | "Surface reads clean... Structure reads strongly AI by the StoryScope profile" | Tier fiction (validated). N1 twice, N3, N2 reported as a count (six bodily or setting beats against two plain labels, both quoted) under the reworded N2. One weak surface finding (rule of three, marked minor). Letters loose end and moral ambivalence credited as human. | Yes |
| `a_story.md` | 4 | "Surface reads clean... Structure reads AI-consistent... the surface-clean-but-structurally-AI profile" | Tier fiction (validated). N1 twice, N3, and N2 counted (three bodily beats against several plain labels) and correctly downgraded to a weak signal. Noted that several passages sit "close to the field guide's own examples", which led to replacing fixture-derived watch-patterns in narrative.md with generic ones. | Yes |
| `a_story.md` | 5 (first run after fixture wording was removed from narrative.md) | "Doesn't read as AI-written... the profile as a whole reads human" | Tier fiction. N1 found in three passages with a fix; N3 moderate. N2 undercounted (two bodily beats; run 3 found six) and dropped; N4 counter-signals then cancelled N1 and N3. Overall did not name the profile. Led to two edits: N2 now lists what counts as a rendering, and the profile note says AI-leaning patterns outweigh human-leaning ones. | No |
| `a_story.md` | 6 (final wording) | "Surface reads clean... Structure reads AI... the profile of a piece that's been surface-polished... without changing its underlying shape" | Tier fiction. N1 twice, N2 twice (chest, throat, the smile that does not arrive, the coffee), N3, each with a decision. Human-leaning signals listed under "Reads as human" without cancelling the call. | Yes |
| `a_story.md` | 7 (final wording) | "Structure reads AI-leaning... Clean surface over an AI-shaped structure is the profile associated with a humanized or de-slopped AI draft... weigh it as a lean, not a verdict" | Tier fiction. N1 strong (four places), N2 moderate-to-strong with the count reported (about six renderings to one label), N3 present but softened. Applied the "two of three at strength make the call" rule explicitly. | Yes |
| `b_story.md` | 2, 3, 4, 5 | Human on both layers | Tier fiction (validated). All runs: N1 absent, N2 mixed with plain labels quoted, N3 absent (two locations, digressions, external-event ending). Run 2 applied N7 to the single setting-as-mirror beat and did not count it. Unspaced em dashes explicitly not flagged. Runs 4 and 5, on the final wording, named the weather opening and the externally described old couple as isolated echoes and correctly said they do not build into a profile. | Yes, four times |
| `a_story.md` rewrite | 1 | Text returned unchanged; changelog says the surface was already clean | Ends with "Still reads as AI at the structural level" listing N1, N2, N3 with passages and the author's choice for each. Nothing invented; output byte-identical to the source. Scanner run on the output. | Yes |
| `c_essay.md` | 2 | "Reads as human-written on both layers... The one soft spot is a pair of stated-lesson lines" | Tier narrative nonfiction (extrapolated), "weighed a notch lighter than fiction". N1 found in the same two passages as run 1, same fix. N2 and N3 correctly reported absent. Named specifics, plain labels, the banana-bread digression, and the explicit refusal of the transformation arc credited as human. | Yes |
| `c_essay.md` | 3 | "closest to the surface-clean-but-structurally-leaning-AI profile... a moderate signal, not a confident call" | Tier narrative nonfiction (extrapolated), weighed lighter. N1 moderate-strong in the same two passages; N3 mild; N2 counted (one label, zero bodily beats) and reported as not fitting the pattern. Surface: the contrast device caught again (five instances). Thursday-backlog loose end and second-person aside credited as human. | Yes |
| `a_story.md` rewrite | 2 | Three surface edits (a doubled "which meant" chain, an editorializing tail, "mattered enormously" made concrete); structure untouched | Ends with "Still reads as AI at the structural level" listing N1 (twice), N2, N3 with location and choice. Nothing invented. Started before the N2 rewording, so still says "never named". | Yes |
| `c_essay.md` | 4 (final wording) | "Reads as human-written... The one real caveat is structural" | Tier narrative nonfiction (extrapolated). N1 in the same two passages, same fix; N3 weak and named as genre convention; N2 absent. Contrast device caught (three instances, weak). Verdict consistent with runs 2 and 3. | Yes |
| `c_essay.md` | 1 | "Reads mostly human" | Tier narrative at full weight (the table then listed personal essay beside fiction). N1 found twice (mid-essay lesson, closing "That's probably the whole point"), N3 moderate, N2 absent; each with an author decision. Also caught a contrast device repeated seven times, which the baseline missed. | Partial: proportionate, but not labeled extrapolated. Led to splitting the tier table into fiction (validated) vs narrative nonfiction (extrapolated). |
