---
title: z/OS Agent Feedback
description: "Reference for the feedback types the z/OS Agent sends to OpCon, what each one represents, and the format of its value."
product_area: Reference
audience: Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - Automation Engineer
  - Agents
last_updated: 2026-09-15
doc_type: reference
---

# z/OS Agent Feedback

**Theme:** Configure  
**Who Is It For?** Automation Engineer

## What Is It?

The z/OS Agent reports activity to OpCon as Agent Feedback messages. Each feedback type has a name, carries a specific kind of information, and uses a specific value format. Use these names and formats when defining event criteria, job-completion expressions, or other OpCon objects that match against z/OS Agent Feedback values.

## Feedback types

| Name | Description | Format |
| --- | --- | --- |
| Job Status Description | The job's exit description. OpCon derives this value automatically for every agent, and the z/OS Agent supplies it directly when a user message is too long for the exit description. | Free text. See [User Message sources and lengths](#user-message-sources-and-lengths). |
| User Message | Message text sent from a step control definition, from a `--MSG` directive in JCL, or from the XPSCOMM utility. Posted to Schedule Operations and available as event criteria. | Free text. The maximum length depends on the source — see [User Message sources and lengths](#user-message-sources-and-lengths). |
| Step Completion | Reported at the end of each job step. Carries the step status code and step name. Not sent for tracked jobs. | A five-character status code, a space, and the step name. See [Step Completion format](#step-completion-format). |
| Trigger Messages | Console message text that satisfied a `$JOBTRIG` WTO trigger, or dataset event text that satisfied a DSN trigger. Sent when a message-trigger pre-run condition fires. | Variable-length string. See [Trigger Messages format](#trigger-messages-format). |

## User Message sources and lengths

Three z/OS Agent features send a user message. Each supports a different maximum length, and the length determines whether the full text reaches **Job Status Description** as well as **User Message**.

| Source | Maximum length | User Message | Job Status Description |
| --- | --- | --- | --- |
| Step control definition **Trigger Message** field | 20 characters | Full text | Full text |
| `--MSG` directive in JCL | 64 characters | Full text | First 20 characters only |
| XPSCOMM utility | 4000 characters | Full text | Full text |

**User Message** always carries the complete text. **Job Status Description** carries the complete text except for a `--MSG` directive longer than 20 characters, because the agent does not supply the field directly on that path and OpCon derives it from the 20-character exit description instead.

:::note
Match against **User Message** when the value comes from a `--MSG` directive and can exceed 20 characters. For the other two sources, either value works.
:::

The z/OS Agent writes **User Message** on every path so that event definitions created before **Job Status Description** became available continue to work without change.

A user message sent from a step control definition or a `--MSG` directive can also carry one of the tokens listed in [User Message tokens](#user-message-tokens) instead of plain text.

For details on sending a user message from XPSCOMM, including the difference between OpCon jobs and external jobs, refer to **Using the XPSCOMM interface routine** in the **z/OS Agent** online help.

## Step Completion format

Each Step Completion value has three parts:

1. **Status code** — five characters identifying how the step ended:

    | Code | Meaning |
    | --- | --- |
    | `Cnnnn` | Step ended with condition code `nnnn` (decimal) |
    | `FLUSH` | Step did not run |
    | `Unnnn` | Step ended with user abend code `nnnn` (decimal) |
    | `S-xxx` | Step ended with system abend code `xxx` (hexadecimal) |

2. **A single space** separating the status code from the step name.

3. **Step name** in `execstep` or `jobstep.execstep` format, where `jobstep` is the name on the job-level EXEC statement and `execstep` is the name on the EXEC PGM statement in the procedure.

Examples:

- `C0000 STEP01` — STEP01 ended with condition code 0
- `U0016 STEP02.RUN` — RUN inside STEP02 ended with user abend 16
- `S-0C7 STEP03` — STEP03 ended with system abend S0C7
- `FLUSH STEP04` — STEP04 did not run

## User Message tokens

A User Message can contain plain text or one of the following tokens. Tokens are interpreted by the z/OS Agent and trigger an immediate action.

:::note
Tokens apply to a step control definition and to a `--MSG` directive only. XPSCOMM treats any input beginning with `$` as a MSGIN event request rather than as a user message, so a token coded as an XPSCOMM parm is not interpreted as a token.
:::

| Token | Action |
| --- | --- |
| `$EVENT=eventname` | Triggers the action defined for `eventname` in the z/OS event trigger table. If the name is not found, the message is changed to `JEVENT=eventname` and sent like any other message. |
| `$JOB:GOOD` | Sets the job to Finished OK immediately. |
| `$JOB:BAD` | Sets the job to Failed immediately. |
| `$S=jobstep[.procstep]` | Sets the job's restart step to `jobstep[.procstep]`. |

## Trigger Messages format

Trigger Messages take one of two forms depending on which pre-run condition fired:

- **WTO trigger:** `RSRC=resource;MSG=message text`, where `resource` is the resource name from the trigger definition and `message text` is the console message that matched.
- **DSN trigger:** `DSNx|DSNAME`, where `x` is the dataset event indicator and `DSNAME` is the fully qualified dataset name that matched.

## Using feedback in events

To match a z/OS Agent Feedback value in an OpCon event, select the feedback type by name and provide a string to compare. The string supports SQL-style pattern matching:

- Use `%` as a multi-character wildcard
- Use `_` as a single-character wildcard
- Single quotes (`'`) are not allowed in the match string

For complete event-definition steps, refer to [Events](../job-components/events.md).

## Related topics

- [Events](../job-components/events.md) — define event triggers based on Agent Feedback values
- [z/OS Job Details](../job-types/zos.md) — configure z/OS jobs and step control
- [Operations Machine Messages](Operations-Machine-Messages.md) — agent status messages displayed in Schedule Operations
