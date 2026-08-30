# Operating Model

## Routing work

Use an agent when the work requires ongoing context plus judgment, investigation, planning, or adaptation. Use a workflow when the steps and state transitions are predictable. A workflow may invoke a bounded task agent for one judgment-heavy step. Use Codex directly for website work with the chosen Brand OS and reusable skills loaded.

## Read and write boundaries

Agents, workflows, and Codex may read approved Brand OS knowledge. Draft output goes to `work-in-progress/`; observations and measured results go to `evidence/`. Only human-reviewed processes move work into governance directories or change the Brand OS.

Generated output, its evaluation, and its approval record must remain distinct artifacts. Rejection is retained as useful operational history, not deleted or treated as a permanent brand rule.

## Consequential actions

The system may prepare an action, show the exact proposed change, and assemble an approval package. It may not publish, deploy, send, launch, pause, or change spend without a recorded human approval for that specific action.

## Lifecycle states

```text
source/evidence -> proposal -> independent evaluation -> human decision
                                                     |-> approved learning
                                                     |-> rejected/superseded

approved learning -> separate Brand OS change proposal -> human decision -> Brand OS update
```

## Simplicity rule

Files are the system of record for now. Introduce databases, queues, retrieval infrastructure, dashboards, or automation services only in response to observed scale, concurrency, reliability, or reporting needs.

