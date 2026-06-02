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
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Job Information

The **Job Information** dialog displays details about the daily copy of a selected job. You can open it from the **List**, **Matrix**, **Gantt**, or **PERT** view by double-clicking a job or by right-clicking a job and selecting **Job Information**. Right-click any field and select **Copy** to copy its value to the clipboard.

The dialog includes a **Refresh** button to reload current job data without closing the dialog.

## Dialog fields

The top section of the dialog displays the following read-only fields:

- **Schedule Date**: The date the job was scheduled to run.
- **Parent Schedule Name**: The name of the schedule containing the selected job.
- **Job Name**: The name of the selected job.
- **Job Status**: The current status of the selected job.
- **Start Machine**: The agent running the selected job. Before the job runs, this shows the machine group name if one is defined. After submission, it shows the specific agent processing the job.
- **Job Type**: The job type of the selected job.
- **Department**: The department under which the selected job runs.
- **Priority**: The priority of the selected job as defined in the frequency.
- **Frequency**: The frequency at which this job runs.
- **Scheduled Server Time**: The date and time the job is scheduled to run.
- **Estimated Run Time (min)**: The estimated run time of the selected job.
- **Server Start Time**: The actual date and time the job started on the OpCon server.
  - A clock indicator appears next to an estimated start time when the job has not yet started.
  - The actual start time appears without the clock indicator once the job has started.
  - Hovering over **Server Start Time** shows a tooltip with:
    - **Local Start Time**: The time calculated for the job to start where Enterprise Manager is running.
    - **Agent Start Time**: The estimated start time based on the agent machine where the job will most likely run.
- **Server End Time**: The date and time the job ended.
  - A clock indicator appears next to an estimated end time when the job has not yet ended.
  - The actual end time appears without the clock indicator once the job has ended.
- **Real Elapsed Run Time (hh:mm)**: Displays once the job has finished.
- **Late to Start Time**: The time at which the job is considered late to start, offset from the job start offset.
- **Late to Finish Time**: The time at which the job is considered late to finish, offset from the job start offset.
- **Maximum Run Time (min)**: The maximum run time in minutes for the job.
- **Latest Start Offset**: The positive number of hours and minutes offsetting the latest start time from the schedule start time.
- **Incident Ticket ID**: The incident ticket ID associated with the job. If a ticket URL exists, the ID is a link to more information. If a name for the incident management system is configured in [Server Options](../../../administration/server-options.md#general-settings), the **Incident Ticket ID** label is replaced by that configured value.

## Tabs

The dialog contains the following tabs:

| Tab | Description |
|---|---|
| **Job Dependencies** | Displays all jobs the selected job depends on, including dependency type, schedule date, schedule name, job name, current status, and options. Satisfied dependencies appear in blue; unsatisfied dependencies appear in red. Double-click a listed job to open its **Job Information** dialog. |
| **Th/Rs Dependencies** | Displays all threshold and resource dependencies, including the threshold/resource name, operator, required value, and current value. Satisfied dependencies appear in blue; unsatisfied dependencies appear in red. Double-click a threshold dependency to open a dialog showing jobs that update that threshold. |
| **Exp Dependencies** | Displays any expression dependencies related to the selected job. |
| **Th/Rs Update** | Displays threshold and resource updates for the selected job, including thresholds or resources, values, and job status. |
| **Events** | Displays events for the selected job, including the trigger, what to match, and the event user. |
| **SubSequent Jobs** | Displays all jobs that depend on the selected job, including schedule date, schedule name, and job name. Double-click a job to open its **Job Information** dialog. |
| **Documentation** | Displays job documentation and frequency documentation for the selected job. Hyperlinks may be included. For details, refer to [Entering and Opening Hyperlinks in Documentation Frame](Entering-and-Opening-Hyperlinks.md). |
| **Tags** | Displays all job and frequency tags associated with the selected job. |
| **Configuration** | Displays read-only platform-specific configuration details and properties for the selected job. |

## View job information

To view job information, complete the following steps:

1. Select **List** under the **Operation** topic.
2. Select the **arrow** to expand the specific **date**.
3. Select the **arrow** to expand the specific **schedule**.
4. Double-click the **job**, or right-click the **job** and select **Job Information**.

   **Result:** The **Job Information** dialog opens.

5. Review the fields in the top section.
6. *(Optional)* Select a tab to view additional information.
7. *(Optional)* Double-click a **dependent job** on the **Job Dependencies** tab to view its job information.
8. *(Optional)* Double-click a **subsequent job** on the **SubSequent Jobs** tab to view its job information.
9. Select **OK** to close the dialog.
