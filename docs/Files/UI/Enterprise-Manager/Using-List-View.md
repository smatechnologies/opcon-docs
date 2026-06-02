---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Using List View
description: "The List view (Daily list) in Enterprise Manager displays all dates that have Schedules built, organized as an expandable tree of dates, Schedules, and Jobs."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Using List View

The **List** view (also called the **Daily list**) displays all dates that have Schedules built. The view presents a tree that you can expand to show Schedule and Job information for each date.

## List View Toolbar

The **Daily list** toolbar provides the following actions:

| Button | Description |
|---|---|
| **Job Filter** | Opens the job filter dialog so you can limit the displayed dates, Job statuses, departments, access codes, and tags. When a filter is active, the view title shows **(Filtered)**. |
| **Listen Selection** | Toggles whether the **Daily list** responds to selection changes broadcast by other views. |
| **Send Selection** | Toggles whether the **Daily list** broadcasts the current selection to other views. |
| **Show Empty Schedules** | Toggles whether Schedules and sub-schedules that contain no Jobs are displayed in the tree. Enabled by default. When a filter is active, this option is automatically turned off. |
| **Expand** | Expands all nodes in the tree. |
| **Collapse** | Collapses all nodes in the tree. |

![List View toolbar](../../../Resources/Images/EM/EMlisttoolbar.png "List View toolbar")

## Synchronizing with Other Views

The **Daily list** can share its selection with the **Gantt**, **PERT**, **Bar Chart**, **Pie Chart**, and **Workload Chart** views.

To send the current selection to other views:

1. Select the **Send Selection** button on the **Daily list** toolbar to activate it.
2. In each destination view, select the **Listen for selection changes in other views** button to activate it.

Result: When you select a date, Schedule, or Job in the **Daily list**, the other activated views update to reflect that selection.

## Context Menus

Right-clicking an item in the **Daily list** opens a context menu with actions appropriate to the selected item type:

- **Date** — actions that apply to the selected schedule date.
- **Schedule** — actions that apply to the selected Schedule.
- **Sub-schedule** — actions that apply to the selected sub-schedule.
- **Job** — actions that apply to the selected Job.

Double-clicking a Job opens the Job information dialog. Double-clicking a date, Schedule, or sub-schedule expands or collapses that node.

## Related Topics

- [Using Filter Text](Using-Filter-Text.md)
- [Creating/Updating Job Filters](Creating_Updating-Job-Filters.md)
- [Synchronizing Data between Matrix and List Views](Synchronizing-Data-between-Matrix-and-List-Views.md)
- [Performing Schedule Procedures](Performing-Schedule-Procedures-List.md)
- [Performing Job Procedures](Performing-Job-Procedures-List.md)
