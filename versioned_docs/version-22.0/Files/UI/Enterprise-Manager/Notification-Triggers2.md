# Notification Triggers

The **Notification Triggers** frame provides tabs for the Trigger types
(Machines, Schedules, and Jobs). Each Trigger type contains the names of
the user-defined notification groups and triggers associated with each
group.

:::note
Triggers are responsible for writing the notification information to the OpCon database upon the status change of one or more items (Machines, Schedules, or Jobs) within a group.
:::

- You can search for a specific trigger by typing a part of or the
    full trigger name in the **type filter text** box.
- You can add groups inside of other groups to better organize the
    triggers.
- You must add triggers to the "lowest level" groups within a group
    tree.

## Right-Click Menu

The right-click menu within the group tree provides the following
options:

- **Add Root Group**: When you select the **Jobs**, **Machines**, or
    **Schedules** tab, you can use the **Add Root Group** option to add
    a new group to the root level.
- **[Add Group](Managing-Groups.md#Adding)**: When you select the
    **Jobs**, **Machines**, or **Schedules** tab, you can use the **Add
    Group** option to add a new group within any empty group. If you
    select **Add Group** from another group, it will create a child
    group.
- **[Delete Group](Managing-Groups.md#Deleting)**: This option
    deletes the selected group and all items within that group's tree.
- **[Add Machine Trigger](Managing-Triggers.md#Adding)**: In the
    **Machines** tab, this option provides a list of machine triggers,
    as defined in the [Machine     Triggers](../../../notifications/Notification-Triggers.md#Machine)
     section in the **Concepts** online help.
- **[Add Schedule Trigger](Managing-Triggers.md#Adding)**: In the
    **Schedules** tab, this option provides a list of schedule triggers,
    as defined in the [Schedule     Triggers](../../../notifications/Notification-Triggers.md#Schedule)
     section in the **Concepts** online help.
- **[Add Job Trigger](Managing-Triggers.md#Adding)**: In the
    **Machines**, **Schedules**, and **Jobs** tabs, this option provides
    a list of job triggers, as defined in the [Job     Triggers](../../../notifications/Notification-Triggers.md#Job)
     section in the **Concepts** online help.
- **[Rename](Managing-Groups.md#Renaming)**: This option allows you
    to rename the selected group.
- **[Delete Trigger](Managing-Triggers.md#Deleting)**: This option
    deletes the selected trigger within the selected tab.
