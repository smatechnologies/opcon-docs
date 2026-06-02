---
title: Deleting Thresholds
description: How to permanently delete a threshold from OpCon by removing all references from daily tables, master tables, and master dependencies before deleting the threshold record.
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

# Deleting Thresholds

Deleting a threshold is a four-step process. You must remove all references to the threshold from the daily tables and master tables before OpCon allows you to delete the threshold record. If cross-references still exist when you attempt the final delete, Enterprise Manager blocks the deletion and displays an error.

Complete the four procedures below in order.

## Step 1: Remove the threshold from the daily tables

To remove the threshold from the daily tables, complete the following steps:

1. In the navigation pane, select **Daily Maintenance** under the **Operation** topic.
2. Select the **arrow** to expand the date for the schedule.
3. Select the **arrow** to expand the schedule.
4. Select the job.
5. Select **Edit Daily** in the **Maintenance** frame at the bottom-right of the screen.
6. Select the **Threshold/Resource Update** tab.
7. Select the threshold/resource update to delete, then select **Remove**.
8. Select **Yes** to confirm or **No** to cancel.

**Result:** The threshold update is removed from the selected daily job. Repeat this procedure for every daily job that references the threshold.

## Step 2: Remove the threshold from the master tables

To remove the threshold from the master tables, complete the following steps:

1. In the navigation pane, select **Daily Maintenance** under the **Operation** topic.
2. Select the **arrow** to expand the date for the schedule.
3. Select the **arrow** to expand the schedule.
4. Select the job.
5. Select **Edit Master** in the **Maintenance** frame at the bottom-right of the screen.
6. Select the **Threshold/Resource Update** tab.
7. Select the threshold/resource update to delete, then select **Remove**.
8. Select **Yes** to confirm or **No** to cancel.
9. Repeat steps 5–8 for all jobs that update the threshold.

**Result:** The threshold update is removed from all master job definitions that reference the threshold.

## Step 3: Remove the threshold dependencies from the master tables

To remove the threshold dependencies from the master tables, complete the following steps:

1. In the navigation pane, select **Job Master** under the **Administration** topic.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Dependencies** tab.
5. Select the **Threshold/Resource Dependency** tab.
6. Select the threshold to delete, then select **Remove**.
7. Select **Yes** to confirm or **No** to cancel.
8. Repeat steps 4–7 for all jobs that depend on the threshold.
9. Select **Close** to close the **Job Master** screen.

**Result:** All master threshold dependencies are removed.

## Step 4: Delete the threshold

To delete the threshold record, complete the following steps:

1. In the navigation pane, select **Thresholds** under the **Administration** topic.
2. Select the threshold in the **Select Threshold** list.
3. Select **Remove** on the **Thresholds** toolbar.
4. Select **Yes** to confirm or **No** to cancel.
5. Select **Close** to close the **Thresholds** screen.

**Result:** The threshold is permanently deleted from OpCon. This action cannot be undone.
