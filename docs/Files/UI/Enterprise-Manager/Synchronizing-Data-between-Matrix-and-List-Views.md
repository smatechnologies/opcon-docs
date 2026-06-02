---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Synchronizing Data between Matrix and List Views
description: "Use this procedure to synchronize data between the Matrix and List views in Enterprise Manager so that a date or schedule selected in one view updates the other automatically."
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

# Synchronizing Data between Matrix and List Views

Enterprise Manager supports view synchronization so that selecting a date or schedule in the **Matrix** view automatically updates the **Daily list** view. This is useful when you want to compare the graphical matrix alongside a detailed job list for the same date.

To synchronize data between the Matrix and List views, complete the following steps:

1. Select **Matrix** under the **Operation** topic. The **Matrix** screen displays.
2. Select **List** under the **Operation** topic. The **Daily list** screen displays.
3. Select and drag the **Daily list** tab to the right side of the screen.
4. When the mouse pointer changes to an arrow symbol pointing right, release the **Daily list** tab. The two views appear side by side.
5. On the **List** toolbar, select the **Listen Selection** button to activate it. When active, the List view listens for selection changes made in other views.
6. On the **Matrix** toolbar, select the **Send Selection** button to activate it. When active, the Matrix view sends the current selection to other views.
7. In the **Matrix** view, select a date, or select a date and then a schedule, to view.

**Result:** The **Daily list** view updates to display the schedule and related job information for the selection made in the **Matrix** view.

To stop synchronization, select the **Listen Selection** button on the **List** toolbar to deactivate it.
