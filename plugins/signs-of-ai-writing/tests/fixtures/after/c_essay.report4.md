## AI-writing check

**Overall:** Reads as human-written. The surface is clean — dense with specific, checkable detail (named people, a named shop, a named bike brand, exact timeframes) and none of the usual AI vocabulary, inflation, or puffery. The one real caveat is structural, not stylistic: the essay states its own lesson twice, most bluntly in the closing line "That's probably the whole point" — a stated-theme move that shows up in both AI and human personal-essay endings, so on its own it doesn't outweigh the surrounding specificity.

### Findings

1. **Negative parallelism / contrastive rhetoric (weak)** — "There's no PR review. There's no 'let's revisit this next sprint.'"; "I didn't get a Slack message with a thumbs-up emoji. I got a guy in his seventies grinning at a bike his dad used to ride."; "I'd rather be tediously useful than abstractly aspirational."
   - Why: three instances of the catalog's "not X / no X, just Y" and "X rather than Y" shapes across one piece is enough to notice as a rhythm, even though each one is grounded in a specific, earned image rather than a knocked-down strawman.
   - Fix: keep at most one of these; let the other two state the point plainly (e.g., "The customer rode off five minutes later, click gone" without the "There's no PR review" frame).

No other surface categories turned up a real instance — no significance inflation, no superficial-analysis tails, no puffery, no vague attribution, no AI-vocabulary words (delve, underscore, testament, vibrant, crucial, etc. all absent), no copula avoidance, no rule-of-three piling, no elegant variation, no Title Case headings or boldface lists, no chatbot scaffolding, no em dashes, no curly quotes.

### Structure

**Tier:** Narrative nonfiction (extrapolated) — first-person memoir/personal essay, ~1,100 words, told as a story with scenes and named people, so N1–N4 apply at a notch lighter than the fiction-validated weight.

1. **Thematic over-determination (N1)** — two passages carry this: "It taught me something about the difference between working under artificial urgency, which had defined most of my old job's fire drills, and working under real urgency, where the stakes were obvious to everyone in the room and nobody needed a status update to understand why it mattered" (end of the Marcus anecdote), and the closing "Mostly, though, I think about Harold's grin more than I think about any dashboard I ever shipped. That's probably the whole point." The narrator names the lesson instead of leaving the anecdotes to carry it.
   - Author decision: cut the "artificial urgency... real urgency" explainer sentence and trust the Marcus scene's own details; cut "That's probably the whole point" and end on the Harold's-grin/dashboard image.
2. **Single-track, internally resolved arc (N3, weak)** — one causal line from quitting to returning to product management, no subplot, resolved through the narrator's own shift in patience rather than an external event. This is largely genre convention for a personal essay, so it's a minor note on its own — worth naming only because it sits beside the N1 pattern above rather than because it's unusual for the form.

### Reads as human

Heavy load of named, specific, checkable detail that AI prose tends to regress away from: Dave, Priya, Harold, Marcus, Wheelhouse Cycles, a Raleigh three-speed, an IKEA dresser, exact fractions ("forty percent bicycles and sixty percent talking"), exact durations ("six years," "eleven years," "two sprints," "forty minutes"). The piece explicitly undercuts its own neat transformation arc ("I won't pretend the year in the shop transformed me into some Zen wrench-wielding sage. I still sit in meetings that go long."), which is the opposite of the tidy, upbeat "Despite these challenges..." close the catalog flags. Emotion is never rendered as a bodily cliché — no tightening chest, no stomach drop, no throat closing — despite two emotionally loaded anecdotes; the closest it gets is plain notation ("that thought bothered me more than it should have," "in a voice that made the whole two days worth it"). Priya's banana bread and group-ride stories are a digression that never pays off. A consistent, idiosyncratic first-person voice and dry humor run throughout.

### Hidden characters

Clean — no invisible characters found (`scripts/clean_text.py`, run against the full file).
