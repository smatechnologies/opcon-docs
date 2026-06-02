---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Synchronizing Data between List and PERT Views
description: "Step-by-step procedure for synchronizing date and schedule selections between the Daily List and PERT views in Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-06-02
doc_type: procedural
---

# Synchronizing Data between List and PERT Views

When both the **Daily List** and **PERT** views are open in Enterprise Manager, you can link them so that selecting a date or schedule in one view automatically updates the other. This is useful for monitoring job dependencies visually while tracking schedule status in the list.

To synchronize data between the Daily List and PERT views, complete the following steps:

1. Under the **Operation** topic, select **List**. The **Daily list** screen displays.
2. Under the **Operation** topic, select **PERT**. The **PERT** screen displays.
3. Select and drag the **PERT** tab to the right side of the screen.
4. When the cursor changes to a right-pointing arrow, release the **PERT** tab to dock it.
5. On the **PERT** toolbar, select the **Listen for selection changes in other views** button to activate it.
6. On the **Daily list** toolbar, select the **Send Selection** button to activate it. When active, selection changes in the **Daily list** view are sent to all listening views.
7. In the **Daily list** view, select a date, or select a date and then a schedule.

**Result:** The **PERT** view updates to display the schedule and related job information that corresponds to your selection in the **Daily list** view.

To stop synchronization, select the **Listen for selection changes in other views** button on the **PERT** toolbar to deactivate it.
