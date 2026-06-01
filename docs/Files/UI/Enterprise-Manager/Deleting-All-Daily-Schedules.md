---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting All Daily Schedules for Particular Days
description: Use the Daily Maintenance view in Enterprise Manager to delete all Schedules built for a specific date from the daily tables.
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

# Deleting All Daily Schedules for Particular Days

The **Daily Maintenance** view lets you remove all Schedules that have been built for a specific date from the OpCon daily tables. Only Schedules in a completed status or not yet started are removed; Schedules that are running or otherwise active are not deleted.

:::warning
Deletion is permanent. Schedules removed from the daily tables cannot be recovered. Confirm the date is correct and that no automation is still running before you proceed.
:::

## Before you begin

Your role must have the **Delete Daily Schedules** function privilege assigned.

## Delete all daily Schedules for a date

To delete all daily Schedules for a particular day, complete the following steps:

1. In the Enterprise Manager navigation panel, under **Operation**, select **Daily Maintenance**. The **Daily Maintenance** view opens.
2. In the **Daily** pane, select the date whose Schedules you want to delete.
3. In the **Maintenance** group at the bottom right of the view, select **Delete**.
4. In the confirmation dialog, review the date shown, then select **OK** to confirm the deletion or **Cancel** to abort.

**Result:** OpCon removes all completed Schedules (and any Schedules that had not yet started) for the selected date from the daily tables. Schedules that are running or otherwise in an active status remain.
