---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Synchronizing Data between List and Matrix Views
description: "Use this procedure to synchronize data between the Daily list and Matrix views in Enterprise Manager so that a date or schedule selection in one view is reflected in the other."
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

# Synchronizing Data between List and Matrix Views

Enterprise Manager lets you link the **Daily list** view and the **Matrix** view so that a selection made in one view automatically updates the other. This is useful when you want to monitor schedule and job details side-by-side without switching between views manually.

## Synchronize the Daily list and Matrix views

To synchronize data between the Daily list and Matrix views, complete the following steps:

1. Under the **Operation** topic, select **List**. The **Daily list** view opens.
2. Under the **Operation** topic, select **Matrix**. The **Matrix** view opens.
3. Select and drag the **Matrix** tab to the right side of the screen.
4. When the mouse pointer changes to a right-pointing arrow, release the **Matrix** tab. The Matrix view docks on the right side of the workspace.
5. On the **Matrix** toolbar, select the **Listen Selection** button to activate it. When active, the Matrix view responds to selection changes made in other views.
6. On the **Daily list** toolbar, select the **Send Selection** button to activate it. When active, the Daily list view broadcasts selection changes to other views.
7. In the **Daily list** view, select a date, or select a date and then a schedule, to view.
8. View the schedule and related job information that appears in the **Matrix** view.

**Result:** Selecting a date or schedule in the **Daily list** view now updates the **Matrix** view automatically.

To stop synchronization, select the **Listen Selection** button on the **Matrix** toolbar to deactivate it.
