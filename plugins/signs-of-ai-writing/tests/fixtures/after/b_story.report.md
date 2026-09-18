## AI-writing check

**Overall:** This reads as human, and there's a fact that settles it independent of style: it's Katherine Mansfield's short story "Miss Brill," first published in 1920 (collected in *The Garden Party and Other Stories*, 1922) and long in the public domain — not a 2026 draft. The skill's own rule is that text predating ~November 2022 can't be AI-written, however "AI-ish" a passage looks, so the honest verdict has to lead with that. I ran the full surface and structural pass anyway, as asked, treating the text as if written now — it comes back clean on both axes on its own merits too: no significance inflation, no AI-vocabulary words, no spaced em dashes, no chatbot residue, and a structural profile (digressive vignettes, an unresolved ending, plain emotion labels mixed with sensory writing) that leans human even before you know the source.

### Findings

No surface tells. I checked all sixteen catalog categories — significance/legacy inflation, present-participle tails, puffery, vague attribution, the "challenges and future prospects" formula, AI-vocabulary density, copula avoidance, negative parallelisms, rule-of-three pile-ups, elegant variation, Title Case/boldface, inline-header lists, section summaries/disclaimers, em-dash overuse, emoji/curly-quote misuse, and chatbot scaffolding — and nothing clears the bar for a finding:

- The 24 em dashes in the text are all unspaced ("fine—the blue sky," "Jardins Publiques—Miss Brill was glad") — standard early-20th-century print typography, the opposite of the AI spaced-em-dash pattern ("clause — clause").
- The curly quotes throughout are the story's original typesetting convention, not chatbot output, and per the catalog they're weak/ignorable on their own regardless.
- None of the AI-vocabulary words appear anywhere (no *delve, underscore, tapestry, testament, crucial, boasts, meticulous, pivotal, garner, showcasing*, etc.).
- No significance-inflation clauses, no "serves as / stands as" copula avoidance, no "not just X but Y" constructions, no closing summary or didactic disclaimer, no placeholder text or knowledge-cutoff hedging.

### Structure

**Tier: Narrative** — original fiction, roughly 2,900 words, well past the 800-word threshold, so the full N1–N4 pass applies.

No structural tell rises to a finding; the profile leans human on nearly every axis the study tracks:

- **N1, thematic over-determination — absent.** The story never states its theme. It ends on an image with no gloss: "she thought she heard something crying" — no narrator commentary, no character voicing the metaphor, nothing resolved into a stated lesson. That's the opposite of the AI pattern (77% of AI stories have the narrator comment on theme, vs 52% of human ones).
- **N2, embodied-emotion formula — mixed, tilts human.** There's some sensory writing ("something light and sad ... seemed to move in her bosom"), but it sits alongside plain emotion labels throughout: "Miss Brill was glad," "so pleased to see him — delighted!," "she nearly laughed out loud," "a queer, shy feeling." AI stories name feeling explicitly only 8% of the time; this text does it repeatedly. There's no smell imagery anywhere, against the AI-elevated norm of 82%.
- **N3, structural streamlining — partially present, offset by digression.** One main location and a weather-grounded opening ("Although it was so brilliantly fine—the blue sky powdered with gold...") do match the AI-elevated pattern, and several strangers are introduced by external description (the old couple, the ermine-toque woman) — a genuine surface coincidence with the AI profile, explained by the story's people-watching premise rather than AI streamlining. It's offset by the opposite of a single causal track: the middle of the story is a series of unresolved character vignettes (the Englishwoman arguing about spectacles, the beggar at the railings, the invalid gentleman Miss Brill reads to) that never pay off, and the ending is driven by an external event — the young couple's cruel dialogue about her fur — rather than an internal reconciliation the protagonist reaches alone.
- **N4, human-leaning structure — present.** Loose digressions that never resolve; an ambiguous, morally unsettled close rather than tidy acceptance; natural repetition of "the band" and "Miss Brill" by name throughout instead of elegant variation; one concrete named specific (the French endearment "*ma petite chère*").

### Reads as human

Plain copulas throughout ("It was nice," "It was new," "This was disappointing"); blunt emotion labels alongside, not instead of, bodily sensation; a string of specific, checkable, unusual details (a honey-cake that sometimes hides an almond, an ermine toque, "It's exactly like a fried whiting," the invented band-tune onomatopoeia "Tum-tum-tum tiddle-um!"); natural word repetition instead of synonym-hunting; digressions and loose ends that never resolve; an ending that stays ambiguous rather than delivering a moral. And, decisively: it's an identifiable, independently verifiable story from 1920 — no LLM wrote it.

### Hidden characters

Clean — no invisible characters found. `scripts/clean_text.py` reported no zero-width spaces, direction marks, word joiners, soft hyphens, or homoglyphs; the cleaned output is byte-identical to the source.
