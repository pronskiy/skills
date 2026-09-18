## AI-writing check

**Overall:** Reads as human-written on both layers. The surface prose carries none of the catalog's mechanical or vocabulary tells, and the structure is dense with countervailing human signals — six named people, places, and brands (Dave, Priya, Harold, Marcus, Wheelhouse Cycles, a Raleigh three-speed, an IKEA dresser), a digression that never resolves, an explicit refusal of the tidy transformation-arc cliché. The one soft spot is a pair of stated-lesson lines right at the close, including "That's probably the whole point," which lean toward the AI habit of explaining the theme instead of trusting the image.

### Findings

None. Checked against every category in `references/catalog.md`:

- No significance/legacy inflation ("stands as," "marks a turning point," "leaving an indelible mark" — none appear).
- No present-participle superficial-analysis tails ("...underscoring X," "...ensuring X").
- No puffery (no "vibrant," "nestled," "renowned," "world-class").
- No vague attribution ("experts say," "researchers and conservationists").
- No "challenges and future prospects" outline scaffolding.
- No AI-vocabulary words at all — *delve, crucial, testament, tapestry, underscore, pivotal, meticulous, garner, intricate, landscape* (abstract) don't appear once in ~1,100 words.
- No copula avoidance: the piece runs on plain *was/had/is* throughout ("The shop was small," "His bottom bracket was shot").
- No rule-of-three padding, no elegant variation, no Title Case headings, no boldface pile-up, no inline-header lists, no chatbot scaffolding.
- No spaced em dashes, no stray curly quotes (confirmed by the hidden-character scan below).

The closest thing to a catalog tell — "I'd rather be tediously useful than abstractly aspirational," a §8 "X rather than Y" construction — is a single instance, earned by the essay's own argument (concrete tedium vs. corporate abstraction is exactly what the piece has been building toward), so it isn't flagged as its own finding. It's discussed below because it's part of the one structural tell.

### Structure

**Tier: Narrative nonfiction (extrapolated)** — memoir/personal essay, ~1,100 words, well past the 800-word threshold; N1–N4 apply, weighed a notch lighter than fiction.

**One tell, N1 (thematic over-determination), mild.** Most of the piece earns its endings by stopping on an image — the Harold paragraph closes on "I got a guy in his seventies grinning at a bike his dad used to ride," not on a stated meaning — but it breaks that discipline twice, both times at a section's close:
- "It taught me something about the difference between working under artificial urgency, which had defined most of my old job's fire drills, and working under real urgency, where the stakes were obvious to everyone in the room and nobody needed a status update to understand why it mattered." (end of the Marcus anecdote) — states the lesson instead of trusting the scene that just showed it.
- "Mostly, though, I think about Harold's grin more than I think about any dashboard I ever shipped. That's probably the whole point." (final line) — the closing generalization N1 flags, paired one sentence earlier with "I'd rather be tediously useful than abstractly aspirational."

Author decision: cut "That's probably the whole point" and end on "...more than I think about any dashboard I ever shipped" — the contrast already carries it. For the Marcus paragraph, cut the "It taught me..." sentence, or replace it with one more concrete beat from the repair itself.

Everything else cuts the other way. N2 (embodied-emotion formula): zero instances of the chest-tightens/coffee-goes-cold pattern anywhere in the piece; the only emotion words are plain labels — "bothered me more than it should have," "which took some adjusting to" — the profile that's more human, not less. N3 (structural streamlining) doesn't fit either: the essay moves through several distinct locations and two independent anecdotes (Harold, Marcus) rather than one causal line to one internal resolution, and the narrator explicitly refuses the tidy-resolution move: "I won't pretend the year in the shop transformed me into some Zen wrench-wielding sage."

### Reads as human

- **Named real things, densely:** Wheelhouse Cycles, Dave, Priya, Harold's Raleigh three-speed, Marcus, an IKEA dresser — six specific, checkable nouns where an AI-written memoir typically names one or none.
- **Plain copulas throughout:** "was small," "had owned it," "was a mess," "was shot" — no serves-as/stands-as substitution anywhere.
- **Plain emotion labels, not embodied ones:** "bothered me more than it should have," "which took some adjusting to" — feelings named directly rather than rendered as a body part or the weather.
- **A digression that never pays off:** Priya's banana bread and group-ride stories are pure texture; they don't resolve into a plot point, which is the kind of loose end AI-generated narrative rarely leaves.
- **Real quoted dialogue:** Harold's "Well, look at that," lands the emotional beat instead of a described physical sensation.
- **Explicit refusal of the cliché arc:** "I won't pretend the year in the shop transformed me into some Zen wrench-wielding sage" — the essay names and rejects the tidy transformation narrative AI writing tends to default to.
- **Hedges and oddly specific numbers:** "probably," "maybe forty percent... and sixty percent," "ninety percent of what fixing bikes actually was" — concrete, unround fractions rather than inflated claims.

### Hidden characters

Clean — no invisible characters. `scripts/clean_text.py` reported: "Hidden-character scan - clean. No invisible characters found." The cleaned output is byte-identical to the source file; a direct Unicode scan also turned up zero em dashes, curly quotes, or other non-ASCII characters anywhere in the text.
