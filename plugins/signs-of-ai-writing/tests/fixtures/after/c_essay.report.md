## AI-writing check

**Overall:** Reads mostly human, not AI-generated. The catalog surface is essentially clean — no significance inflation, no AI-vocabulary words, no em dashes, no curly quotes, sentence-case headings — but the essay leans hard on one repeated device: a corporate-abstraction-vs-physical-thing contrast, run seven times across five paragraphs, that closes with the narrator stating the point outright ("That's probably the whole point").

### Findings

1. **Negative parallelism / repeated contrast device** — "There's no PR review. There's no "let's revisit this next sprint.""; "except the feedback loop is a sound in your ear instead of a log file"; "I didn't get a Slack message with a thumbs-up emoji. I got a guy in his seventies grinning at a bike his dad used to ride."; "the difference between working under artificial urgency, which had defined most of my old job's fire drills, and working under real urgency, where the stakes were obvious to everyone in the room and nobody needed a status update to understand why it mattered."; "I push harder now for demos over decks"; "I'd rather be tediously useful than abstractly aspirational."; "Mostly, though, I think about Harold's grin more than I think about any dashboard I ever shipped."
   - Why: same shape every time — something corporate or abstract set against something physical or human — repeated seven times in near-identical grammar across the piece. Any single instance is a legitimate craft move; run this often it turns from device into formula, and it's the same move that closes the essay.
   - Fix: keep two or three of the strongest instances (the Harold pairing, the closing line) and let the others stand as plain statements without the paired negation — e.g. "The customer rides off and the click is gone or it isn't" without the PR-review/sprint sentences stacked in front of it.

### Structure
Tier: Narrative — memoir/personal essay, ~1,100 words, comfortably over the 800-word threshold in the tier table; full N1–N4 pass applies.

- **Thematic over-determination (N1)** — the essay states its own lesson outright, twice. Mid-essay, on the Marcus repair: "It taught me something about the difference between working under artificial urgency... and working under real urgency, where the stakes were obvious to everyone in the room and nobody needed a status update to understand why it mattered." And the last line: "Mostly, though, I think about Harold's grin more than I think about any dashboard I ever shipped. That's probably the whole point." Author decision: for the Marcus paragraph, cut the "It taught me..." sentence and let the forty-minute deadline and the shot bottom bracket carry the point unstated; for the ending, stop at "...any dashboard I ever shipped" and drop "That's probably the whole point" — the image already carries it.
- **Structural streamlining (N3), moderate** — one continuous causal line (quit the job → bike-shop year → return with a changed outlook), resolved through the narrator's own internal acceptance rather than an external event, and every anecdote (Harold, Marcus, the demos-over-decks aside) pays directly into the closing insight with nothing left over. Author decision: leave one thread hanging — the unexplained Thursday tune-up backlog, or Priya's banana bread — without folding it into the theme, so the piece doesn't close every loop it opens.
- No N2 (embodied-emotion formula) anywhere in the piece — see Reads as human.

### Reads as human
- Dense with named, specific things: Wheelhouse Cycles, Dave, a Raleigh three-speed, Priya, Harold, Marcus, an IKEA dresser, Instagram, Slack — well above the human baseline for named real things, and the opposite of vague allusion ("a poet once wrote").
- Characters are introduced through action and anecdote, not external physical description: Dave via the wheel-truing-while-telling-a-dog-story bit, Harold via what he wants from the repair, Marcus via the emergency itself.
- No embodied-emotion formula anywhere — no tightening chest, no closing throat, no smell in a single scene, no weather standing in for mood. Feeling is handled plainly or through literal action: "that thought bothered me more than it should have," "a guy in his seventies grinning."
- Natural, non-triadic lists: the diagnostic sequence "ride it around the block... pedal while coasting, stand up, sit down, shift through the gears" runs five beats, not a tidy three; the opening list of reasons for leaving has three items but they're concrete and mismatched in kind (a cushion, a suspicion, an ad), not parallel adjectives padded to a rhythm.
- Plain copulas throughout: "It was more like a slow leak," "The frame was a mess," "His bottom bracket was shot."
- Hedges and self-aware asides: "I won't pretend," "honestly there wasn't one dramatic moment," "probably," "which took some adjusting to" — and a narrator who addresses an imagined listener directly ("People ask why I left, expecting...", "Here is what nobody tells you about bike repair").
- Sentence-case headings, no boldface pile-up, no bullet lists forced out of prose.
- Specific, checkable-feeling numbers instead of vague claims: "forty percent bicycles and sixty percent talking," "ninety percent tedious," "eleven years," a "sixty-year-old frame."

### Hidden characters
Clean — no invisible characters found. `scripts/clean_text.py` reports zero hits, and its cleaned output is byte-identical to the source text.
