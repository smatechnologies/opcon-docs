---
title: SubSchedule Information
description: "The SubSchedule Information dialog provides details about the daily copy of a selected Container job and its subschedule."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-05-29
doc_type: reference
---

# SubSchedule Information

## What Is It?

The **SubSchedule Information** dialog provides details about the daily copy of a selected Container job and its subschedule. To open it, right-click a subschedule in the **List**, **Matrix**, or **PERT** view and select **SubSchedule Information**.

The dialog has two areas:

- **Sub-Schedule Parts**: A tree at the top of the dialog that shows the Container job and the subschedule it runs. Select the Container job to display the **Job Container Details** tab, or select the subschedule to display the **Schedule Details** tab.
- A tabbed area below the tree that contains the **Job Container Details** and **Schedule Details** tabs.

Select **OK** to close the dialog.

## Job Container Details Tab

The **Job Container Details** tab displays information about the selected Container job.

| Field | Description |
|---|---|
| **Schedule Date** | The date the subschedule was scheduled to run. |
| **Parent Schedule Name** | The name of the schedule that contains the selected Container job. |
| **Job Name** | The name of the selected Container job. |
| **Job Status** | The current status of the selected Container job. |
| **Job Type** | The job type. For a subschedule, this is a Container job. |
| **Department** | The department under which the selected subschedule runs. |
| **Priority** | The priority of the selected subschedule as defined in the frequency. |
| **Frequency** | The frequency at which this subschedule runs. |
| **Scheduled Time** | The expected start time of the parent schedule. |
| **Estimated Run Time (min)** | The estimated run time of the selected job. |
| **Start Time** | An asterisk (`*`) indicates the expected start time. No asterisk indicates the actual start time. |
| **End Time** | An asterisk (`*`) indicates the subschedule has not finished and shows the estimated end time. No asterisk indicates the finished time. |
| **Real Elapsed Run Time (hh:mm)** | The subschedule's real elapsed run time after it finishes. |

The **Job Container Details** tab also contains the following sub-tabs:

| Sub-tab | Description |
|---|---|
| **Job Dependencies** | Lists all jobs the selected job depends on, including dependency type, schedule date, schedule name, job name, status, and options. Satisfied dependencies display in blue; unsatisfied dependencies display in red. Select a job to open its **Job Information** dialog. |
| **Th/Rs Dependencies** | Lists all threshold and resource dependencies, including name, operator, required value, and current value. Satisfied dependencies display in blue; unsatisfied dependencies display in red. Select a threshold dependency to resolve it manually. |
| **Events** | Lists post-process events, thresholds, values, and job status for the selected subschedule. |
| **SubSequent Jobs** | Lists all jobs dependent on the selected job, including schedule date, schedule name, and job name. Select a job to open its information. |
| **Documentation** | Displays documentation for the subschedule, including any hyperlinks. See [Entering and Opening Hyperlinks in Documentation Frame](Entering-and-Opening-Hyperlinks.md). |
| **Configuration** | Reconfigures platform-specific details and reviews advanced job information. |

## Schedule Details Tab

The **Schedule Details** tab displays information about the selected subschedule.

| Field | Description |
|---|---|
| **Schedule Date** | The date the subschedule was scheduled to run. |
| **Schedule Name** | The full Schedule Name Identifier, a concatenation of the parent schedule, Container job name, and referenced subschedule. |
| **Status** | The current status of the selected subschedule. |
| **Start Time** | An asterisk (`*`) indicates the expected start time. No asterisk indicates the start time as defined in the Schedule Master. |
| **End Time** | Displays *Not Finished* if incomplete; displays the finished time when complete. |

The **Schedule Details** tab also contains the following sub-tabs:

| Sub-tab | Description |
|---|---|
| **Post Processes** | Lists post-process events, thresholds, values, and job status for the selected subschedule. |
| **Documentation** | Displays documentation for the subschedule, including any hyperlinks. See [Entering and Opening Hyperlinks in Documentation Frame](Entering-and-Opening-Hyperlinks.md). |
| **Configuration** | Reconfigures platform-specific details and reviews advanced job information. |

## Opening SubSchedule Information

To open the SubSchedule Information dialog, complete the following steps:

1. Select **List** under the **Operation** topic.
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific date.
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific schedule.
4. Right-click the schedule that contains the Container job.
5. Select **SubSchedule Information** from the menu.
6. *(Optional)* Select the **Job Container Details** tab to review the Container job.
7. *(Optional)* Select the **Schedule Details** tab to review the subschedule.
8. Select **OK** to close the dialog.

**Result:** Enterprise Manager displays the SubSchedule Information dialog for the selected subschedule.

## Glossary

**Subschedule**: A schedule that runs as a child of a Container job, allowing hierarchical, nested automation where a parent schedule can start and monitor an entire child schedule.

**Container Job**: A job type that runs a subschedule. Container jobs enable hierarchical schedule structures and support properties and events just like standard jobs.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control when jobs run. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at run time.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent runs and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

## Related Topics

- [Entering and Opening Hyperlinks in Documentation Frame](Entering-and-Opening-Hyperlinks.md)
