---
title: Tuxedo ART Job Details
description: "Field reference for configuring a Tuxedo ART job in OpCon, including the Variables, Step Control, and Failure Criteria tabs."
product_area: Job Types
audience: Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - Automation Engineer
  - Jobs
last_updated: 2026-06-02
doc_type: reference
---

# Tuxedo ART Job Details

For full configuration procedures, refer to [Running Tuxedo ART Jobs](https://help.smatechnologies.com/opcon/agents/tuxedo/latest/Files/Agents/Tuxedo-ART/Running-Tuxedo-ART-Jobs.md) in the Tuxedo ART Agent online help.

## Job Details Fields

| Field | Description | Default |
|---|---|---|
| **Script** | Name of the script to run. Passed to the `artjesadmin` utility at job start. Maximum 512 characters. Required. | — |
| **Owner** | Reserved for future use. Jobs run under the user configured for the Agent and Tuxedo ART environment. | `*` |
| **JESRoot Directory** | Full path to the JES Root environment. Used by the Agent to retrieve the Tuxedo job log. Maximum 512 characters. | — |
| **Tuxedo Environment** | Name of the environment script that sets up environment variables when connecting to the Tuxedo environment. Must include the `.sh` extension. Maximum 512 characters. | — |

## Variables Tab

Variables are passed as `name=value` pairs to the Tuxedo ART environment.

| Field | Description |
|---|---|
| **Name** | The variable name in the job script to replace with the defined value. Must start with `&` (for example, `&TEST`). |
| **Value** | The variable value. Supports OpCon property tokens resolved at job start — for example, `[[$SCHEDULE DATE_j]]`, `[[SI.C102]]`, `[[$SCHEDULE DATE (-1d)]]`, and `SubStr([[$SCHEDULE DATE-BVH]],0,2)`. Use Control-T keyins to select properties. `SubStr` extracts characters starting at the first position for the number of characters specified by the second argument — for example, `SubStr([[$SCHEDULE DATE-BVH]],0,2)` extracts MM from MMDDYYYY. |

## Step Control Tab

The Step Control tab supports a maximum of 5 step control definitions per job.

| Field | Description |
|---|---|
| **Step Name** | The step name defined in the script. Maximum 17 characters. |
| **Min CC** | The minimum step completion code. Valid range: 0–4095. |
| **Max CC** | The maximum step completion code. Valid range: 0–4095. Must be greater than or equal to **Min CC**. |
| **Step Action** | The action to take when the step completion code falls within the defined range. Only **Send Trigger Message TO SAM** is supported. |
| **Trigger Message** | The message sent to SAM for Agent Feedback. Required when **Step Action** is set to **Send Trigger Message TO SAM**. Must match an Agent Feedback User Message match event definition — for example, `JEVENT=SS1TEST10`. Maximum 20 characters. |

## Failure Criteria Tab

The Failure Criteria tab defines how OpCon evaluates the job's exit code to determine final job status.

| Field | Description | Valid Values |
|---|---|---|
| **Comparison Operator** | The operator used to compare the job's exit code against the defined value. | Range, Equal To, Not Equal To, Less Than, Less or Equal, Greater Than, Greater and Equal |
| **Value** | The value compared against the job's exit code. | -2147483648 to 2147483647 |
| **End Value** | The upper boundary for comparison when **Comparison Operator** is **Range**. | -2147483648 to 2147483647 |
| **Result** | The resulting job status when the criteria evaluates to true. Specify only on the first group; the value applies to all remaining groups. | Finish OK, Fail |
| **And/Or** | Determines how multiple failure criteria groups are evaluated together. | And, Or |
| **Anything Else** | The result when the exit code falls outside all defined criteria. When **Result** is **Finish OK**, **Anything Else** is **Fail**. When **Result** is **Fail**, **Anything Else** is **Finish OK**. | — |
