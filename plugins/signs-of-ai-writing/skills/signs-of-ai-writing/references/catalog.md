# Catalog of AI-writing signs

Condensed from Wikipedia's *Signs of AI writing* field guide, reframed for
general prose (resumes, essays, blog posts, emails, marketing copy) rather than
Wikipedia articles. Each entry: what it is → watch-words → a short real example →
how to fix. The Wikipedia-only signs (wikitext, citation formatting) are kept in
one appendix at the end because they're near-certain when present.

## How to use this

Two kinds of signs live here:

- **Mechanical / near-certain** (§14–16, §17 appendix): spaced em dashes, curly
  quotes, chatbot scaffolding, and copy-paste artifacts like `turn0search` or
  `utm_source=chatgpt.com`. When present, flag every instance — little judgment
  needed.
- **Stylistic / judgment-based** (§1–13): these describe *how the prose thinks*,
  not just which words appear. The watch-words are entry points, not triggers.
  "Crucial" in "a crucial 3 mm clearance" is fine; "crucial" in "plays a crucial
  role in the broader landscape" is the tell. Flag on the pattern, weigh density.

Table of contents:

1. Significance / legacy / broader-trends inflation
2. Superficial analysis (present-participle tails)
3. Promotional & advertisement-like language (puffery)
4. Vague attribution & overgeneralized opinions
5. "Challenges and future prospects" outline conclusions
6. High density of AI-vocabulary words
7. Avoidance of plain *is/are* (copula avoidance)
8. Negative parallelisms (not just X but Y / not X but Y / X rather than Y)
9. Rule of three
10. Elegant variation (over-synonymizing)
11. Title Case headings & overuse of boldface
12. Inline-header vertical lists
13. Section summaries & didactic disclaimers
14. Em-dash overuse
15. Emoji as formatting & curly quotes
16. Chatbot scaffolding aimed at the user
17. Appendix: machine artifacts & Wikipedia-only tells
18. Signs of *human* writing
19. Do not flag (ineffective indicators)

---

## 1. Significance / legacy / broader-trends inflation

The most pervasive tell. The text keeps announcing that its subject *matters* —
represents a shift, marks a moment, plays a role in something larger — instead of
just stating facts. It shouts that the portrait is important while the portrait
itself goes blurry.

**Watch-words:** stands/serves as, is a testament to, plays a vital/pivotal/
crucial/key role, underscores/highlights its importance, reflects broader,
marking a shift, a turning point, cementing its legacy, enduring, leaving an
indelible mark, contributing to the broader.

**Example:** "The founding of Idescat represented a significant shift toward
regional statistical independence... part of a broader movement to decentralize."

**Fix:** Cut the significance clause, or replace it with the concrete fact that
would *earn* the significance. "Founded in 1989, Idescat was Spain's first
regional statistics agency" says more and inflates less. If no concrete fact
exists, the sentence probably shouldn't exist.

## 2. Superficial analysis (present-participle tails)

A sentence states a fact, then bolts on an "-ing" phrase that editorializes about
what it means — usually vague, usually unearned. This is the single most
mechanical stylistic tell.

**Watch-words (sentence-ending):** ...highlighting/underscoring/emphasizing X,
...reflecting/symbolizing X, ...ensuring X, ...contributing to X, ...fostering X,
...solidifying its role as X, ...offering a glimpse into X.

**Example:** "The population stood at 56,998, creating a lively community within
its borders... further enhancing its significance as a dynamic hub."

**Fix:** Delete the tail. The fact stands on its own. If the tail carries real
information, promote it to its own plain sentence with a source.

## 3. Promotional & advertisement-like language (puffery)

Even when asked for a neutral tone, LLMs drift into travel-brochure or
press-release voice. Common when describing places, people, companies, products.

**Watch-words:** boasts (meaning "has"), vibrant, rich, nestled, in the heart of,
renowned, groundbreaking, breathtaking, a diverse array of, natural beauty, a
commitment to, seamlessly, a testament to craftsmanship, cutting-edge, world-class.

**Example:** "Nestled within the breathtaking region... stands as a vibrant town
with a rich cultural heritage... offers visitors a fascinating glimpse into the
diverse tapestry of..."

**Fix:** Strip the adjectives back to what's verifiable. "Boasts four galleries" →
"has four galleries." Replace "renowned chef" with what the chef actually did.

