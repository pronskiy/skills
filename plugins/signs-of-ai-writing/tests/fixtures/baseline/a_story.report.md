## AI-writing check

**Overall:** This reads as human-written. Across roughly 1,700 words of literary fiction I found none of the catalog's mechanical or stylistic tells — no significance inflation, no AI-vocabulary words, no copula avoidance, no rule-of-three padding, no participle-tail editorializing, and no chatbot scaffolding. The prose relies on long, cumulative sentences, concrete sensory detail, and dialogue carrying the emotional weight, which is the opposite of the flattened, hedge-and-inflate register LLMs default to.

### Findings

None. I checked every category in the catalog specifically and turned up nothing worth flagging:

- No AI-vocabulary words (*delve, underscore, testament, pivotal, tapestry, vibrant, crucial,* etc.) appear anywhere in the text.
- No significance/legacy inflation ("stands as a testament," "marked a turning point") or "Challenges and future prospects" closing formula.
- No copula avoidance — the text uses plain *was/had/sat* freely instead of *serves as/represents/functions as*.
- No superficial-analysis participle tails bolted onto factual sentences.
- No puffery or promotional language.
- No vague attribution to unnamed authorities.
- No negative-parallelism strawmen ("not just X but Y"). The one instance of "rather than" ("spoke of years rather than weeks") is a plain, literal comparison, not a manufactured-depth construction.
- No rule-of-three padding. The one triad-like structure — "first as a bride... then as a wife... then as a mother... then as a widow" — is actually a four-part anaphora used for deliberate emotional escalation, a controlled literary device rather than a shallow list.
- No elegant variation: "piano" is repeated plainly throughout, with "instrument" used only twice in natural, unforced spots.
- No Title Case headings, boldface pile-ups, or inline-header lists.
- No section summaries or didactic disclaimers ("It's important to note that...").
- Only two em dashes in the whole piece, both unspaced and both marking a speaker being cut off mid-sentence in dialogue ("I know. I just—", "That's not—") — correct, purposeful use, not decorative.
- No curly quotes anywhere; all quotation marks are straight.
- No machine artifacts, UTM tags, citation scaffolding, or out-of-place Markdown.

### Reads as human

Strong and consistent:
- **Plain copulas** throughout: "It was a Förster upright, walnut case," "The piano sat where it had always sat."
- **Specific, checkable, unusual detail**: a Förster upright shipped from Gdańsk on a coal barge, a shop "on Marktplatz," cherry liqueur sent from Danzig, the C major scale.
- **A definitive, unhedged claim**: "Because I'm better than the shop on Marktplatz" — the kind of flat assertion LLMs tend to soften.
- **Natural repetition instead of elegant variation**: "You went around. You came back. You went around again."
- **Idiosyncratic, non-formulaic imagery**: "worn it smooth as a stone in a pocket," the tuning beat described as "a slow wah-wah-wah."
- **Restrained, well-used em dashes** confined to interrupted dialogue rather than scattered through the narration for emphasis.
- Sustained emotional and narrative specificity (the letters kept in a box, the plum tree used as a callback, the physical detail of dust on the keys) that doesn't regress to generic description.

### Hidden characters
Clean — no invisible characters found (`scripts/clean_text.py` scan).
