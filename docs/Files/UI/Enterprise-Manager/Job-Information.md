---
title: Job Information
description: "The Job Information dialog provides details about the daily copy of a selected job."
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

# Job Information

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Job Information** dialog provides details about the daily copy of a selected job. Access it by double-clicking a job or right-clicking and selecting **Job Information** in the **List**, **Matrix**, **Gantt**, or **PERT** view. Right-click and select **Copy** to copy fields to the clipboard.

The dialog contains the following information:

- **Schedule Date**: The date the job was scheduled to run
- **Parent Schedule Name**: The name of the schedule containing the selected job
- **Job Name**: The name of the selected job
- **Job Status**: The current status of the selected job
- **Start Machine**: The machine running the selected job. Before the job runs, this shows the machine group name if one is defined. After submission, it shows the specific machine processing the job
- **Job Type**: The job type of the selected job
- **Department**: The department under which the selected job runs
- **Priority**: The priority of the selected job as defined in the frequency
- **Frequency**: The frequency at which this job runs
- **Scheduled Server Time**: The date and time the job is scheduled to run
- **Estimated Run Time (min)**: The estimated run time of the selected job
- **Server Start Time**: The actual date and time the job started on the OpCon Server
  - A clock icon indicates an estimated start time when the job has not yet started
  - The actual start time appears without the clock once the job has started
  - Hovering over the displayed Server Start Time shows a tooltip with:
    - **Local Start Time**: The time calculated for the job to start where the EM is running
    - **Agent Start Time**: The estimated start time based on the agent machine where the job will most probably run
- **Server End Time**: The date and time the job ended
  - A clock icon indicates an estimated end time when the job has not yet ended
  - The actual end time appears without the clock once the job has ended
