---
title: Managing Groups
description: "Add, rename, and delete Machine, Schedule, and Job groups in Notification Manager in Enterprise Manager."
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

# Managing Groups

Groups in Notification Manager organize notification triggers by Machine, Schedule, or Job. You can nest child groups under a parent group to further organize triggers. Each group name can be up to 255 characters.

## Adding Machine, Schedule, or Job Groups

To add a group, complete the following steps:

1. Select **Notification Manager** under the **Management** topic. The **Notification Manager** screen displays.
2. Select the **Machines**, **Schedules**, or **Jobs** tab in the **Notification Triggers** frame.
3. Right-click the notification type node (for example, **Machines**, **Schedules**, or **Jobs**).
4. Select **Add Group**. The **Add New Group** dialog displays.
5. Type a group name (up to 255 characters) and select **OK**.

**Result:** The new group appears in the tree under the selected notification type.

:::note
To create a child group, right-click an existing group instead of the root notification type node, then select **Add Group**.
:::

### Adding Machines to a Group

To add machines to a group, complete the following steps:

1. Select the group in the **Machines** tab.
2. In the selection frame, choose how the group treats unspecified machines:
   - To add specific machines — confirm **By default, ENS will treat all machines as: Excluded**. Select the option for a platform to include all machines on that platform, or expand the platform using the arrow and select individual machine options.
   - To remove specific machines — change the selection to **By default, ENS will treat all machines as: Included**. Select the option for a platform to exclude all machines on that platform, or expand the platform and clear individual machine options.
3. Select **Save**.

**Result:** The group membership is saved and the selection is applied to notification triggers that use this group.

### Adding Schedules to a Group

To add schedules to a group, complete the following steps:

1. Select the group in the **Schedules** tab.
2. In the selection frame, choose how the group treats unspecified schedules:
   - To add specific schedules — confirm **By default, ENS will treat all schedules as: Excluded**. Select the option for each schedule to include.
   - To remove specific schedules — change the selection to **By default, ENS will treat all schedules as: Included**. Clear the option for each schedule to exclude.
3. Select **Save**.

**Result:** The group membership is saved.

### Adding Jobs to a Group

To add jobs to a group, complete the following steps:

1. Select the group in the **Jobs** tab.
2. In the selection frame, choose how the group treats unspecified jobs:
   - To add specific jobs — confirm **By default, ENS will treat all jobs as: Excluded**. Select the option for a schedule to include all its jobs, or expand the schedule using the arrow and select individual job options.
   - To remove specific jobs — change the selection to **By default, ENS will treat all jobs as: Included**. Select the option for a schedule to exclude all its jobs, or expand the schedule and clear individual job options.
3. Select **Save**.

**Result:** The group membership is saved.

## Renaming Machine, Schedule, or Job Groups

To rename a group, complete the following steps:

1. Select **Notification Manager** under the **Management** topic. The **Notification Manager** screen displays.
2. Select the **Machines**, **Schedules**, or **Jobs** tab in the **Notification Triggers** frame.
3. Select the arrow to expand the group information.
4. Right-click the group to rename.
5. Select **Rename Group**. The rename dialog displays with the current group name pre-filled.
6. Type the new group name and select **OK**.

**Result:** The group name is updated in the tree.

## Deleting Machine, Schedule, or Job Groups

Deleting a group also deletes all child groups and triggers associated with it. This action cannot be undone.

To delete a group, complete the following steps:

1. Select **Notification Manager** under the **Management** topic. The **Notification Manager** screen displays.
2. Select the **Machines**, **Schedules**, or **Jobs** tab in the **Notification Triggers** frame.
3. Select the arrow to expand the group information.
4. Right-click the group to delete.
5. Select **Delete Group**. A confirmation dialog displays the message: *This group may include child groups and triggers. If you click 'Yes', all child groups and triggers will be deleted as well. Are you sure you want to delete the whole group?*
6. Select **Yes** to confirm the deletion, or **No** to cancel.

**Result:** The group and all its child groups and triggers are permanently removed.
