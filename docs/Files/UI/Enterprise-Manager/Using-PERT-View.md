---
title: Using PERT View
description: "The PERT view shows a schedule's individual jobs and job dependency relationships in Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: reference
---

# Using PERT View

The **PERT** view displays job dependency relationships and each job's current status within a schedule. Use it to visualize dependency chains, isolate specific paths, and act on jobs directly from the diagram.

To display schedule and job information in the **PERT** view, you must first select a schedule in another view (such as **Daily List** or **Matrix**) and activate the **Listen Selection** button on the **PERT** toolbar. The **Send Selection** button must also be activated in the source view. To synchronize both views simultaneously, see [Synchronizing Data between List and PERT Views](Synchronizing-Data-between-List-and-PERT-Views.md).

For information on changing PERT preferences, see [Setting Preferences for Workflow Designer and PERT](Preferences-for-Workflow-Designer.md). For error messages displayed for failed jobs, see [Operations Machine Messages](../../../reference/Operations-Machine-Messages.md).

## PERT View Toolbar

The **PERT** toolbar provides controls for filtering, layout, and view synchronization.

![PERT View toolbar](../../../Resources/Images/EM/EMperttoolbar.png "PERT View toolbar")

| Button | Description |
|---|---|
| **Listen Selection** | When active, the PERT view updates automatically when you select a schedule in another view. |
| **Open Filter Dialog** | Opens the filter dialog to limit displayed jobs by status, access code, department, or tag. |
| **Group by Schedules** | Groups jobs by schedule when no specific schedule is selected, or when cross-schedule dependencies are shown. |
| **Show Cross Schedule Dependencies** | Shows dependency links that span multiple schedules. Requires **Group by Schedules** to be active. |
| **Show Thresholds and Resources** | Toggles the display of threshold and resource dependency lines. A notification appears if the dependency count exceeds the configured limit. |
| **Open Mini Map** | Opens the mini map panel for navigating large diagrams. |

## PERT View Right-Click Menu

Right-click a job in the **PERT** view to access the following options.

- **Job** — See [Job Right-click Menu](Working-with-Operation.md#Job) for available job actions.
- **Open SubSchedule** — For Container jobs, changes the display to show the jobs in the subschedule.
- **Find** — Opens the **Find** dialog to locate a job by name.
- **Isolate** — Filters the diagram to highlight dependency paths for the selected job:
  - **Previous Dependencies** — Displays all preceding jobs in the dependency chain.
  - **Subsequent Dependencies** — Displays all subsequent jobs in the dependency chain.
  - **Dependency Chain** — Displays the entire dependency chain, including preceding and subsequent jobs.
  - **Shortest Path** — Highlights the shortest path among all dependency chains to the selected job.
- **Layout** — Changes the diagram layout:
  - **Top to Bottom** — Applies a vertical tree layout.
  - **Left to Right** — Applies a horizontal tree layout.
- **Zoom In** — Increases the zoom level. Available levels: 10%, 20%, 30%, 40%, 50%, 60%, 70%, 80%, 90%, 100%, 150%, 200%.
- **Zoom Out** — Decreases the zoom level to the next lower percentage.
- **Print** — Opens the **Print** dialog to print the diagram.
- **Take Screenshot** — Captures the visible area of the current view as an image.

## Related Topics

- [Creating and Saving Custom Diagrams](Creating-Custom-Diagrams-PERT.md)
- [Synchronizing Data between List and PERT Views](Synchronizing-Data-between-List-and-PERT-Views.md)
- [Creating/Updating Job Filters](Creating_Updating-Job-Filters-PERT.md)
- [Opening Mini Maps](Opening-Mini-Maps.md)
- [Viewing Job Information](Viewing-Job-Info.md)
- [Viewing Job History Information](Viewing-Job-History-Info.md)
- [Viewing Container Jobs' SubSchedules](Viewing-Container-Job-SubSchedules.md)
- [Performing Additional Job Procedures](Performing-Job-Procedures-PERT.md)
