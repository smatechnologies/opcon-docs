---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Synchronizing Data between List and Bar Chart Views
description: "Use this procedure to synchronize data between the Daily list and Bar Chart views in Enterprise Manager so that selecting a date or schedule in one view updates the other automatically."
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

# Synchronizing Data between List and Bar Chart Views

Enterprise Manager supports cross-view synchronization so that a date or schedule selection made in the **Daily list** view is automatically reflected in the **Bar Chart** view. This is useful when you want to monitor schedule status in two formats simultaneously without switching views manually.

## Synchronize the Daily List and Bar Chart Views

To synchronize data between the Daily list and Bar Chart views, complete the following steps:

1. Select **List** under the **Operation** topic. The **Daily list** screen displays.
2. Select **Bar Chart** under the **Operation** topic. The **Bar Chart** screen displays.
3. Select and drag the **Bar Chart** tab to the right side of the screen.
4. When the mouse pointer changes to an arrow symbol pointing right, release the **Bar Chart** tab.
5. Select the ![Listen for Selection icon](../../../Resources/Images/EM/EMlistenforchanges.png "Listen for Selection icon") **Listen Selection** button on the **Bar Chart** toolbar to activate it.
6. Select the ![Send Current Selection icon](../../../Resources/Images/EM/EMsendchanges.png "Send for Current Selection icon") **Send Selection** button on the **Daily list** toolbar to activate it.
7. Select a date, or select a date and then a schedule, to view.
8. View the schedule and related job information in the **Bar Chart** view.

**Result:** Selections made in the **Daily list** view are sent to the **Bar Chart** view, which updates to display matching schedule and job information.

To stop synchronization, select the **Listen Selection** button on the **Bar Chart** toolbar to deactivate it.
