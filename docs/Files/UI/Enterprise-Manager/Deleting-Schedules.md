---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Schedules
description: "Use these procedures to delete Schedules from the Master tables in Enterprise Manager, including removing job dependencies and jobs first."
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

# Deleting Schedules

## Overview

Schedules can be deleted from the Daily tables or from the Master tables in Enterprise Manager. Deleting a schedule from the Master tables is permanent and requires you to first remove all job dependencies and jobs assigned to the schedule. Deleting a schedule from the Daily tables removes only the active, date-specific instance.

You must have the **Delete Daily Schedules** function privilege to delete schedules.

:::warning
Deletion is permanent and cannot be undone. Verify that the schedule is no longer needed before proceeding.
:::

## Delete a Schedule from the Daily Tables

For instructions on deleting a schedule from the Daily tables, refer to [Deleting Daily Schedules](Deleting-Daily-Schedules.md).

## Delete a Schedule from the Master Tables

Before deleting a schedule from the Master tables, you must remove all job dependencies and then all jobs. Complete the following procedures in order.

### Step 1: Delete All Job Dependencies from the Schedule

To delete all job dependencies from the schedule, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Dependencies** tab in the **Job Properties** frame.
5. Select the dependency in the **Job Dependency** frame, then select **Remove**.
6. Select **Yes** to confirm or **No** to cancel.
7. Repeat steps 5–6 for all remaining job dependencies.
8. Select **Close** to close the **Job Master** screen.

The job dependencies are removed from the schedule.

### Step 2: Delete All Jobs from the Schedule

To delete all jobs from the schedule, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select **Remove** on the **Job Master** toolbar.
5. Select **Yes** to confirm or **No** to cancel.
6. Repeat steps 2–5 for all remaining jobs assigned to the schedule.
7. Select **Close** to close the **Job Master** screen.

All jobs are removed from the schedule.

### Step 3: Delete the Schedule

To delete the schedule from the Master tables, complete the following steps:

1. Select **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays.
2. Select the schedule in the **Schedule Selection** list.
3. Select **Remove** on the **Schedule Master** toolbar.
4. Select **Yes** to confirm or **No** to cancel.
5. Select **Close** to close the **Schedule Master** screen.

The schedule is permanently removed from the Master tables.

## Related Information

- [Deleting Daily Schedules](Deleting-Daily-Schedules.md)
