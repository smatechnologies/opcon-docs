---
title: Performing Bulk Job Status Updates (Date Level)
description: "The Operations module allows you to perform mass job status updates at the date level."
product_area: Solution Manager
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

# Performing Bulk Job Status Updates (Date Level)

The **Operations** module allows you to change the status of all jobs for one or more dates at the same time using the **Bulk Job Status Update** tab in the **Selection** panel.

## Performing a bulk job status update at the date level

To perform a bulk job status update at the date level, complete the following steps:

1. Select the **Processes** button at the top-right of the **Operations Summary** page.

2. Select the desired date or dates in the list. Your selections appear in the [status bar](SM-UI-Layout.md#Status) at the bottom of the page as a breadcrumb trail.

3. Select the date record in the status bar to open the **Selection** panel with the **Bulk Job Status Update** tab in focus.

:::note
As an alternative, you can right-click any selected date to open the **Selection** panel.
:::

4. Select one of the following options from the **Change all Job Statuses to** list:

   | Option | Behavior |
   |---|---|
   | **Cancel** | Cancels all jobs for the selected dates. Dependent jobs do not have those dependencies met. |
   | **Hold** | Suspends processing of all jobs for the selected dates. |
   | **Mark Failed** | Marks all jobs for the selected dates as Failed. |
   | **Mark Finished OK** | Marks all jobs for the selected dates as Finished OK. |
   | **Mark Fixed** | Marks all jobs for the selected dates as Fixed. |
   | **Mark Under Review** | Marks all jobs for the selected dates as Under Review. |
   | **Release** | Places all held jobs back into a Qualifying state. Jobs start as soon as all dependencies are met. |
   | **Restart** | Places all jobs back in a Qualifying state. Jobs start as soon as all dependencies are met. |
   | **Restart on Hold** | Places all jobs in an On Hold state on restart. |
   | **Skip** | Places all jobs in a Job to be Skipped state until they qualify to start. When jobs qualify, they are skipped and dependencies of subsequent jobs are met. |

5. If the selected action is **Restart** or **Restart on Hold** and the date selection contains Container jobs, the **Job Containers Action** frame appears. Select the action to apply to Container jobs:

   | Action | Behavior |
   |---|---|
   | **Restart** | Restarts the Container job and its subschedule jobs one level deep. Nested Container jobs are not affected. |
   | **Rebuild** | Restarts the Container job and deletes the associated subschedule. SAM rebuilds the subschedule and restarts all its jobs. |
   | **None** | Restarts the Container job only; the subschedule is untouched. The Container job closes immediately. |
   | **Custom** | Assigns a separate action to each Container job individually. Only available when multiple Container jobs exist in the selection. |

   When multiple Container jobs are present, a global **Job Containers Action** selector appears above the individual job list. Selecting **Restart**, **Rebuild**, or **None** applies that action to all Container jobs. Selecting **Custom** expands the list so you can assign an action to each Container job separately. When multiple dates are selected, the **Custom** view groups Container jobs by date.

:::note
To collapse the individual Container job list, select any option other than **Custom** in the **Job Containers Action** selector.
:::

6. Select the options in the **Job To Update** frame for the job statuses to include in the update. Selections act as a status filter — only jobs currently in the selected statuses are affected.

   :::note
   For more on job statuses and allowed changes, refer to [Schedule and Job Status Descriptions and Allowed Status Changes](../../../operations/status-descriptions.md).
   :::

7. *(Optional)* Enter or select a change status reason.

:::note
The **Change Status Reason** field may display previously entered reasons depending on application configuration.
:::

8. Select **Apply** to apply the job status change.

9. Close the **Selection** panel when done.

**Result:** The status change is applied to all jobs matching the selected statuses on the selected dates.

:::note
For more on job status change commands, refer to [Schedule and Job Status Change Commands](../../../operations/status-change-commands.md).
:::

## Related topics

- [Performing Schedule Status Changes](Performing-Schedule-Status-Changes.md)
- [Performing Job Status Changes](Performing-Job-Status-Changes.md)
- [Performing Agent Status Updates](Performing-Agent-Status-Updates.md)
- [Viewing Job Output](Viewing-Job-Output.md)
- [Viewing Job Configuration](Viewing-Job-Configuration.md)
- [Using PERT View](Using-PERT-View.md)
- [Managing Daily Processes](Managing-Daily-Processes.md)