## 4. Vague attribution & overgeneralized opinions

Opinions attributed to an unnamed authority, or one source inflated into many.

**Watch-words:** industry reports, observers have cited, experts argue, critics
say, researchers and conservationists, it is widely regarded, several sources
(when few are cited), publications such as X and Y (implying an open-ended list).

**Example:** "The river is of interest to researchers and conservationists.
Efforts are ongoing to monitor its ecological health."

**Fix:** Name the specific person/source, or drop the attribution and state the
fact plainly. Don't imply consensus that isn't there.

## 5. "Challenges and future prospects" outline conclusions

A rigid formula, usually a closing section: "Despite its [praise], [subject]
faces challenges, including... Despite these challenges, [subject] continues to
thrive / is poised to..." Ends on a vaguely upbeat, speculative note.

**Watch-words:** Despite its... faces several challenges, Despite these
challenges, Challenges and Legacy, Future Outlook, is poised to, continues to
evolve, positioning it for.

**Example:** "Despite its industrial prosperity, Korattur faces challenges...
With its strategic location and ongoing initiatives, Korattur continues to thrive."

**Fix:** If the challenges are real and sourced, state them plainly without the
"despite... despite" scaffolding and without the reassuring coda. If they're
generic filler ("like any city, it faces traffic"), cut the whole section.

## 6. High density of AI-vocabulary words

A specific set of words that spiked in usage after 2022. One or two is nothing;
a pile of them, especially co-occurring, is one of the strongest tells. Note:
this is literal — a word being on the list does *not* make its synonyms suspect.

**Core list (2023–mid-2024, "delve era"):** additionally (starting a sentence),
boasts, bolstered, crucial, delve, emphasizing, enduring, garner, intricate/
intricacies, interplay, key (as adj.), landscape (abstract), meticulous,
pivotal, underscore, tapestry (abstract), testament, valuable, vibrant.

**Mid-2024–mid-2025:** align with, bolstered, crucial, emphasizing, enhance,
enduring, fostering, highlighting, pivotal, showcasing, underscore, vibrant.

**Mid-2025 on:** emphasizing, enhance, highlighting, showcasing (plus the
notability/attribution language in §4).

**Grok-flavored:** underscore (still), causal, empirical, correlate.

**Fix:** These words aren't banned — they're a density signal. Where one appears
inside genuine inflation, fix the sentence (§1–3). Where the text is just
sprinkled with them, replace with plain equivalents (*use* not *utilize*, *has*
not *boasts*, *shows* not *underscores*) and check whether the sentence still
says anything.

## 7. Avoidance of plain *is/are* (copula avoidance)

LLMs replace simple "is/are/has" with dressed-up verbs. Measured drop in *is/are*
usage in post-2023 writing.

**Watch-words:** serves as, stands as, marks, represents, functions as, acts as,
boasts, features, offers, maintains, is home to; and in openings, "X refers to..."
where "X is..." is meant.

**Example:** "Gallery 825 serves as LAAA's exhibition space. The gallery features
four separate spaces." → "Gallery 825 is LAAA's exhibition space. It has four
spaces."

**Fix:** Restore the copula. *is / are / has* is not a weakness; it's clean.
Reserve *serves as / features* for when they carry real meaning.

## 8. Negative parallelisms

Contrast constructions that manufacture depth by knocking down a strawman. Very
stereotypically AI, especially in punchy/argumentative registers.

**Three shapes:**
- **Not just X, but (also) Y:** "not only dismissive but unnecessarily harsh",
  "it's not just a sourcing issue — it's a systemic bias".
- **Not X, but Y / no X, no Y, just Z:** "not a mirror but a portal", "not a
  career, not a body of work — just an algorithmic moment".
- **X rather than Y:** "prioritizing consolidation rather than ideological purity"
  (common in Grok output).

**Fix:** State the positive claim directly. "It's not just X, it's Y" almost
always reduces to "It's Y." Keep the reversal only when the thing being negated
is a real, live misconception worth correcting.

## 9. Rule of three

Overuse of three-part structures: three adjectives, three short phrases, three
parallel clauses — often to make a shallow point sound comprehensive.

**Example:** "raising philosophical questions about identity, authenticity, and
what it means to 'live on'"; "engaging, repetitive, and entertaining".

