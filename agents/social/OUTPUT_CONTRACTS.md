# Social Agent Output Contracts

Agent-level schemas live in `agents/social/schemas/`. Skill outputs continue to use `skills/social/schemas/` and are nested in `AGENT_RESULT.output`.

## AGENT_TASK_PLAN

Created before detailed context loading.

Required fields:

- task type
- brand
- platform
- business model
- vertical module or `null`
- objective
- selected Skills
- selected Brand OS sections
- platform references
- runtime evidence requested
- missing information
- proceed status

Schema: `schemas/agent-task-plan.schema.json`.

## AGENT_RESULT

Returned after Skill execution, self-critique and independent-eval handoff.

Required fields:

- task-plan reference
- executive recommendation
- typed Skill output
- evidence used with classification/source
- assumptions refused
- limitations
- required human approvals
- proposed next action
- self-critique findings
- independent evaluation status/reference

Schema: `schemas/agent-result.schema.json`.

The output remains a draft even when evaluation passes.

## AGENT_LEARNING_PROPOSAL

A proposal, never a knowledge update.

Required fields:

- observation
- evidence count and evidence IDs
- affected brand
- affected task type
- confidence
- suggested learning
- reason
- limitations/alternative explanations
- status: `PROPOSED_ONLY`

Schema: `schemas/agent-learning-proposal.schema.json`.

## Classification and approval

Use only the evidence classes in `AGENT.md`. Separate management rules from facts and conclusions. Unknown or refused assumptions must remain visible.

An independent-eval result may be `PASS`, `PASS_WITH_CORRECTIONS` or `FAIL`. It cannot approve publication, learning promotion or Brand OS changes.
