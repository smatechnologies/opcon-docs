---
title: Editing Schedules in Daily Schedule Tables
description: "Edit a schedule's start time and events in the Daily Schedule Tables using the Daily Maintenance view in Enterprise Manager."
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

# Editing Schedules in Daily Schedule Tables

Use this procedure to modify the start time and events for a schedule instance in the daily schedule tables using Enterprise Manager. Changes you save here affect only the current daily instance of the schedule, not the master schedule definition.

:::note
Changes to the schedule start time and events take effect immediately. If the schedule has already run, changes take effect the next time the schedule runs.
:::

## Required privileges

You must have the **Maintain Schedules** function privilege to edit a daily schedule.

## Edit a schedule in the daily tables

To edit a schedule in the daily schedule tables, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Select the arrow to expand the specific date for the schedule.
3. Select the schedule to edit.
4. Select **Edit Daily** in the **Maintenance** frame. The **Schedule Daily** editor opens.
5. Select the **Schedule** tab.
6. *(Optional)* In the **Start Time** group, adjust the time value to modify the schedule start time.
7. Select **Save** on the **Schedule Daily** toolbar to save start time changes.
8. Select the **Events** tab.
9. *(Optional)* Select the schedule event to modify, then select **Edit** in the **Events** frame. The **Event Definition Wizard** opens.
10. Enter your changes and select **Finish** to save.
11. Select **Close** (to the right of the **Schedule Daily** tab) to close the editor.
12. Select **Close** (to the right of the **Daily Maintenance** tab) to close the **Daily Maintenance** screen.

**Result:** The daily schedule instance is updated with your changes. Start time and event changes take effect immediately for schedules currently in progress.
