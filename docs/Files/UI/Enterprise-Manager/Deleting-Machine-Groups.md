---
title: Deleting Machine Groups
description: "Use this procedure to delete a Machine Group in Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Machine Groups
last_updated: 2026-03-18
doc_type: procedural
---

# Deleting Machine Groups

Before you delete a Machine Group, you must remove it from any daily and master jobs that reference it. If jobs still reference the group when you attempt deletion, Enterprise Manager displays a cross-reference dialog listing all affected master schedules, master jobs, and daily jobs. You must cancel and reassign or clear those references before the deletion can proceed.

The procedures below describe the manual reassignment approach, which lets you assign jobs to a different Machine Group rather than clearing the group assignment entirely.

## Prerequisites

- You must have the appropriate role privilege to access **Machine Groups** under **Administration**.

## Step 1: Remove the Machine Group from daily jobs

To remove the Machine Group from the daily table, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **date** for the schedule.
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **schedule**.
4. Select the **job**.
5. Select the **Edit Daily** button in the **Maintenance** frame at the bottom-right side of the screen. The **Job Daily** screen displays.
6. In the **Group** list, select a different Machine Group or select a primary machine.
7. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Daily** toolbar.
8. Repeat steps 4–7 for all jobs assigned to the Machine Group.
9. Select **Close ☒** (to the right of the **Job Daily** tab) to close the **Job Daily** screen.

**Result:** The Machine Group is no longer assigned to any daily jobs for the selected schedule.

## Step 2: Remove the Machine Group from master jobs

To remove the Machine Group from the master table, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **date** for the schedule.
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **schedule**.
4. Select the **job**.
5. Select the **Edit Master** button in the **Maintenance** frame at the bottom-right side of the screen. The **Job Master** screen displays.
6. In the **Group** list, select a different Machine Group or select a primary machine.
7. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.
8. Repeat steps 4–7 for all jobs assigned to the Machine Group.
9. Select **Close ☒** (to the right of the **Job Master** tab) to close the **Job Master** screen.

**Result:** The Machine Group is no longer assigned to any master jobs.

## Step 3: Delete the Machine Group

To delete the Machine Group, complete the following steps:

1. Select **Machine Groups** under the **Administration** topic. The **Machine Groups** screen displays.
2. In the **Select a Machine Group** list, select the Machine Group to delete.
3. Select ![Remove icon](../../../Resources/Images/EM/EMdelete.png "Remove icon") **Remove** on the **Machine Groups** toolbar.
4. Select **Yes** to confirm the deletion, or **No** to cancel.
5. Select **Close ☒** (to the right of the **Machine Groups** tab) to close the **Machine Groups** screen.

**Result:** The Machine Group is permanently removed from OpCon. This action cannot be undone.

:::note
If you select **Remove** before completing steps 1 and 2, Enterprise Manager displays a cross-reference dialog listing all master schedules, master jobs, and daily jobs that still reference the group. Select **Cancel** to close the dialog, then complete steps 1 and 2 before attempting deletion again.
:::
