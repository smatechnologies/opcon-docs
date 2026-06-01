---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Using Workload Chart View
description: "The Workload Chart view shows at a glance whether schedules have overrun their estimated runtime."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-06-01
doc_type: procedural
---

# Using Workload Chart View

The **Workload Chart** view shows at a glance whether schedules have overrun their estimated runtime. The view displays a meter chart and a progress bar indicating how many jobs have finished versus those still waiting or running. The Schedule Name or Date appears above the chart.

To receive schedule and job updates in the Workload Chart, you must connect it to another view using the selection synchronization buttons. Activate **Listen for selection changes in other views** on the **Workload Chart** toolbar, and activate **Send the current selection to other views** on the **List** or **Matrix** view toolbar.

For chart display preferences, refer to [Setting Preferences for Charts](Preferences-for-Charts.md).

## Workload Chart Toolbar

![Workload Chart toolbar](../../../Resources/Images/EM/EMworkloadcharttoolbar.png "Workload Chart toolbar")

| Button | Description |
|---|---|
| **Listen for selection changes in other views** | Enables the Workload Chart to update when you select a date or schedule in another view. |

## Workload Chart View Menu

| Item | Description |
|---|---|
| **Take Screenshot** | Opens the **Image Preview** dialog so you can save a PNG image of the current chart. |

## Saving a Screenshot of the Workload Chart

To save a screenshot of the Workload Chart, complete the following steps:

1. In the **Operation** topic, select **List**.
2. In the **Operation** topic, select **Workload Chart**.
3. Drag the **Workload Chart** tab to the right side of the screen. Release when the cursor changes to a right-pointing arrow.
4. On the **Workload Chart** toolbar, activate **Listen for selection changes in other views**.
5. On the **List** view toolbar, activate **Send the current selection to other views**.
6. Select a date, or select a date and then a schedule, to view the chart data.
7. On the **Workload Chart** toolbar, select the View Menu button (the arrow pointing down).
8. Select **Take Screenshot**. The **Image Preview** dialog opens.
9. Select **Save** to save the image as a PNG file.

**Result:** The chart image is saved to the location you specify.
