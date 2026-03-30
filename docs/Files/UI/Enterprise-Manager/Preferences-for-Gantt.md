---
title: Setting Preferences for Gantt
description: "Use this procedure to set Preferences for Gantt in the Enterprise Manager."
product_area: Enterprise Manager
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

# Setting Preferences for Gantt

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to set Preferences for Gantt in the Enterprise Manager.

:::note
Close and re-open the charts for changes to take effect.
:::

To set the preferences, complete the following steps:

1. Open the Enterprise Manager application
2. Go to **EnterpriseManager > Preferences**. The **Preferences** dialog displays
3. Select the arrow (![Expand Arrow](../../../Resources/Images/EM/EMarrowtoexpand.png "Expand Arrow")) next to **Enterprise Manager** in the Preferences tree to expand the list
4. Select **Gantt**. The **Gantt** settings display to the right
5. *(Optional)* Select **Show job names** to display job names on the chart (selected by default)
6. *(Optional)* Select **Show progression** to display percent complete for each job based on estimated run time (selected by default)
7. *(Optional)* Select **Show dependencies** to display job dependency lines on the chart (selected by default)
8. *(Optional)* Select **Refresh while moving events (slower)** to move dependent job boxes in real time while dragging a target job in Plan Mode (not selected by default). When cleared, dependent job boxes move after the target job is dropped
9. *(Optional)* In the **Space between jobs (pixels)** field, enter a value to adjust job spacing (default: 5; maximum: 10)
10. *(Optional)* In the **Themes** list, select a theme for the date/time bar at the top of the Gantt chart (default: *Windows Blue*)
11. *(Optional)* In the **Type of dependencies** list, select how job dependency lines are displayed
12. Select **Apply** to save the changes
13. Select **OK** to save and close the **Preferences** dialog

## When Would You Use It?

- To set the preferences:

## Why Would You Use It?

- **Setting Preferences**: To set the preferences:

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Setting Preferences for Gantt procedure involve?**

The Setting Preferences for Gantt procedure involves 13 steps. Complete all steps in order and save your changes.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
