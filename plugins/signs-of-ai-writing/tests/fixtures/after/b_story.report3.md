## AI-writing check

**Overall:** Reads as clearly human-written. The surface scan comes back clean on every category in the catalog — no significance inflation, no AI-vocabulary words, no spaced em dashes, no chatbot residue — and the structural read runs opposite to the AI profile: no stated theme, an ambiguous and unresolved ending, and loose, digressive scene-painting rather than one tidy causal track.

### Findings

No findings. The text was checked against all nineteen catalog categories — significance/legacy inflation, superficial-analysis tails, puffery, vague attribution, the "challenges and future prospects" formula, AI-vocabulary density, copula avoidance, negative parallelism, rule-of-three padding, elegant variation, Title Case/boldface formatting, inline-header lists, section summaries and disclaimers, em-dash overuse, emoji/curly-quote misuse, chatbot scaffolding, and the machine-artifact appendix — and none triggered. A grep sweep for the AI-vocabulary word list (*delve, underscore, tapestry, testament, boasts, vibrant, crucial, meticulous, pivotal, garner, emphasizing, showcasing, highlighting, fostering, bolstered, enhance, enduring, landscape*), for chatbot scaffolding phrases, and for machine artifacts (`turn0search`, `utm_source=chatgpt.com`, `contentReference`, etc.) returned zero matches. Every em dash in the piece is unspaced ("brilliantly fine—the blue sky," "Never mind—a little dab"), the period-typesetting convention, not the spaced "clause — clause" pattern the catalog flags. See "Reads as human" below for what's actually carrying the prose.

### Structure

Tier: Fiction (validated) — roughly 1,930 words of third-person narrative fiction, well past the 800-word threshold, so N1–N4 and N6 apply at full weight.

No structural tells found:

- **N1, thematic over-determination — absent.** The story never explains its own meaning. It ends on a bare image and an unexplained sound, with no narrator gloss or "she understood now that…": *"But when she put the lid on she thought she heard something crying."* There's no invented aphorism ("a poet once wrote") and no character voicing the metaphor for the reader.
- **N2, embodied-emotion formula — mixed, not mechanical.** Alongside body-based moments ("something light and sad… seemed to move in her bosom," "her eyes filled with tears") the narration also uses plain emotion labels the AI pattern avoids — *"Miss Brill was glad,"* *"so pleased to see him—delighted!"* No smell imagery anywhere and no weather-tracks-the-mood device, so the sensory-correlate machinery the pattern describes just isn't present.
- **N3, structural streamlining — absent.** Two locations, not one (the public gardens, then her room at home). The middle of the piece digresses through a half-dozen vignettes — the silent old couple, the Englishman and his wife arguing about spectacles, the ermine-toque woman being dropped by her companion, the boy and girl on the bench — that never pay off or connect to a single causal line. The ending is a collapse, not a tidy internal reconciliation: nothing is resolved by Miss Brill's own choice or understanding.
- **N6, model fingerprint** — not applicable; there's no formulaic habit here consistent enough to name one.

### Reads as human

- Plain copulas throughout: *"Miss Brill was glad," "the air was motionless," "It was nice to feel it."*
- Plain emotion labels sitting next to embodied ones (see N2), rather than feeling rendered only as a body part.
- Natural repetition of "Miss Brill" by name dozens of times, with no elegant-variation hunt for synonyms.
- Specific, concrete, checkable detail rather than vague gesture: the ermine toque, the Panama hat, honey-cake with an almond inside, moth-powder and sealing-wax for the fur's nose.
- Loose digressions and threads that never pay off — the spectacles argument, the invalid gentleman she reads the newspaper to four afternoons a week — sitting beside the main scene rather than serving it.
- An ambiguous, faintly bleak, unresolved ending rather than an AI-typical tidy reconciliation.
- Idiosyncratic voice: fragments, ellipses, interjections ("Dear me!", "No wonder!"), free indirect discourse close enough to render a specific, quirky consciousness rather than a generic narrator.

### Hidden characters

Clean — no invisible characters found. Ran `scripts/clean_text.py` on the file; it reported zero zero-width spaces, direction marks, word joiners, soft hyphens, or homoglyphs, and the NFKC-normalized output is byte-identical to the original.
