---
name: reprompt
description: "Rewrite a prompt to be more ambitious through the three lenses of Felix Rieseberg's \"How to be more ambitious\": Altitude (the outcome behind the task and what Claude needs to own it), Depth (a top professional's raw material, instruments and an outside judge) and Range (methods from other fields, found by restating the task in verbs and performed rather than role-played). Returns short notes per lens, a stretch target for the user to consider, and one combined rewritten prompt. Runs only when invoked explicitly: /reprompt followed by the prompt."
argument-hint: "[prompt to make more ambitious]"
disable-model-invocation: true
---

# Reprompt

Models can do more than most prompts ask of them. A prompt usually asks for the task as the user first pictured it: fill in the template, summarize what others wrote, give an opinion where a measurement exists, deliver something polished with no way to tell if it's right. This skill rewrites the prompt to ask for more of the right kind, through three lenses from Felix Rieseberg's post [How to be more ambitious](https://felixrieseberg.com/how-to-be-more-ambitious-a-tutorial-for-humans-with-models/):

- **Altitude**: aim at the outcome the task serves, not only the task.
- **Depth**: do it the way the best people in the field do it: from raw material, with their instruments, judged by something outside the conversation.
- **Range**: borrow methods from fields the prompt doesn't mention.

The post's fourth kind, Speed (the same work done faster), is out of scope.

More ambitious doesn't mean longer. A prompt that lists every idea from the notes is worse than one that picks the three moves that matter.

## Input

The prompt comes as the skill's arguments: pasted text or a path to a file that holds it. With no arguments, take the last task the user gave in this conversation. If there is none, ask for the prompt and stop.

## Before writing

**Name the field.** Pick the profession whose judgment the result depends on most: "a site reliability engineer", "a litigation lawyer", "a conversion copywriter", "a running coach", never "an expert". If two fields compete, pick the one whose mistakes would cost most. If you inferred it, say so in one line.

**Look, don't do.** If the prompt is about this workspace (a repo, a file, data on disk), take a short look so you can name real sources: the log directory, the test suite, the export with the raw numbers. A real path beats a category. Don't start the task itself.

**Work the lenses in order.** Altitude first, because it settles the goal. Depth and Range then apply to that goal, not to the original wording.

Every note has to be specific to this prompt. The test: could you paste the line, unchanged, under a different prompt? If yes, replace it.

## Altitude: the outcome behind the task

Ask what the user wants to happen once this is done. That is the goal beyond the goal: "fix this flaky test" serves "keep main green so people trust CI"; "write the release notes" serves "get existing users to try the new feature". A prompt written at task level gets the task done once and leaves the outcome to the user's next prompt.

- **Climb one step at a time.** Do the task from the full data rather than a slice → find what changed, why, and which decisions it forces → question whether the task should exist in this form at all (a recurring report that could be an alert, a manual review that could be a check). Pick the highest step the user can act on now. If the step above is out of reach, mention it in one line.
- **Say what Claude needs to own it.** Owning an outcome only works when the model can see and test it without a human relaying each piece: access to the data (crash reports, payment logs, the analytics export), mappings that connect it (app version → git commit, campaign → landing page), and somewhere to reproduce and verify (a staging environment, a test account, the target OS). Name them concretely; they become the prompt's setup lines. If they don't exist yet, building them is part of the work.
- **New processes earn their place.** If the higher goal means replacing a process, the prompt asks to test the new one against the user's own history (would it have caught last quarter's problem sooner?) and to run it next to the old one for one cycle before switching.
- **When it doesn't fit, say so.** Creative work, one-off tasks with no ongoing outcome, and goals too vague to steer by ("grow the business") stay at task level. Write "stays at task level" and why, in one line.

The deliverable may change when the outcome calls for it. Hard constraints don't: deadline, audience, length, budget, required tools. If the original deliverable is still owed (the team sync on Friday still needs an answer), keep it and let the higher-level work feed it. When the deliverable changed, say so plainly in the notes.

## Depth: work the way the best in the field work