- **Real Elapsed Run Time (hh:mm)**: Displays once the job has finished
- **Late to Start Time**: The positive number of hours and minutes offsetting the Late to Start time from the job Start Offset
- **Late to Finish Time**: The positive number of hours and minutes offsetting the Late to Finish time from the job Start Offset
- **Maximum Run Time (min)**: The maximum run time in minutes for the job
- **Latest Start Offset**: The positive number of hours and minutes offsetting the latest start time from the schedule start time
- **Incident Ticket ID**: The incident ticket ID associated with a job. If a ticket URL exists, the ID is clickable and links to more information. If a name for the incident management system is configured in [Server Options](../../../administration/server-options.md#general), the **Incident Ticket ID** label is replaced by that value
- **Job Dependencies Tab**: Displays all jobs the selected job depends on, including dependency type, schedule date, schedule name, job name, current status, and options. Satisfied dependencies appear in blue; unsatisfied dependencies appear in red. Select a listed job to open its **Job Information** dialog
- **Th/Rs Dependencies Tab**: Displays all Threshold and Resource dependencies, including the Threshold/Resource name, Operator, required Value, and Current Value. Satisfied dependencies appear in blue; unsatisfied appear in red. Select a Threshold Dependency to resolve it manually
- **Exp Dependencies Tab**: Displays any Expression dependencies related to the selected job
- **Th/Rs Update Tab**: Displays threshold and resource updates for the selected job, including thresholds or resources, values, and job status
- **Events Tab**: Displays events for the selected job, including the trigger, what to match, and the event user
- **SubSequent Jobs Tab**: Displays all jobs dependent on the selected job, including schedule date, schedule name, and job name. Select a job to open its job information
- **Documentation Tab**: Displays documentation and frequency information for the selected job. Hyperlinks may be included. For details, refer to [Entering and Opening Hyperlinks in Documentation Frame](Entering-and-Opening-Hyperlinks.md)
- **Tags Tab**: Displays all job and frequency tags associated with the selected job
- **Configuration Tab**: Allows reconfiguration of platform-specific details and review of platform information for the selected job. Refer to [Adding Job Configuration Parameters](#Adding)

## Getting Job information

To get job information, complete the following steps:

1. Select on **List** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Select on the **job** or right-click on the **job** then select **Job Information**. The **Job Information** dialog displays
5. View the job information
6. *(Optional)* Select on a **dependent job** to view its job information
7. *(Optional)* Select on a **SubSequent job** to view its job information
8. Select the other tabs for additional information
9. Select the **OK** button to close the dialog

## Adding Job Configuration Parameters

To add configuration parameters, complete the following steps:

1. Select on **List** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **job**
5. Select **Job Information** from the menu. The **Job Information** dialog displays
6. Select the **Configuration** tab
7. Select **Available Property** in the parameter table
8. Select the **Add** button. The **Add** dialog displays
9. Enter the new *property value*

10. Select the **OK** button
11. Repeat Steps 8–10 to add additional property values
12. Select the **Update** button to save the property values, or select **Defaults** to reset to system defaults
13. Select the **OK** button to close the **Job Information** dialog

## Editing Job Configuration Parameters

To edit configuration parameters, complete the following steps:

1. Select on **List** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **job**
5. Select **Job Information** from the menu. The **Job Information** dialog displays
6. Select the **Configuration** tab
7. Select **Available Property** in the parameter table
8. Select the existing **available property** to change
9. Select the **Edit** button. The **Edit** dialog displays
10. Enter the *property value changes*
11. Select the **OK** button
12. Select the **Update** button to save the changes, or select **Defaults** to reset to system defaults
13. Select the **OK** button to close the **Job Information** dialog

## Removing Available Properties from Job Information

To remove properties from job information, complete the following steps:

1. Select on **List** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Right-click on the **job**
5. Select **Job Information** from the menu. The **Job Information** dialog displays
6. Select the **Configuration** tab
7. Select **Available Property** in the parameter table
8. Select the existing **Available Property** to remove
9. Select the **Remove** button
10. Select **Yes** to delete the property, or select **No** to cancel
11. Select the **OK** button to close the **Job Information** dialog

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Schedule Date | The date the job was scheduled to run | — | — |
| Parent Schedule Name | The name of the schedule containing the selected job | — | — |
| Job Name | The name of the selected job | — | — |
| Job Status | The current status of the selected job | — | — |
| Start Machine | The machine running the selected job. | — | — |
| Job Type | The job type of the selected job | — | — |
| Priority | The priority of the selected job as defined in the frequency | — | — |
| Scheduled Server Time | The date and time the job is scheduled to run | — | — |
| Estimated Run Time (min) | The estimated run time of the selected job | — | — |
| Server Start Time | The actual date and time the job started on the OpCon Server | — | — |
| Server End Time | The date and time the job ended | — | — |
| Real Elapsed Run Time (hh:mm) | Displays once the job has finished | — | — |
| Late to Start Time | The positive number of hours and minutes offsetting the Late to Start time from the job Start Offset | — | — |
| Late to Finish Time | The positive number of hours and minutes offsetting the Late to Finish time from the job Start Offset | — | — |
| Maximum Run Time (min) | The maximum run time in minutes for the job | — | — |
| Latest Start Offset | The positive number of hours and minutes offsetting the latest start time from the schedule start time | — | — |
| Incident Ticket ID | The incident ticket ID associated with a job. | — | — |
| Job Dependencies Tab | Displays all jobs the selected job depends on, including dependency type, schedule date, schedule name, job name, current status, and options. | — | — |
| Th/Rs Dependencies Tab | Displays all Threshold and Resource dependencies, including the Threshold/Resource name, Operator, required Value, and Current Value. | — | — |
| Exp Dependencies Tab | Displays any Expression dependencies related to the selected job | — | — |
| Th/Rs Update Tab | Displays threshold and resource updates for the selected job, including thresholds or resources, values, and job status | — | — |
| Events Tab | Displays events for the selected job, including the trigger, what to match, and the event user | — | — |
| SubSequent Jobs Tab | Displays all jobs dependent on the selected job, including schedule date, schedule name, and job name. | — | — |
## FAQs

**Q: How many steps does the Job Information procedure involve?**

The Job Information procedure involves 46 steps. Complete all steps in order and save your changes.

**Q: What does Job Information cover?**

This page covers Getting Job information, Adding Job Configuration Parameters, Editing Job Configuration Parameters.

## Glossary

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
