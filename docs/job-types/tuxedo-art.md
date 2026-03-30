---
title: Tuxedo ART Job Details
description: "For information about defining a Tuxedo ART Job, refer to Running Tuxedo ART Jobs in the Tuxedo ART Agent online help."
product_area: Job Types
audience: Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Jobs
last_updated: 2026-03-18
doc_type: conceptual
---

# Tuxedo ART Job Details

**Theme:** Configure  
**Who Is It For?** Automation Engineer

## What Is It?

For information about defining a Tuxedo ART Job, refer to [Running Tuxedo ART Jobs](https://help.smatechnologies.com/opcon/agents/tuxedo/latest/Files/Agents/Tuxedo-ART/Running-Tuxedo-ART-Jobs.md) in the **Tuxedo ART Agent** online help.

- **Script**: The name of the script to run. Passed to the artjesadmin utility during job start
- **Owner**: Reserved for future use. Jobs run under the user configured for the agent and Tuxedo ART environment. Default value is \* (asterisk)
- **JESRoot Environment**: Full path to the JES Root environment, used by the agent to retrieve the Tuxedo Job log
- **Tuxedo Environment**: Name of the environment script that sets up environment variables when connecting to the Tuxedo environment. Must include the .sh extension

## When Would You Use It?

- For information about defining a Tuxedo ART Job, refer to [Running Tuxedo ART Jobs](https://help.smatechnologies.com/opcon/agents/tuxedo/latest/Files/Agents/Tuxedo-ART/Running-Tuxedo-ART-Jobs.md) in the **Tuxedo ART Agent** online help

## Why Would You Use It?

- **Tuxedo ART**: For information about defining a Tuxedo ART Job, refer to [Running Tuxedo ART Jobs](https://help.smatechnologies.com/opcon/agents/tuxedo/latest/Files/Agents/Tuxedo-ART/Running-Tuxedo-ART-Jobs.md) in the **Tuxedo ART Agent** online help

## Variables Tab

Variables are passed as name=value pairs to the Tuxedo ART environment.

- **Name**: The variable name in the job script to replace with the defined value. Must start with & (e.g., &TEST)
- **Value**: The variable value. Supports OpCon properties resolved at job start (e.g., \[\[$SCHEDULE DATE_j\]\], \[\[SI.C102\]\], \[\[$SCHEDULE DATE (-1d)\]\], SubStr(\[\[$SCHEDULE DATE-BVH\]\],0,2)). Use Control-T keyins to select properties. SubStr extracts characters starting at the first position for the number of characters specified by the second argument (e.g., SubStr(\[\[$SCHEDULE DATE-BVH\]\],0,2) extracts MM from MMDDYYYY)

## Step Control Tab

Supports a maximum of 5 Step Control definitions per job.

- **Step Name**: The step name defined in the script
- **Min CC**: The minimum step completion code
- **Max CC**: The maximum step completion code
- **Step Action**: Only 'Send Trigger Message TO SAM' is supported (e.g., JEVENT=SS1TEST10)
- **Trigger Message**: The message sent to SAM for Agent Feedback. Must match an agent Feedback User Message match event definition (e.g., User Message match 'JEVENT=SS1TEST10')

## Failure Criteria Tab

Supports advanced failure criteria.

- **Comparison Operator**: The operator for comparing the job's exit code to the failure criteria
  - Valid Values: Range, Equal To, Not Equal To, Less Than, Less or Equal, Greater Than, Greater and Equal
- **Value**: The value compared against the job's exit code
  - Valid Values: -2147483648 to 2147483647
- **End Value**: The end value for comparison when the operator is "Range"
  - Valid Values: -2147483648 to 2147483647
- **Result**: The resulting job status when the criteria is true. Specify only on the first group; applies to all remaining groups
  - Valid Values: Finish OK, Fail
- **And/Or**: How multiple failure criteria are evaluated together
  - Valid Values: And, Or
- **Anything Else**: The result when the exit code falls outside the advanced criteria
  - If Result is "Finish OK", Anything Else is "Fail"
  - If Result is "Fail", Anything Else is "Finish OK"

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Script | The name of the script to run. | \* | — |
| Owner | Reserved for future use. | \* | — |
| JESRoot Environment | Full path to the JES Root environment, used by the agent to retrieve the Tuxedo Job log | — | — |
| Tuxedo Environment | Name of the environment script that sets up environment variables when connecting to the Tuxedo environment. | — | — |
| Name | The variable name in the job script to replace with the defined value. | — | — |
| Value | The variable value. | — | — |
| Step Name | The step name defined in the script | — | — |
| Min CC | The minimum step completion code | — | — |
| Max CC | The maximum step completion code | — | — |
| Step Action | Only 'Send Trigger Message TO SAM' is supported (e.g., JEVENT=SS1TEST10) | — | — |
| Trigger Message | The message sent to SAM for Agent Feedback. | — | — |
| Comparison Operator | The operator for comparing the job's exit code to the failure criteria | — | — |
| End Value | The end value for comparison when the operator is "Range" | — | — |
| Result | The resulting job status when the criteria is true. | — | — |
| And/Or | How multiple failure criteria are evaluated together | — | — |
| Anything Else | The result when the exit code falls outside the advanced criteria | — | — |
## FAQs

**Q: What is required to define a Tuxedo ART job?**

A Tuxedo ART job requires a Script name (passed to the artjesadmin utility), a JESRoot Environment path (for retrieving the job log), and a Tuxedo Environment script name (with .sh extension) for setting up environment variables.

**Q: How are variables passed to the Tuxedo ART environment?**

Variables are passed as name=value pairs via the Variables tab. Variable names must start with & (e.g., &TEST). Values support OpCon property tokens resolved at job start.

**Q: What is the maximum number of Step Control definitions per job?**

The Step Control tab supports a maximum of 5 Step Control definitions per Tuxedo ART job.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