- **The move they'd make.** One or two things that set the best people in this field apart on this task and that the prompt doesn't ask for: reframing the question around the decision it serves, handling the case that usually breaks, making the result checkable. Not what any competent person does already ("be clear", "know your audience").
- **Raw material.** What they'd start from instead of what has been digested: logs instead of the dashboard, the filings instead of the explainer, the dataset and methods instead of the abstract, support tickets instead of the persona doc, the product used firsthand instead of reviews of it. Write "instead of X → Y" and say where Y lives. If only the user can get it, say exactly what to bring.
- **Instruments, not vocabulary.** A model asked to think like a statistician will use a statistician's words in a markdown table. Ask for what the professional actually runs: a database query instead of eyeballing a CSV, a regression or survival model instead of a bullet list, a profiler instead of guesses, `git bisect`, cohort analysis, a DCF with a sensitivity table, `EXPLAIN ANALYZE`, a pre-mortem. Named things one could look up, each with half a line on what it does here. The user doesn't need to know them already.
- **A belief to test.** If the prompt rests on an assumption ("signups dropped because of the redesign", "users churn over price"), the prompt asks to try to reproduce that belief from the raw data, the way an adversary would, before building on it.
- **Something new, when the data allows it.** Once the work is in the raw data there is often a finding nobody has yet: an early signal, a segment that behaves differently, a blind spot in how the thing is measured. Name the one worth looking for, and how to test it on data it wasn't found in.
- **An outside judge.** Something other than the user or the model that can say no: a test that fails, a benchmark against a baseline, a reproduction from scratch, an independent primary source, the compiler, a real user doing the thing, a prediction with a date on it. Prefer a check the model can run itself, so it gets feedback while it works. Give the threshold that means pass. "Double-check" and "verify the facts" don't count: that is still the user or the model.

## Range: methods from fields the prompt doesn't name

