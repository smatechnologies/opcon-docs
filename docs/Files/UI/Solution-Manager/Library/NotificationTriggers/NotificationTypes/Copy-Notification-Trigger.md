---
title: Copy Notification Trigger
description: "Copy a notification trigger definition, including all of its notification messages, to other notification groups of the same group type in Solution Manager."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-05-29
doc_type: procedural
---

# Copy Notification Trigger

**Theme:** Configure
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

<!--
![Copy Notification Trigger](../../../../../../Resources/Images/SM/Library/NotificationTriggers/Copy-Trigger.png "Copy Notification Trigger")
-->

The **Notification Copy** dialog copies a notification trigger definition — including all of its notification messages — to other notification groups of the same group type. This lets you reuse an existing trigger configuration across multiple groups without recreating each message by hand.

When you copy a trigger, Solution Manager lists only the groups that are eligible to receive it. A group is eligible when both of the following are true:

- The group is the same **Group Type** as the source trigger's group.
- The group does not already have a trigger with the same trigger type.

If every group of the matching type already has this trigger, no groups appear in the **Groups** list and the following message is shown:

`All existing '<group type>' groups already have a '<trigger type>' trigger`

## To copy a notification trigger

To copy a notification trigger to other groups, complete the following steps:

1. Go to the **Notification Triggers** page in Solution Manager.
2. Select the notification trigger you want to copy.
3. Select **Copy Notification Trigger**. The **Notification Copy** dialog opens, showing the read-only **Group Name**, **Group Type**, and **Trigger Type** of the source trigger.
4. Review the **Messages** list to confirm the notification message types that will be copied.
5. In the **Groups** list, select each group you want to copy the trigger to.
6. Select **OK**.

**Result:** Solution Manager copies the trigger definition and its messages to each selected group and displays `Copy request was successful`. If any copy does not complete, the message `Copy request failed` is shown.

## FAQs

**Q: What does Copy Notification Trigger do?**

It copies a notification trigger definition, including all of its notification messages, to one or more other notification groups of the same group type.

**Q: Why are some groups missing from the Groups list?**

The **Groups** list shows only groups that are the same **Group Type** as the source trigger and that do not already have a trigger of this type. Groups that already have the trigger are excluded.

**Q: The OK button is unavailable. Why?**

**OK** stays unavailable until you select at least one group in the **Groups** list.

## Related Topics

## Glossary

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.
