---
lang: en-us
title: Using Bar Chart View
description: "The Bar Chart view in Enterprise Manager displays daily schedule and job statistics grouped by job status. Use it to monitor workload at a glance and drill into specific days or schedules."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-06-01
doc_type: reference
---

# Using Bar Chart View

The **Bar Chart** view displays daily schedule statistics. Each bar represents a schedule for a given day, color-coded by job status. You can drill down from an overview of all days to a specific schedule, and open related charts or job lists from the context menu.

To adjust chart display preferences such as bar size, tube rendering, and sort order, see [Setting Preferences for Charts](Preferences-for-Charts.md).

## Prerequisites

Before the Bar Chart view updates in response to selections in other views, you must activate cross-view selection synchronization:

1. In the **Bar Chart** toolbar, select the **Listen Selection** button to enable the view to receive selections from other views.
2. In the source view (for example, **Daily list** or **Matrix**), select the **Send Selection** button to broadcast the current selection.

Both buttons must be active for the views to stay in sync.

## Bar Chart Toolbar

The **Bar Chart** toolbar provides the following buttons.

| Button | Description |
|---|---|
| **Listen Selection** | Toggles the view to listen for schedule and date selections made in other Enterprise Manager views. When active, the chart updates whenever another view broadcasts a selection. |
| **Drill up** | Returns the display to the parent level (for example, from a single schedule back to all days). Disabled when the chart is already at the top-level daily view. |
| **Open the job filter dialog** | Opens the job filter dialog, where you can filter the chart by job status, access code, department, and tag. When a filter is active, the view title appends **(Filtered)**. |
| **Change Chart between tube/bars** | Toggles the bar series between flat bars and 3D tube rendering. |
| **Show/Hide legend** | Shows or hides the chart legend. |
| **Render chart with depth** | Toggles the 3D depth effect on bars. |
| **Render chart translucent** | Toggles transparency on bar series. |
| **Transpose the chart** | Rotates the chart orientation. <!-- GAP: exact axis-swap direction (job statuses on horizontal vs vertical) unverified from source — source only exposes setTransposed(boolean) with no axis-label documentation --> |

![Bar Chart toolbar](../../../Resources/Images/EM/EMbarcharttoolbar.png "Bar Chart toolbar")

## Bar Chart Right-Select Menu

Right-selecting a bar or tube in the **Bar Chart** view displays the following options:

| Option | Description |
|---|---|
| **Drill down** | Moves the display down one level (for example, from all daily schedules to schedules for a specific day). Disabled when the selected bar represents the currently displayed node. |
| **Drill up** | Moves the display up one level (for example, from a schedule on a specific day to all days in the Daily tables). Disabled at the top-level view. |
| **Jobs list** | Opens the **Jobs list** dialog showing jobs that match the selected bar or tube. From this dialog you can access **Edit Master** and **Edit Daily** options. |
| **Refresh Chart** | Reloads data and redraws the chart. |
| **Pie chart** | Opens the **Pie Chart** view for the matching selection. |
| **Workload chart** | Opens the **Workload Chart** view for the matching selection. |

## Related Topics

- [Creating and Saving Custom Diagrams](Creating-Custom-Diagrams-Bar.md)
- [Synchronizing Data between List and Bar Chart Views](Synchronizing-Data-between-List-and-Bar-Chart-Views.md)
- [Creating/Updating Job Filters](Creating_Updating-Job-Filters-Bar.md)
- [Viewing Job Lists for Schedules](Viewing-Job-Lists-for-Schedules-Bar.md)