- **Restate it in verbs.** Nouns hide what the work has to do; verbs show which fields have solved it before. "A blog post comparing two runtimes" is "help a developer choose one and defend the choice to their team". "An onboarding email" is "get a new user to do the one thing that predicts they stay". Write one such line.
- **Borrow from one to three fields** beyond the obvious one, each with the specific technique it brings: investigative journalism (lead with what changed, two independent sources per claim), forensic accounting (Benford's law on the ledger), clinical trials (fix the outcome measure before looking at the data), stand-up (the callback), usability testing (five users doing the task find most of the problems). A field without a technique is decoration; drop it.
- **Name the passes.** When the work gains from separate passes, name each and what it checks: an analyst pass on the numbers, an editor pass on the argument, an adversarial pass that builds the strongest case against the result, the way a short seller builds one against a company. If subagents are available, the passes can run in parallel.
- **Perform, don't role-play.** "Act as a short seller" changes the tone, not the work. Ask for what the practitioner does: "build the short case: find the three numbers that would hurt most if they're wrong and check each against the filings". The rewritten prompt never says "you are" or "act as".

Skip Range when the obvious field covers a narrow task completely, and say so in one line.

## Stretch target

Specific, hard goals get more done than "do your best". Suggest one target that sounds unreasonable but is grounded in the domain: the test suite from 20 minutes to 3, a benchmark any reader can rerun with one command, an explanation of the drop that predicts next week's number. One line, offered to the user. It stays out of the rewritten prompt: committing to it is the user's call.

## The rewritten prompt

One prompt, built from the notes:

- Altitude sets the goal and the setup (access, mappings, environments).
- Depth sets the inputs, the instruments and the "Done when" line.
- Range adds the borrowed techniques and the passes.

Rules:

- **Every line traces to a note.** Pick the strongest moves, not all of them. A note that didn't earn a place in the prompt can go from the notes too.
- **A brief, not a script.** Keep it under about 350 words. Name the sources, methods, passes and checks; don't spell out every step. The model that runs it knows how to run a changepoint test once it's told to.
- **No extra deliverables** beyond what the Altitude note justifies. A one-page answer stays one page unless the outcome needs something else, and then the notes say what changed.
- **Self-contained.** A fresh session that never saw this conversation can act on it: the goal and why, the context the user gave, setup and access, raw sources, method, passes, output, and a "Done when" line built from the outside judge.
- **Keep every constraint** the user gave: deadline, audience, format, length, budget, tools.
- **Don't invent facts about the user's world.** Their numbers, names, tools and data locations become `[placeholders]`. General knowledge (what a tool does, typical practice) is fine.
- **No role-play framing.** No "You are…" or "Act as…": describe the actions.
- Write it in the language of the original prompt and in the user's voice, first person, as if they had written it.
- Put it in a fenced `text` block so it can be copied as is.

## Output

```
**Field:** <profession> (+ <fields drawn on>) (<assumption, if inferred>)

**Altitude**
- Goal beyond the goal: ...        (or: Stays at task level: <why>)
- To own it, Claude needs: ...

**Depth**
- Move: ...
- Instead of <digested> → <raw>: <where to get it>
- Instruments: <tool>: <what it's for here>
- Belief to test: ...              (only if the prompt rests on one)
- Outside judge: ... (pass = <threshold>)

**Range**
- In verbs: "..."
- <field>: <technique>
- Passes: ...

**Stretch target (yours to add):** ...

**Rewritten prompt**
(fenced text block)
```

Use headings in the language of the prompt. Leave out a line that has nothing specific to say rather than filling it. The notes are the reasoning and the prompt is the product, so the notes stay under 300 words: one line per bullet, at most two bullets under Altitude, five under Depth and three under Range. When over, cut the weakest bullet, not words from every bullet. Depth always keeps the raw-material line ("instead of X → Y"), the instruments and the outside judge; the belief to test and the new finding are the ones to drop. Range always keeps the verbs line and at least one borrowed field with its technique; the passes line is the one to drop.

Stop after the rewritten prompt. Don't start the task: the user wants to see and edit it first. If they then say to run it, run the rewritten prompt, not the original.

If the task has no meaningful more ambitious version (rename a variable, convert a date format), say so in one line and return the prompt with at most a "Done when" check added. Forcing ambition onto a trivial task only makes it bigger.

## Example

Prompt: "Write a summary of the pros and cons of moving our Postgres to Aurora."

**Field:** database reliability engineer (+ procurement, SRE)

**Altitude**
- Goal beyond the goal: lower database cost and fewer database incidents. Aurora is one route; tuning or a different setup on the current host may be cheaper, and the answer should be free to say so.
- To own it, Claude needs: read access to `pg_stat_statements`, the billing export, the monitoring metrics, and a test AWS account where it can create a cluster.

**Depth**
- Move: measure on our own traffic instead of comparing spec sheets.
- Instead of AWS pages and comparison posts → top queries from `pg_stat_statements`, three months of the database bill by line item, IOPS and storage metrics, last year's incident reports.
- Instruments: pgreplay or pgbench custom scripts: replay captured production traffic on a test Aurora cluster; AWS Pricing Calculator fed with measured I/O: Standard vs I/O-Optimized.
- Outside judge: p95 latency and monthly cost from our measurements, each next to today's number (pass = no claim rests on vendor figures alone).

**Range**
- In verbs: "decide whether to bet the database on one vendor's features, and know what backing out would cost".
- Procurement: exit cost: list the Aurora-only features we'd come to rely on and what moving back would take.
- SRE: game day: run a forced failover and a restore from backup on the test cluster as a timed drill.

**Stretch target (yours to add):** every number in the recommendation comes from a script we can rerun, so next year's review takes an hour.

**Rewritten prompt**
```text
Help me lower our Postgres ([version], [size], on [current host]) cost and incident load, and decide whether moving to Aurora is the right way to do it for our workload, not in general. If tuning or a different setup on the current host gets us there cheaper, say so.

Setup: you'll need read access to pg_stat_statements, the database billing export from [where], metrics from [monitoring tool], and a test AWS account ([account/profile]) where you can create a cluster.

Start from our data, not vendor pages: the top 20 queries from pg_stat_statements, the last 3 months of the database bill by line item, IOPS and storage metrics, and last year's database incidents from [where they're logged].

Method:
- Replay a captured slice of production traffic on a test Aurora cluster (pgreplay, or pgbench with custom scripts) and compare p95 latency for those queries with today's.
- Price Aurora Standard and I/O-Optimized from our measured I/O.
- Run a forced failover and a restore from backup on the test cluster as a timed drill.
- List the Aurora-only features we'd come to depend on and what moving back would take.

Output: one page with the recommendation, the numbers it rests on, and what would change the decision.

Done when: every cost, latency and failover claim comes from our measurements, not from documentation.
```
