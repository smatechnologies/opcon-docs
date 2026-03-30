---
title: SubSchedule Information
description: "The SubSchedule Information dialog provides details about the daily copy of a selected Container job or subschedule."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# SubSchedule Information

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **SubSchedule Information** dialog provides details about the daily copy of a selected Container job or subschedule. Access it by right-clicking on a **subschedule** in the **List**, **Matrix**, or **PERT** views.

The **Job Container Details** tab includes:

- **Schedule Date**: The date the subschedule was scheduled to run
- **Parent Schedule Name**: The name of the schedule of the selected
    Container job.
- **Job Name**: The name of the selected Container job
- **Job Status**: The current status of the selected Container job
- **Job Type**: The job type; for a subschedule, this is a Container job
- **Department**: The department under which the selected subschedule runs
- **Priority**: The priority of the selected subschedule as defined in the frequency
- **Frequency**: The frequency at which this subschedule runs
- **Scheduled Time**: The expected start time of the parent schedule
- **Estimated Run Time (min)**: The estimated run time of the selected job
- **Start Time**: An asterisk (\*) indicates the expected start time; no asterisk indicates the actual start time
- **End Time**: An asterisk (\*) indicates the subschedule has not completed and shows the estimated end time; no asterisk indicates the finished time
- **Real Elapsed Run Time (hh:mm)**: The subschedule's real elapsed run time after it finishes
- **Job Dependencies Tab**: Lists all jobs the selected job depends on, including dependency type, schedule date, schedule name, job name, status, and options. Satisfied dependencies display in blue; unsatisfied in red. Select a job to open its **Job Information** dialog
- **Th/R Dependencies Tab**: Lists all threshold and resource dependencies, including name, operator, required value, and current value. Satisfied dependencies display in blue; unsatisfied in red. Select a threshold dependency to resolve it manually
- **Post Processes Tab**: Lists post-process events, thresholds, values, and job status for the selected subschedule
- **Subsequent Jobs Tab**: Lists all jobs dependent on the selected job, including schedule date, schedule name, and job name. Select a job to open its information
- **Documentation Tab**: Displays documentation for the subschedule, including any hyperlinks. Refer to [Entering and Opening Hyperlinks in Documentation Frame](Entering-and-Opening-Hyperlinks.md)
- **Configuration Tab**: Allows reconfiguration of platform-specific details and review of advanced job information. Follow Steps 1–6 of the [Getting Container Job or subschedule Information](#Getting) procedure, then follow the [Adding Job Configuration Parameters](#Adding) procedure starting at Step 6

The **Schedule Details** tab includes:

- **Schedule Date**: The date the subschedule was scheduled to run
- **Schedule Name**: The full Schedule Name Identifier — a concatenation of the parent schedule, Container job name, and referenced subschedule
- **Status**: The current status of the selected subschedule
- **Start Time**: An asterisk (\*) indicates the expected start time; no asterisk indicates the start time as defined in the Schedule Master
- **End Time**: Displays *Not Finished* if incomplete; displays the finished time when complete
- **Post Processes Tab**: Lists post-process events, thresholds, values, and job status for the selected subschedule
- **Documentation Tab**: Displays documentation for the subschedule, including any hyperlinks. Refer to [Entering and Opening Hyperlinks in Documentation Frame](Entering-and-Opening-Hyperlinks.md)
- **Configuration Tab**: Allows reconfiguration of platform-specific details and review of advanced job information. Follow Steps 1–6 of the [Getting Container Job or subschedule Information](#Getting) procedure, then follow the [Adding Job Configuration Parameters](#Adding) procedure starting at Step 6

## When Would You Use It?

- You need to provide details about the daily copy of a selected Container job or subschedule using The **SubSchedule Information** dialog

## Why Would You Use It?

- **Operational value**: Provides details about the daily copy of a selected Container job or subschedule

## Getting Container Job or subschedule Information

To get the information, complete the following steps:

1. Select on **List** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **schedule** that has the Container job
5. Select on **subschedule Information** from the menu
6. *(Optional)* Select the various **tabs** for added information about the *Job Container Details*
7. *(Optional)* Select the various **tabs** for added information about the *Schedule Details*
8. Select the **OK** button to close the **subschedule Information** dialog
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Schedule Date | The date the subschedule was scheduled to run | — | — |
| Parent Schedule Name | The name of the schedule of the selected | — | — |
| Job Name | The name of the selected Container job | — | — |
| Job Status | The current status of the selected Container job | — | — |
| Job Type | The job type; for a subschedule, this is a Container job | — | — |
| Priority | The priority of the selected subschedule as defined in the frequency | — | — |
| Scheduled Time | The expected start time of the parent schedule | — | — |
| Estimated Run Time (min) | The estimated run time of the selected job | — | — |
| Start Time | An asterisk (\*) indicates the expected start time; no asterisk indicates the actual start time | — | — |
| End Time | An asterisk (\*) indicates the subschedule has not completed and shows the estimated end time; no asterisk indicates the finished time | — | — |
| Real Elapsed Run Time (hh:mm) | The subschedule's real elapsed run time after it finishes | — | — |
| Job Dependencies Tab | Lists all jobs the selected job depends on, including dependency type, schedule date, schedule name, job name, status, and options. | — | — |
| Th/R Dependencies Tab | Lists all threshold and resource dependencies, including name, operator, required value, and current value. | — | — |
| Post Processes Tab | Lists post-process events, thresholds, values, and job status for the selected subschedule | — | — |
| Subsequent Jobs Tab | Lists all jobs dependent on the selected job, including schedule date, schedule name, and job name. | — | — |
| Documentation Tab | Displays documentation for the subschedule, including any hyperlinks. | — | — |
| Configuration Tab | Allows reconfiguration of platform-specific details and review of advanced job information. | — | — |
| Schedule Name | The full Schedule Name Identifier — a concatenation of the parent schedule, Container job name, and referenced subschedule | — | — |
| Status | The current status of the selected subschedule | — | — |
## FAQs

**Q: How many steps does the SubSchedule Information procedure involve?**

The SubSchedule Information procedure involves 8 steps. Complete all steps in order and save your changes.

**Q: What does SubSchedule Information cover?**

This page covers Getting Container Job or subschedule Information.

## Glossary

**Subschedule**: A schedule that runs as a child process within a Container job, allowing hierarchical, nested workflow automation where a parent schedule can trigger and monitor an entire child schedule.

**Container Job**: A job type that runs a subschedule. Container jobs enable hierarchical schedule structures and support properties and events just like standard jobs.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
