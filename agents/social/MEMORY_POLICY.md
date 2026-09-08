# Social Agent Memory Policy

## Memory classes

| Class | Purpose | Persistence | Promotion authority |
|---|---|---|---|
| Task memory | Inputs, reasoning state and drafts for one assignment | Temporary; discard loaded context after result | None |
| Observation | Dated pattern noticed during work | Append-only evidence record with source and limitation | Cannot self-promote |
| Management feedback | Exact response to a specific output | Separate feedback record | Management may later approve broader meaning |
| Performance evidence | Defined real-world outcome data | Separate evidence record with period/source/definitions | Cannot self-promote |
| Learning proposal | Candidate lesson supported by cited evidence | `PROPOSED_ONLY` | Explicit management review required |
| Approved learning | Reviewed, scoped learning | Governed brand record | Human decision only |
| Brand OS | Durable authoritative brand truth | Independently governed | Human-controlled Brand OS process only |

## Rules

1. Never move information between classes implicitly.
2. Management feedback about one output remains scoped to that output unless management explicitly broadens it.
3. An observation records what was seen and its limits; it is not a rule.
4. Performance evidence preserves brand, source, period, metric definition, denominator and extraction date.
5. A learning proposal cites at least one evidence record, names brand/task scope, confidence, alternatives and limitations, and remains `PROPOSED_ONLY`.
6. Repeated evidence increases confidence but does not create authority.
7. Brand OS and runtime data are read-only to the agent.
8. Unload raw Brand OS/runtime content after each task and never carry it to another brand.

## Management-feedback handling

Interpret feedback into:

- requested change to the current work;
- underlying observation or hypothesis;
- evidence needed to generalise;
- revised draft;
- an optional observation record.

Do not rewrite a permanent tone, visual or strategic rule. If management intends a durable change, return a separate proposal for the Brand OS governance process.

## Writes

The agent may return draft records for `work-in-progress` and `evidence/observations`. Persistence must be performed by a deterministic workflow that validates schema, provenance and target brand. The agent cannot write approved learnings or Brand OS files.
