---
title: Accessing Job Executions History
description: "In the Operations module, you can access all past runs of a job and view job output for a selected date range."
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

# Accessing Job Executions History

In the **Operations** module, you can view all past runs of a job, including run times and termination status, for a selected date range. A **Run-Time Trend** chart at the bottom of the page visualizes runtime across all returned runs.

![Job Executions History in Solution Manager](../../../Resources/Images/SM/Job-Executions-History.png "Job Executions History in Solution Manager")

## Job Executions History fields

The executions history table displays the following information for each run:

| Field | Description |
|---|---|
| **Date** | The date of the Daily Schedule for which the job ran |
| **Start Time** | The actual date and time the job started (24-hour format) |
| **End Time** | The date and time the job ended (24-hour format) |
| **Runtime** | The amount of time the job ran, in minutes |
| **Schedule** | The name of the Schedule containing the job |
| **Job** | The name of the job |
| **Agent** | The name of the Agent on which the job ran. For jobs that run on each machine in a group, the machine name displays for each copy of the job that ran |
| **Termination Status** | The completion status of the job |
| **Exit Code** | The numeric value returned when the job terminated |

Select a column heading to sort the table ascending; select it again to sort descending.

## View job executions history

To view job executions history, complete the following steps:

1. Select the **Processes** button at the top-right of the **Operations Summary** page.
2. Ensure that both the **Date** and **Schedule** toggle switches are enabled so you can make your date and schedule selection.
3. Select the desired date or dates to display the associated schedules.
4. Select one or more schedules in the list.
5. Select one job in the list. Your selection displays in the [status bar](SM-UI-Layout.md#Status) at the bottom of the page as a breadcrumb trail.
6. Select the job record (for example, **1 job**) in the status bar to display the **Selection** panel.
7. Select the **Job Executions History** button ![Job Executions History Button](../../../Resources/Images/SM/Job-Executions-History-Button.png "Job Executions History Button") at the top-left corner of the panel. By default, the history for the selected date displays.
8. Enter a date in the **From** and **To** fields at the top of the page, or select the calendar button to pick a date.
9. Select the **Apply** button to display results. If multiple runs exist for the date range, the **Run-Time Trend** chart displays below the table.
10. Select a job executions history record and right-click it to access available job output in the **Selection** panel to the right.

    :::note
    The job output record for the historical instance must still exist on the target platform for this operation to succeed.
    :::

11. Select the **Refresh** button to fetch existing or new job output files for the selected job. The button toggles to **Cancel**, which you can select at any time to stop the refresh.
12. Select the **Close** button to close the panel.

:::note
Job execution history can also be accessed in PERT View. For more information, refer to [PERT View Job Executions History Access](Using-PERT-View.md#PERT11).
:::

## Related topics

- [Accessing Job Summary](Accessing-Job-Summary.md)
- [Using PERT View](Using-PERT-View.md)
