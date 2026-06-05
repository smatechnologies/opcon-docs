---
title: Viewing OS 2200 Job Details
description: "View and update the OS 2200 Task Details of a master job in Solution Manager."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-05-29
doc_type: procedural
---

# Viewing OS 2200 Job Details

**Theme:** Configure
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **OS 2200 Definition** in the **Task Details** panel defines how OpCon submits an ECL (Executive Control Language) stream to a Unisys OS 2200 Agent. It captures the start command, run card control, completion-status evaluation, OpCon/xps tokens, and any Agent-resolved dependencies for an OS 2200 master job.

For conceptual information about this job type, refer to [OS 2200 Jobs](../../../../../../../job-types/os-2200.md).

## Required Privileges

To view or update an OS 2200 job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Opening the OS 2200 Task Details

To open the OS 2200 Task Details of a master job, complete the following steps:

1. Go to **Library** > **Master Jobs**.
2. Select an OS 2200 job in the list.
3. Select **Edit**.
4. Expand the **Task Details** panel.

**Result:** The **OS 2200 Definition** appears, showing the fields described in the following sections.

## OS 2200 Definition Fields

### Machines

| Field | Description |
|---|---|
| **Machines or Machine Group** | Selects the OS 2200 Agent or Machine Group on which the job runs. |

### Start Command

| Field | Description |
|---|---|
| **Qualifier** | Qualifier of the ECL file. Maximum 12 characters. |
| **File Name** | Filename of the ECL file. Maximum 20 characters. |
| **Element Name** | Element name of the file containing the ECL. Include the version when needed (for example, `ELT/VERSION`). Maximum 25 characters. |
| **Priority** | Priority placed on the start statement when the job is submitted to the Exec. Maximum 1 character. |
| **Options** | Valid options for inclusion on the start statement. Maximum 12 characters. |
| **Condition Word (Octal)** | An octal number placed in the middle third of the condition word for this job (sets T2 of the run's condition word, the \"set\" parameter of the start statement). Entered as a 4-digit value. |

### Run Card Control

| Field | Description |
|---|---|
| **Run ID** | Defines the run to the Exec and replaces the Run ID on the `@RUN` card of the ECL. Maximum 6 characters. |
| **Account** | Account code used for billing and on the start statement. Maximum 12 characters. |
| **User ID** | User of the account, used with the account code on the start statement. When **User ID** is `-SECURITY-`, the Agent issues an `ST <ELT>` to start the job, enabling security officer jobs from `SYS$LIB$*RUN$` when Auto Answer for Security is on. Maximum 12 characters. |
| **Project** | Project for file access and accounting, used on the start statement. Maximum 12 characters. |
| **Max Pages** | Maximum value for page generation on the start statement. Entered as a 4-digit value. |
| **Max Cards** | Maximum value for card generation on the start statement. Entered as a 4-digit value. |

### Completion Status based on Condition Word

When an Agent-started job terminates, the run condition word is evaluated for completion status. Define one or more tests to compare divisions of the condition word against your own values.

| Field | Description | Values |
|---|---|---|
| **And/Or** | Determines the association between multiple tests. | `AND`, `OR` |
| **Word Part** | The portion of the word to analyze. | `S1`, `S2`, `S3`, `S4`, `S5`, `S6`, `T1`, `T2`, `T3` |
| **Condition** | How the word part is tested. | `LAND`, `LT`, `LE`, `EQ`, `NE`, `GE`, `GT`, `Range` |
| **Value** | The value compared against the selected word part. | — |
| **End Value** | The upper bound when **Condition** is `Range`. | — |
| **Fin Status** | The completion status assigned when the test is met. | `GOOD FIN`, `BAD FIN` |

### Default Fin Status

| Field | Description | Values |
|---|---|---|
| **Default Fin Status** | The completion status assigned when no completion-status test is met.| `GOOD FIN`, `BAD FIN` |

### Tokens

| Field | Description |
|---|---|
| **Tokens** | OS 2200 Exec tokens that use OpCon/xps Global Properties. Maximum 250 characters. |

### Agent Resolved Dependencies

The **Agent Resolved Dependencies** field determines whether the job includes a Prerun or a File dependency that the Agent resolves before the job runs.

| Value | Description |
|---|---|
| **None** | No Agent-resolved dependency. |
| **Prerun** | The Agent runs a Prerun ECL before the main job. See [Prerun Information](#prerun-information). |
| **File** | The Agent checks one or more file conditions before the job runs. See [File Dependencies](#file-dependencies). |

#### Prerun Information

When **Agent Resolved Dependencies** is set to **Prerun**, the Prerun ECL runs immediately before the job defined in the main definition. If the Prerun ECL terminates with an error, it is rescheduled at a user-defined interval and repeats until it succeeds, after which the main ECL processes. Its primary purpose is to test required preconditions for the job.

The Prerun Information uses the same field groups as the main definition:

- **Prerun Start Command** — **Qualifier**, **File Name**, **Element Name**, **Priority**, **Options**, and **Condition Word (Octal)**.
- **Prerun Card Control** — **Run ID**, **Account**, **User ID**, **Project**, **Max Pages**, and **Max Cards**.
- **Prerun Completion Statuses** — the same fields as [Completion Status based on Condition Word](#completion-status-based-on-condition-word).
- **Pre Run Default Fin Status** — `GOOD FIN` or `BAD FIN`.

#### File Dependencies

When **Agent Resolved Dependencies** is set to **File**, define one or more file conditions:

| Field | Description |
|---|---|
| **Qualifier** | Qualifier for the file dependency. Placing `#` before or after the qualifier directs the Agent to search the SHARED File Directory; without `#`, the Agent searches the STD File Directory. Maximum 12 characters. |
| **File Name** | Filename the ECL depends on. Maximum 12 characters. |
| **Type** | The type of dependency. See the **Type** values below. |
| **Size** | The size value used when **Type** is `Size`. |

The **Type** field supports the following values:

| Value | Meaning |
|---|---|
| **Exists** | The file must exist. |
| **Created** | The file must exist and was catalogued today. |
| **Deleted** | The file must not exist. |
| **Size** | The file exceeds the entered **Size** value. |
| **Referenced** | The file has been referenced today. |
| **Assigned** | The file is currently assigned. |
| **Backed Up** | The file has a current backup (backed up and not yet modified). |
| **Unloaded** | The file is currently unloaded. |

## Related Topics

- [OS 2200 Jobs](../../../../../../../job-types/os-2200.md)
- [Accessing Master Jobs](../Accessing-Master-Jobs.md)

## Glossary

**Agent**: An application installed on a target platform that runs jobs in the native language of that platform and reports results back to OpCon. Agents are defined as Machines in OpCon.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type.
