---
title: Container Jobs and SubSchedules
description: "Because subschedules are the 'program' the Container job runs, it is important to understand the connection between the Container and the subschedule."
product_area: Operations
audience: Operations Staff, System Administrator
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Operations Staff
  - System Administrator
  - Schedules
last_updated: 2026-03-18
doc_type: conceptual
---

# Container Jobs and SubSchedules

A Container job runs a subschedule as its "program." Understanding the relationship between the two is essential for designing, operating, and troubleshooting nested schedule workflows.

For information on defining a Container job, refer to [Container Job Type](../job-types/container.md). For subschedule naming conventions, refer to [SubSchedules](./schedule-names.md#SubSched).

## How a Container Job and Its SubSchedule Interact

When OpCon builds and runs a Container job with a subschedule, the following sequence occurs:

1. Before the Container job qualifies to run, its subschedule waits in **Wait Container Job** status until the Container job starts it.
2. When the Container job qualifies to run, SAM sets the subschedule to **In Process** status and the Container job to **Running** status.
3. The Container job remains in **Running** status until all jobs on the subschedule complete.
4. When the subschedule completes and all jobs on it finish with a status of **Finished OK**, the Container job also finishes with a status of **Finished OK**.
5. If any job on the subschedule fails, the Container job fails.

## Hold and Release Behavior

When a parent schedule is placed on hold or released, the following rules apply to its Container jobs and subschedules:

- When the parent schedule is placed **On Hold**, all child subschedules in a status of **Wait Container Job** or **In Process** are placed in **Parent Hold** status. The Container job stays in its current status.
- When the parent schedule is released, only subschedules currently in **Parent Hold** status are released. A subschedule placed **On Hold** independently before the parent hold is not affected by releasing the parent.

## Restarting a Container Job

You can restart a Container job at the schedule level or at the job level.

**Restarting at the schedule level**

When you restart a Container job at the schedule level, the graphical interfaces display a message that indicates:

- Container jobs exist within the schedule.
- Restarting Container jobs causes all jobs on their completed subschedules to restart.
- Incomplete subschedules continue processing their current jobs.

**Restarting at the job level**

When you restart a Container job at the job level, the graphical interfaces present a choice to:

- Restart all jobs on the subschedule
- Rebuild the subschedule
- Reconnect to the subschedule already in process

## Subschedule Jobs and Status Inheritance

When a parent Container job changes status, the following rules apply to jobs on its subschedule:

- If a subschedule job is built with a status of **To Be Skipped** and its parent Container job is restarted, the job is also restarted rather than remaining in **Skipped** status.
- If a subschedule job is built with a status of **On Hold** and its parent Container job is released, the job is also released rather than remaining in **On Hold** status.

## Resource Dependencies

Continuous recommends that Container jobs and their child subschedule jobs do not require the same resource. If both the Container job and a job inside its subschedule require the same resource, the Container job may consume the entire available quantity, preventing the subschedule jobs from ever acquiring that resource and causing the Container job to run indefinitely.

Decide where resource requirements apply — either at the Container job level or on the jobs in the subschedule — and do not configure the same resource at both levels.

:::tip Example
In the following scenario, the Container job and a job in its subschedule both need the same resource. The Container job starts but never finishes.

- `RESOURCEA` has a maximum of 10 available units.
- `Container1` requires 10 units of `RESOURCEA`.
- `ChildJob1` inside `Container1`'s subschedule requires 5 units of `RESOURCEA`.

**Result**: `ChildJob1` can never acquire the 5 units because `Container1` is using all 10 units until all jobs in the subschedule finish. All jobs can never finish because `ChildJob1` can never start.
:::

## Accessing a Container Job's Properties from the SubSchedule

When OpCon builds a subschedule, any Job Instance properties defined on the Container job are copied to the subschedule as Schedule Instance properties. Jobs on the subschedule can then reference these values using `[[SI.PropertyName]]` tokens.

:::tip Example
Every day several files arrive on a Windows machine, and each must be processed by the same three OpCon jobs.

1. The administrator creates a schedule named `ProcessFiles` with the subschedule option turned on.
2. On the new subschedule, the administrator creates three jobs. Each job uses the `[[SI.FileName]]` token as a command line parameter so the correct file is processed when the job runs. Each job is also given a frequency that qualifies for every day.
3. On a schedule named `MainProcess`, the administrator creates a Container job named `DailyFiles` that runs the `ProcessFiles` subschedule. The Container job has multi-instance turned on and is given a frequency of `OnRequest` with a past date selected. This prevents the Container job from being built automatically; instead, the Windows SMA Resource Monitor (SMARM) adds it when a file is detected.
4. SMARM is configured to watch for files and send events to OpCon. Each time a file arrives, SMARM sends the following event before passing it to the MSGIN directory (replacing `[[@FileName]]` with the actual file name):

    ```shell
    $JOB:ADD,[[$DATE]],MainProcess,DailyFiles,OnRequest,FileName=[[@FileName]]
    ```

5. When SAM processes the event, it adds the `DailyFiles` Container job to the current day's schedule with a Job Instance property of `FileName=<ActualFileName>`.
6. When the `DailyFiles` Container job qualifies to start, SAM requests a Schedule Build for the subschedule. The resulting subschedule name follows the format:

    ```
    MainProcess_DailyFiles_ActualFileName[ProcessFiles_ActualFileName]
    ```

7. When the jobs on the subschedule run, the `[[SI.FileName]]` tokens resolve to the actual file name.
:::

## FAQs

**Q: What is the relationship between a Container job and its subschedule?**

A Container job is the "parent" that runs a subschedule as its program. When the Container job qualifies to start, SAM sets the subschedule to **In Process** and the Container job to **Running**. The Container job finishes with **Finished OK** only if all jobs on the subschedule finish with **Finished OK**.

**Q: Can a Container job and its subschedule jobs share the same resource?**

Continuous recommends against this. If both the Container job and a job inside its subschedule require the same resource, the Container job may consume the entire resource limit, preventing subschedule jobs from ever starting and causing the Container job to run indefinitely.

**Q: How are Job Instance properties from a Container job made available to subschedule jobs?**

When OpCon builds the subschedule, any Job Instance properties on the Container job are copied to the subschedule as Schedule Instance properties. Subschedule jobs can then reference these using `[[SI.PropertyName]]` tokens.

## Glossary

**MSGIN**: A directory monitored by an Agent for incoming OpCon event files. Placing a properly formatted event file in MSGIN causes the Agent to forward it to SAM for processing.

**SMA Resource Monitor (SMARM)**: A Windows service that monitors files, counters, services, and processes on Windows machines. When a monitored condition is met, it sends OpCon events to trigger automation actions.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job run timing, and processes OpCon events.

**Subschedule**: A schedule that runs as a child process within a Container job, enabling hierarchical, nested workflow automation where a parent schedule triggers and monitors an entire child schedule.

**Container Job**: A job type that runs a subschedule. Container jobs enable hierarchical schedule structures and support properties and events just like standard jobs.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using `[[PropertyName]]` syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent execution and preventing resource contention.