**Fix:** Triads aren't wrong, but a run of them is a rhythm tell. Break some into
different shapes; cut the third item when it's just there for cadence and adds
nothing.

## 10. Elegant variation (over-synonymizing)

To avoid repetition, the text renames the same thing every time it appears —
"the artists", "these non-conformist artists", "like-minded artists", "the
Russian avant-garde artists" — until it reads like a thesaurus exercise.

**Fix:** Repeat the plain noun or use a pronoun. Clarity beats novelty; readers
don't mind seeing "the artists" twice. (Caveat: some non-native-English writers
were taught to avoid repetition — weigh alongside other signs.)

## 11. Title Case headings & overuse of boldface

- **Title Case:** headings with Every Main Word Capitalized ("Impact of Technology
  and Digitalization") where sentence case is the norm.
- **Boldface pile-up:** emphasizing **every** key term mechanically, readme /
  slide-deck style — "**leveraged buyout** uses **debt financing** so **private
  equity firms**...".

**Fix:** Sentence-case headings unless the house style says otherwise. Reserve
bold for genuine emphasis, a few times per page at most.

## 12. Inline-header vertical lists

Bulleted or numbered lists where each item opens with a **bold label:** then a
colon and a sentence. Fine occasionally; a whole document built this way, or a
prose point forced into this shape, is a tell — especially with the rule of three
inside each item.

**Example:** "• **Route Details:** Starts at Medak... • **Bypasses:** planned
at... • **Timeline:** 40% complete...".

**Fix:** For flowing explanation, use prose. Keep the bold-label list for genuine
reference material (specs, options), and don't let every item be exactly three
clauses long.

## 13. Section summaries & didactic disclaimers

- **Summaries:** older models end things with "In summary," / "In conclusion," /
  "Overall," restating what was just said.
- **Didactic disclaimers:** "It's important to note that...", "It's worth
  remembering...", "may vary depending on..." — hedging advice to an imagined
  reader.

**Fix:** Delete both. If the summary contains a point not made earlier, move that
point up into the body. "It's important to note that X" → just "X".

## 14. Em-dash overuse

LLMs reach for em dashes where a human would use a comma, colon, or parentheses —
and typically surround them with spaces ("clause — clause"), which cuts against
common typography. Most useful *combined* with other signs; weak alone, and newer
models suppress it: GPT-5.4 cut em-dash use sharply, so the *absence* of em
dashes is not evidence either way.

**Fix:** Don't purge em dashes — good writers use them. Flag the *pattern*:
spaced em dashes, several per paragraph, used for pat "punched-up" emphasis.
Where flagged, swap for commas/colons/parentheses or tighten to a hyphenless
sentence.

## 15. Emoji as formatting & curly quotes

- **Emoji headers/bullets:** "🧑‍💻 About Me", "🎯 What I'm Working On", emoji
  leading bullet points. Strong tell in docs/comments that aren't chat.
- **Curly quotes/apostrophes** (" " ' ') where straight ones are expected, or a
  mix of both in one text. *Weak on its own* — Word, macOS, and Chicago style all
  produce curly quotes. ChatGPT and DeepSeek use them; Gemini and Claude usually
  don't. Flag only alongside other signs, and never as proof.

**Fix:** Remove decorative emoji from non-chat writing. Normalize quotes to the
document's convention (usually straight for code/web, curly for print prose).

## 16. Chatbot scaffolding aimed at the user

Leftover conversational wrapper the author forgot to delete — a dead giveaway
that text was pasted from a chatbot. Near-certain when present.

**Watch-words:** "Certainly!", "Of course!", "Sure! Here's...", "I hope this
helps", "Let me know if you'd like...", "Would you like me to...", "Here's a
draft of...", "As an AI language model...", "is there anything else".

Also: **placeholder text** left unfilled — "[Your Name]", "[Describe the specific
section]", "[link to the revised article]", "INSERT_SOURCE_URL", access-dates
like "2025-XX-XX".

And **knowledge-cutoff / can't-find-it disclaimers:** "As of my last knowledge
update...", "While specific details are limited in available sources...", "the
subject likely...", "maintains a low profile" (speculation dressed as fact).

**Fix:** Delete all of it. For placeholders, fill them with real content or
remove the sentence. For "details are limited" speculation, cut the guessed
content — it's often fabricated.

