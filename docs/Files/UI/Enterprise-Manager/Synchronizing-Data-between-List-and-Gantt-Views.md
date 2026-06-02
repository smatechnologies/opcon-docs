---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Synchronizing Data between List and Gantt Views
description: "How to synchronize the Daily list and Gantt views in Enterprise Manager so that selecting a date or schedule in one view automatically updates the other."
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

# Synchronizing Data between List and Gantt Views

Enterprise Manager supports side-by-side monitoring of the **Daily list** and **Gantt** views. When both views are synchronized, selecting a date or schedule in the **Daily list** automatically updates the **Gantt** view to show the same data.

## Synchronize the Daily list and Gantt views

To display the **Daily list** and **Gantt** views side by side and synchronize their selections, complete the following steps:

1. In the **Operations** section of the navigation panel, select **List**. The **Daily list** view opens.
2. In the **Operations** section of the navigation panel, select **Gantt**. The **Gantt** view opens.
3. Select and drag the **Gantt** tab to the right side of the screen.
4. When the pointer changes to an arrow symbol pointing right, release the **Gantt** tab. The **Gantt** view docks to the right side of the workspace.
5. On the **Gantt** toolbar, select the **Listen Selection** button to activate it. When active, the Gantt view listens for selection changes sent by other views.
6. On the **Daily list** toolbar, select the **Send Selection** button to activate it. When active, the Daily list view broadcasts your selections to other views.
7. In the **Daily list** view, select a date, or select a date and then a schedule, to view.

**Result:** The **Gantt** view updates to display the schedule and job information for your selection.

## Deactivate synchronization

To stop the Gantt view from receiving selection changes, select the **Listen Selection** button on the **Gantt** toolbar to deactivate it.
