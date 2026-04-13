---
title: Accessing Job Summary
description: "The Operations module allows you to access key information about the daily copy of a selected job."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Accessing Job Summary

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Operations** module allows you to access key information about the daily copy of a selected job.

In **Operations**, Daily job information is provided as a job summary that may include any of the following fields:

:::note
Fields are hidden if data is unavailable or if the user lacks the appropriate privileges to view that data.
:::

- **Schedule Date**: The date of the schedule containing the selected job
- **Schedule Path**: The path of the schedule containing the selected job
- **Schedule Name**: The name of the schedule containing the selected job
- **Job Name**: The name of the selected job
- **Documentation**: User-defined information associated with the selected job
- **Department**: The department under which the selected job runs
- **Access Code**: The access code name assigned to the selected job
- **Incident Ticket**: The incident ticket ID associated with the selected job
- **Type**: The job type of the selected job
- **Priority**: The priority of the selected job as defined in the frequency
- **Start Agent**: The Agent machine that runs the selected job
- **Start Agent Status**: The current status of the Agent machine, displayed as a status icon
- **Schedule Status**: The current status of the schedule containing the selected job
- **Job Status**: The current status of the selected job
- **Job Exit Code**: The exit code (also referred to as the Return Code) returned when the selected job terminated
- **Details Messages**: Termination details for the selected job in the event of a failure
- **Change Reason**: The reason provided for a manual status change of the selected job
- **Programmed Start Time**: The time at which the operator programmed the job to start for the applicable frequency
- **Programmed End Time**: The expected end time, calculated as the expected run time added to the programmed start time
- **Latest Start Time**: The positive hours and minutes offset from the schedule start time used to determine when a job goes under Missed Start Time
- **Expected/Effective Start Time**: The time the selected job is expected to start
- **Late to Start Time**: The positive hours and minutes offset from the job Start Offset for the Late to Start time
- **Expected/Effective End Time**: The time the selected job is expected to end (real or estimated)
- **Late to Finish Time**: The positive hours and minutes offset from the job Start Offset for the Late to Finish time
- **Start Time**: The actual time the selected job started on the OpCon server. An asterisk (\*) indicates an estimated start time if the job has not yet started
- **Duration**: The amount of time the selected job ran, in minutes
- **End Time**: The actual time the selected job ended. An asterisk (\*) indicates an estimated end time if the job has not ended
- **Flag when it is a recurrent job**: Indicates the selected job is scheduled to run at regular intervals and/or absolute times throughout the day
- **Job Tags**: Job- and/or frequency-related labels or bookmarks associated with the selected job

## Time Representations in Job Summary

Time values may include icons that indicate special conditions:

- ![Job Summary Late to Start Time comes after Start Time Icon](../../../Resources/Images/SM/JobSummaryTimeRep3.png "Job Summary Late to Start Time comes after Start Time Icon") - Late to Start Time is after the Start Time. Hover over the icon to display the Late to Start Time as a tooltip
- ![Job Summary Late to Start Time comes before Start Time Icon](../../../Resources/Images/SM/JobSummaryTimeRep4.png "Job Summary Late to Start Time comes before Start Time Icon") - Late to Start Time is before the Start Time. Hover over the icon to display the Late to Start Time as a tooltip
- ![Job Summary Estimated Time Graphic](../../../Resources/Images/SM/JobSummaryTimeRep2.png "Job Summary Estimated Time Graphic") - The value is an estimated time
- ![Job Summary Latest Start Time comes after Start Time Graphic](../../../Resources/Images/SM/JobSummaryTimeRep1.png "Job Summary Latest Start Time comes after Start Time Graphic") - Latest Start Time is before the Start Time

To access job summary, complete the following steps:

1. Select the **Processes** button at the top-right of the **Operations Summary** page
2. Ensure that both the **Date** and **Schedule** toggle switches are enabled (green) so you can make your date and schedule selection
3. Select the desired **date(s)** to display the associated schedule(s)
4. Select one or more **schedule(s)** in the list
5. Select one **job** in the list. Your selection displays in the [status bar](SM-UI-Layout.md#Status) at the bottom of the page as a breadcrumb trail
6. Select the job record (e.g., 1 job(s)) in the status bar to display the **Selection** panel with the **Job Summary** tab in focus
7. Select the **Refresh** button if the panel has been open for a lengthy period of time
8. Close the **Selection** panel when done

:::note
The job summary can also be accessed in PERT View. For more information, refer to [PERT View Job Summary Access](Using-PERT-View.md#PERT9).
:::

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Accessing Daily Job Definition](Accessing-Daily-Job-Definition.md)
- [Accessing Job Executions History](Accessing-Job-Executions-History.md)
- [Using PERT View](Using-PERT-View.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Schedule Date | The date of the schedule containing the selected job | — | — |
| Schedule Path | The path of the schedule containing the selected job | — | — |
| Schedule Name | The name of the schedule containing the selected job | — | — |
| Job Name | The name of the selected job | — | — |
| Documentation | User-defined information associated with the selected job | — | — |
| Incident Ticket | The incident ticket ID associated with the selected job | — | — |
| Type | The job type of the selected job | — | — |
| Priority | The priority of the selected job as defined in the frequency | — | — |
| Start Agent | The Agent machine that runs the selected job | — | — |
| Start Agent Status | The current status of the Agent machine, displayed as a status icon | — | — |
| Schedule Status | The current status of the schedule containing the selected job | — | — |
| Job Status | The current status of the selected job | — | — |
| Job Exit Code | The exit code (also referred to as the Return Code) returned when the selected job terminated | — | — |
| Details Messages | Termination details for the selected job in the event of a failure | — | — |
| Change Reason | The reason provided for a manual status change of the selected job | — | — |
| Programmed Start Time | The time at which the operator programmed the job to start for the applicable frequency | — | — |
| Programmed End Time | The expected end time, calculated as the expected run time added to the programmed start time | — | — |
| Latest Start Time | The positive hours and minutes offset from the schedule start time used to determine when a job goes under Missed Start Time | — | — |
| Expected/Effective Start Time | The time the selected job is expected to start | — | — |
| Late to Start Time | The positive hours and minutes offset from the job Start Offset for the Late to Start time | — | — |
| Expected/Effective End Time | The time the selected job is expected to end (real or estimated) | — | — |
| Late to Finish Time | The positive hours and minutes offset from the job Start Offset for the Late to Finish time | — | — |
| Start Time | The actual time the selected job started on the OpCon server. | — | — |
## FAQs

**Q: How many steps does the Accessing Job Summary procedure involve?**

The Accessing Job Summary procedure involves 8 steps. Complete all steps in order and save your changes.

**Q: What does Accessing Job Summary cover?**

This page covers Time Representations in Job Summary.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Access Code**: A security label applied to jobs and schedules in OpCon. Users must have the matching access code privilege to view or manage items with that label.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