---

## 17. Appendix: machine artifacts & Wikipedia-only tells

Rare in general prose, but when they appear they're about as close to proof as
this field gets — flag every instance at high confidence.

- **Search/citation artifacts** from pasted chatbot output: `turn0search0`,
  `turn0image1`, `:contentReference[oaicite:0]{index=0}`, `oai_citation`,
  `citeturn0news0`, `[cite: 3, 12]`, `【85†L261-269】`, `grok_render_citation_card_json`,
  `:::writing{variant="document" id=...}`, `contentReference`.
- **UTM tags on URLs:** `utm_source=chatgpt.com`, `utm_source=openai`,
  `utm_source=copilot.com`, `referrer=grok.com`. Near-definitive that a URL came
  from a chatbot (not necessarily that the prose did — someone may have used AI
  only to find the link).
- **Markdown where the target isn't Markdown:** `## Heading` / `**bold**` /
  `[text](url)` / `---` thematic breaks pasted into a plain-text or wikitext
  context. In general prose Markdown is normal (developers, Reddit, Notion), so
  this is only a tell when it's clearly out of place.
- **Wikipedia-specific** (only relevant if the text is a wiki article/draft):
  broken wikitext mixed with Markdown, hallucinated templates/categories as red
  links, list-defined references declared but unused, invalid ISBNs/DOIs, DOIs
  resolving to unrelated papers, book citations with no page numbers, AfC
  "submission statements" to reviewers, pre-declined draft templates, exhaustive
  first-person edit summaries that itemize policy adherence.

---

## 18. Signs of *human* writing

Report these in the "Reads as human" section — they lower the AI likelihood and
keep the check honest. Post-2022 text with plenty of these is probably human even
if a stray tell appears.

- **Plain copulas:** "there is a", "it has a", "was a".
- **Blunt verbs over stiff synonyms:** wrote (not authored), moved (not
  relocated), used (not utilized), died (not passed away), tried (not attempted).
- **Superlative/definitive claims:** "one of the best", "the only", "the first" —
  LLMs hedge away from these.
- **Hedges and intensifiers:** very, perhaps, sort of, tends to, I think.
- **Wordy but human constructions:** "as a result of", "in order to", "the fact
  that", "a part of".
- **Specific, unusual, checkable facts** — the opposite of regression to the mean.
- **Natural repetition** of the same word instead of elegant variation.
- **Consistency with the author's older (pre-2023) writing**, if known.
- **Idiosyncrasy, mixed registers, humor, a real point of view.**

Structural human signs (from `narrative.md` §N4; apply to narrative and
essay-length prose):

- **Plain emotion labels:** "she felt afraid", "he was angry". LLMs render
  feeling as a tightening chest instead.
- **Named real things:** a specific book, author, brand, street, song. LLMs
  allude vaguely ("a poet once wrote").
- **Asides to the reader,** a narrator who knows someone is reading.
- **Non-chronological telling:** opens late, flashbacks, a reveal that reframes
  earlier scenes.
- **Loose ends and digressions** that never pay off; a subplot beside the main
  line; a protagonist whose choices stay morally mixed.

## 19. Do not flag (ineffective indicators)

Flagging these alone produces false positives and erodes trust. They are *not*
evidence of AI on their own:

- **Perfect grammar / spelling.** Plenty of humans write cleanly.
- **A formal, academic, or "fancy" register.** AI overuses *specific* words, not
  formality in general.
- **Mixed casual + clinical tone.** Common in technical writers, the young,
  neurodivergent writers, or multi-author documents.
- **"Bland" or "robotic" feel** as a vibe, with no specific span to point at.
- **Curly quotes alone** (Word/macOS/Chicago), **em dashes alone** (used well),
  **a lone transition word** ("Additionally,"), **Markdown alone** from someone
  who lives in Markdown tools.
- **Unsourced claims** — most of the web is unsourced; unrelated to AI.
- **Letter-like formatting** (greeting, sign-off) in isolation — predates LLMs.
- **Show-don't-tell in isolation** (one tightening chest, one smell) and **a
  stated moral where the genre asks for one** (fable, toast, sermon, self-help).
  Structural tells are a profile of several at once; see `narrative.md` §N7.
- **Anything in text written before ~November 2022.**

When you catch yourself flagging one of these with nothing else nearby, drop it.
