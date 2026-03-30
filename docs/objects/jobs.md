---
title: Jobs
description: "A _job_ in OpCon is a task or activity, such as running a program on a remote machine, transferring files between machines, or running another schedule."
product_area: Core Concepts
audience: Automation Engineer, Application Owner
version_introduced: "[see release notes]"
tags:
  - Reference
  - Automation Engineer
  - Application Owner
  - Getting Started
last_updated: 2026-03-18
doc_type: reference
---

# Jobs

**Theme:** Configure  
**Who Is It For?** Automation Engineer, Application Owner

## What Is It?

A _job_ in OpCon is a task or activity, such as running a program on a remote machine, transferring files between machines, or running another schedule. The Job Type's details determine the actual task to run. All other components determine when the job runs and what happens when it finishes.

All jobs must first be entered into the Job Master tables. Each job must belong to a schedule, and a schedule should already be defined. Changes made in Job Master Maintenance do not affect previously built Daily schedules.

## When Would You Use It?

- Use this feature when the job runs and what happens when it finishes

## Why Would You Use It?

- **Jobs**: A _job_ in OpCon is a task or activity, such as running a program on a remote machine, transferring files between machines, or running another schedule

## Job Details

**Schedule Name**: Defines the name for the schedule containing the job.

**Job Name**: Defines the name of the job. Names can be up to 64 characters.

- Invalid characters for all Job Types: < (less than), \> (greater than), & (ampersand), ' (single quote), " (double quote), | (pipe), ; (semi-colon), % (percent symbol), ( ) (open and closed parentheses), \[ \] (open and closed square brackets), { } (open and closed braces), = (equals sign), \\ (back slash), ! (exclamation point), \* (asterisk), ? (question mark), and , (comma)

:::note
If a Job Name is changed, the history of the job under the previous name is no longer visible.
:::

**Department**: Defines the department name assigned to the job.

**Job Type**: Defines the type of job. Supported types include:

- BIS
- Container
- File Transfer
- IBM i
- Java
- MCP
- Null Job
- OS 2200
- SAP BW
- SAP R/3 and CRM
- SQL
- Tuxedo ART
- UNIX
- Windows
- z/OS

**Job Sub-Type**: Defines platform-specific sub-types. After selecting a sub-type, enter details into the required fields. The EM reconstructs these details into a valid command line for the selected Job Type. Platforms with sub-types available:

- [UNIX Job Sub-Types](../job-types/unix.md#UNIX)
- [Windows Job Sub-Types](../job-types/windows.md#Windows)

**Access Code**: Defines the Access Code name assigned to the job.

**Disable Build**: Controls whether SMASchedMan reviews the job's frequencies during a build. When False (default), frequencies are reviewed to determine if the job qualifies for the build date. When True, SMASchedMan ignores the job during builds. The job can still be added manually or via a $JOB:ADD(HLD) event.

**Allow Multi-Instance**: Determines if the job can have multiple instances on the same schedule date.

- To request multiple instances, refer to [Job Instance Definition](../Files/UI/Enterprise-Manager/Job-Instance-Definition.md) or the [$JOB:ADD event](../events/types.md#$JOB:ADD)
- To make full use of multi-instance jobs, use Job Instance Properties. Refer to [Multi-Instance Jobs](../operations/job-names.md#multi-instance-jobs)

**Primary Machine**: Defines a single machine for the job to run on. If unavailable at run time, the job cannot run unless Alternate machines are configured. A job with a Primary Machine cannot also use a Machine Group.

**Alternate Machines**: Defines up to three alternate machines. At run time, SAM checks whether the Primary Machine is available; if it is down, SAM attempts to run the job on an Alternate Machine.

**Machine Group Selection**: Defines the Machine Group the job runs on. A job using a Machine Group cannot also use a Primary Machine. Two options apply:

**Run on Least Tasked Machine (default)**: OpCon selects the least tasked machine. Useful for failover and workload balancing.

**Run on each Machine**: OpCon runs the job on every machine in the group.

- When built and qualified, OpCon creates a copy of the job for each machine, named: `Job Name_Machine Name`
- If predefined instances exist, each instance is created for each machine, named: `Job Name_First Property Value_Machine Name`

**Job Type Details**: Depend on the selected Job Type.

**Job Automation Components**: Fully defined in [Job Automation Components](../job-components/overview.md).

### Advanced Failure Criteria

Advanced Failure Criteria sets conditions for determining if a job should Finish OK or Fail on supported platforms. When defined, it overrides the Basic Failure Criteria. SAM processes these criteria after receiving a completion message from the agent.

- **Comparison Operator**: The operator used to compare the job's exit code to the failure criteria
  - Valid Values: Range, Equal To, Not Equal To, Less Than, Less or Equal, Greater Than, Greater and Equal
- **Value**: The value compared to the job's actual exit code
  - Valid Values: -2147483648 to 2147483647
- **End Value**: The upper bound when the operator is "Range"
  - Valid Values: -2147483648 to 2147483647
- **Result**: The resulting job status when the criteria evaluates as true. Set only on the first group; applies to all remaining groups
  - Valid Values: Finish OK, Fail
- **And/Or**: Defines how multiple criteria strings are evaluated together
  - Valid Values: And, Or
- **Anything Else**: The result when the exit code falls outside the advanced criteria comparisons. Automatically set to the opposite of the Result field

## Job History

Job Master History contains a job's history, including token replacement values, detailed job messages, agent feedback, and other information. For viewing history, refer to [Using History Management](../Files/UI/Enterprise-Manager/Using-History-Management.md). For maintaining history records, refer to [Job History Cleanup](../utilities/Command-line-Utilities/Job-History-Cleanup.md).

OpCon stores job history in two tables. SAM automatically stores history to the primary table as each job completes. Periodically, the history cleanup process moves records to the archive table. Both tables are viewable from the History Management tool in the EM.

- Basic History Information:
  - **Schedule Date**: The date of the Daily schedule for which the job run
  - **Job Started**: The date and time the job started (24-hour format, 00:00)
  - **Job Ended**: The date and time the job ended (24-hour format, 00:00)
  - **Run Time (min)**: How long the job ran, in minutes
  - **Machine Name**: The machine on which the job run. For "run on each machine" jobs, displays once per copy
  - **Final Job Status**: The completion status of the job
  - **Exit Description**: Termination details for the job. Maximum 255 characters displayed
  - **Ran as job Name**: The job name as it appeared in the daily
    - Top-level schedules show the full Job Instance Name
    - Subschedules or multi-instance schedules use the format: Schedule Instance Name:Job Instance Name
- Detailed History Information includes token replacement values, detailed job messages, agent feedback, and other job information

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Schedule Name | Defines the name for the schedule containing the job | — | up to 64 characters.  - Invalid characters for all Job Typ |
| Job Name | Defines the name of the job. | — | up to 64 characters.  - Invalid characters for all Job Typ |
| Job Type | Defines the type of job. | — | — |
| Job Sub-Type | Defines platform-specific sub-types. | — | — |
| Disable Build | Controls whether SMASchedMan reviews the job's frequencies during a build. | — | — |
| Allow Multi-Instance | Determines if the job can have multiple instances on the same schedule date | — | — |
| Primary Machine | Defines a single machine for the job to run on. | — | — |
| Alternate Machines | Defines up to three alternate machines. | — | — |
| Machine Group Selection | Defines the Machine Group the job runs on. | — | — |
| Run on Least Tasked Machine (default) | OpCon selects the least tasked machine. | — | — |
| Run on each Machine | OpCon runs the job on every machine in the group | — | — |
| Job Type Details | Depend on the selected Job Type | — | — |
| Job Automation Components | Fully defined in Job Automation Components | — | — |
| Comparison Operator | The operator used to compare the job's exit code to the failure criteria | — | — |
| Value | The value compared to the job's actual exit code | — | — |
| End Value | The upper bound when the operator is "Range" | — | — |
| Result | The resulting job status when the criteria evaluates as true. | — | — |
| And/Or | Defines how multiple criteria strings are evaluated together | — | — |
| Anything Else | The result when the exit code falls outside the advanced criteria comparisons. | — | — |
## FAQs

**Q: Where must a job be defined before it can run?**

All jobs must first be entered into the Job Master tables. Each job must belong to a schedule, and the schedule must already be defined before a job can be added to it.

**Q: Does changing a job name affect its history?**

Yes. If a Job Name is changed, the history recorded under the previous name is no longer visible for that job.

**Q: Can a job use both a Primary Machine and a Machine Group?**

No. A job must use either a Primary Machine (with optional Alternate Machines) or a Machine Group — not both simultaneously.

**Q: What happens to a job with Disable Build set to True?**

SMASchedMan ignores the job during automatic schedule builds. The job can still be added manually to a daily schedule or via a `$JOB:ADD(HLD)` event.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Null Job**: A job type that performs no execution on any platform. Null jobs are used to hold dependencies, trigger OpCon events, and keep schedules open after all other jobs complete.

**Master Tables**: The OpCon database tables that hold the permanent definitions of schedules and jobs. Changes to master tables affect all future schedule builds.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Access Code**: A security label applied to jobs and schedules in OpCon. Users must have the matching access code privilege to view or manage items with that label.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.
