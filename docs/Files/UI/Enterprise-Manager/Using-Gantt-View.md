---
title: Using Gantt View
description: "The Gantt view displays the estimated length and chronological order of jobs by schedule."
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

# Using Gantt View

The **Gantt** view displays the estimated length and chronological order of jobs by schedule. For an accurate display, the average run time of jobs must be calculated frequently by the **SMA_JOBAVG** utility. Refer to [SMA Job Average](../../../objects/schedules.md#smautility-schedule) in the **Concepts** online help. To change Gantt preferences, refer to [Setting Preferences for Gantt](Preferences-for-Gantt.md).

The **Gantt** screen displays schedule dates and all jobs in start time order for a selected day. Lines connect dependent jobs when dependencies exist.

:::note
The **Gantt** screen displays only first-level schedule jobs. Individual jobs on a subschedule are not shown, but the Container job is.
:::

## Gantt View Toolbar

The **Gantt** view toolbar provides the following actions:

| Button | Description |
|---|---|
| **Listen for selection changes in other views** | Activates synchronization so the view updates when you select a schedule or date in another view. Must be active to display schedule and job information. |
| **Find job** | Opens the **Find a Job** dialog showing jobs from the currently displayed schedule. |
| **Show dependencies** | Toggles dependency lines between jobs in the chart. |
| **Mode plan** | Activates Plan Mode, which allows you to move and resize job bars. Refresh and selection listening are paused while Plan Mode is active. |
| **Jump to earliest job** | Scrolls the chart to the earliest job in the current view. |
| **Follow the current Date** | Centers the chart on the current time and keeps it centered as time advances. |
| **Zoom in** | Allocates more time to each column, showing less total time on screen. |
| **Zoom out** | Allocates more time to the entire screen display. Continued zoom out changes the column time allocation from hours to days. |

![Gantt View toolbar](../../../Resources/Images/EM/EMgantttoolbar.png "Gantt View toolbar")

## Enabling Cross-View Synchronization

To display schedule and job information in the Gantt view, you must activate synchronization between views.

To enable synchronization, complete the following steps:

1. Select the **Listen for selection changes in other views** button on the **Gantt** toolbar.
2. In the source view (for example, **Daily list** or **Matrix**), select the **Send the current selection to other views** button.

**Result:** When you select a schedule or job in the source view, the **Gantt** view updates to reflect that selection.

## Gantt View Right-click Menu

Right-clicking in the **Gantt** view shows the following menu items:

- **Zoom in**: Allocates more time to each column, showing less total time on screen.
- **Zoom out**: Allocates more time to the entire screen display. Continued zoom out changes the column time allocation from hours to days.
- **Find Job**: Opens the **Find a Job** dialog showing jobs from the currently displayed schedule. This item appears only when jobs are loaded.

Right-clicking on a job bar shows job-related menu items. Refer to [Job Right-click Menu](Working-with-Operation.md) for more detail.

## Dependency Line Colors

When **Show dependencies** is active, the **Gantt** view draws colored lines between dependent jobs:

| Color | Dependency type |
|---|---|
| Black | Requires |
| Blue | After |
| Yellow | Other |
| Red | Conflict |

## Related Topics

- [Using Plan Mode](Using-Plan-Mode.md)
- [Synchronizing Data between List and Gantt Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
- [Performing Job Procedures](Performing-Job-Procedures-Gantt.md)
