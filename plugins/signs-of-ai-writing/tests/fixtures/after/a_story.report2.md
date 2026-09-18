## AI-writing check

**Overall:** Surface prose reads clean — no significance inflation, AI-vocabulary pile-up, em-dash/curly-quote tells, or chatbot residue anywhere in it. Structure reads strongly AI: the opening, both emotion beats, the central metaphor, and the closing sentence each reproduce the reference catalog's own template patterns almost verbatim, and the plot runs one room, no subplot, to an internally resolved reconciliation — the profile of a de-slopped or humanized AI draft, not of untouched human prose.

### Findings

No surface findings. I checked density against every category in `catalog.md` — significance/legacy inflation, superficial-analysis "-ing" tails, puffery, vague attribution, the AI-vocabulary word lists, copula avoidance, negative parallelism, rule-of-three pile-ups, elegant variation, Title Case/boldface abuse, inline-header lists, section summaries and didactic disclaimers, em-dash overuse, curly quotes, chatbot scaffolding, and machine artifacts — and found nothing that rises above a single, well-motivated instance. The one near-hit ("the finish gone matte with dust in a way that spoke of years rather than weeks") is a plain descriptive contrast, not the rhetorical "X rather than Y" move, and it's isolated, so it isn't worth flagging. The prose is controlled, specific, and free of the catalog's tells.

### Structure

**Tier: Fiction (validated)** — a roughly 1,700-word short story, well past the 800-word floor for the narrative tier, so N1–N4 and N6 apply at full weight. (It's shorter than the study's validated 3,000–7,000-word range, so treat the read as strongly suggestive rather than certified.)

Dense on the AI-leaning side. Several tells reproduce the reference catalog's own example phrasing almost word for word:

1. **Stated theme (N1)** — closing sentence: "...coaxing the whole grieving, resentful, beloved thing back toward the sound it used to make before either of them had learned what it cost to walk away from something and call it survival." The narrator spells out the lesson instead of ending on the image. Decision: end the scene on Ilse staying and the piano ringing true, and cut the generalizing clause.

2. **Central object explained as metaphor (N1)** — "It was, Bertold used to say, like raising a child, or like a marriage." States outright what the tuning stands for. Decision: the tuning process already carries the meaning; drop the "like a marriage" gloss.

3. **Embodied-emotion formula (N2)** — "Marta's chest did something complicated and old at the sight of it" and, later, "something in Marta's throat tightened unexpectedly." Two separate beats on the same body-cue template, and no plain emotion label appears anywhere in the piece. Decision: let one of these land as a plain "she was afraid to touch it" instead; keep at most one physical cue per scene.

4. **Setting-as-mirror (N2)** — "The coffee steamed and then stopped steaming." Decision: cut it, or move the beat onto a person instead of the cup.

5. **Streamlined single-track plot (N3)** — opens by placing the reader in space ("Marta Kessler had not set foot on Lindenstraße in twenty years, and the street had not waited for her"), stays in essentially one room for the whole scene, carries no subplot, and resolves through the protagonist's own choice and an internal reconciliation ("Ilse nodded, and did not leave the room this time") rather than anything from outside the two women. Decision: let one thread go unresolved on purpose — the box of letters is raised and then quietly dropped, which is already close to a loose end, so either use it or cut the setup — or let something neither woman controls decide the ending.

Smell also appears at both major scene transitions (brine and diesel on arrival, felt and machine oil opening the case), consistent with N2's density pattern; noted here rather than as a separate finding.

### Reads as human

- Specific, checkable, named things instead of vague gestures: a Förster upright (a real German piano maker), Gdańsk *and* Danzig — the same city under its Polish and German names, a deliberately loaded detail — Lindenstraße, Marktplatz, the C major scale, Tante Hedda.
- A plain copula where an AI draft would reach for "featured" or "boasted": "It was a Förster upright, walnut case."
- A hedge-free, confident line: "Because I'm better than the shop on Marktplatz."
- Ilse is introduced through inferred psychology and action, not the external physical description the AI-leaning pattern predicts: "Ilse opened the door before Marta could knock, which meant she had been watching from the window, which meant she had been anxious."
- Naturalistic interrupted dialogue and clipped exchanges: "I just—", "That's not—", "Maybe." / "Make coffee."
- A lot of backstory — the drinking, the six years, the letters — arrives through an actual argument rather than narrated exposition, which gives the piece more temporal layering than the single-scene surface suggests.

These are real counter-signals, but they sit on top of a structural skeleton — opening, both emotion beats, metaphor, ending — that matches the AI profile closely enough to outweigh them.

### Hidden characters

Clean — no invisible characters found. `scripts/clean_text.py` reports "Hidden-character scan - clean. No invisible characters found," and its cleaned output is byte-identical to the source file.
