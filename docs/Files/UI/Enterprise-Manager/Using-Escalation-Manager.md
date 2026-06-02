---
title: Using Escalation Manager
description: "The Escalation Manager editor defines escalation rules for any ENS trigger that uses email."
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

# Using Escalation Manager

Escalation Manager is an editor in Enterprise Manager that lets you define escalation rules for ENS triggers that use email. You create escalation user groups, assign users to those groups, and then attach the groups to rules. Rules are applied to triggers in [Notification Manager](Notification-Definitions.md).

For conceptual information about the Event Notification System (ENS), refer to [Event Notification](../../../notifications/Components.md) in the **Concepts** online help.

## Escalation Manager layout

Escalation Manager displays two sections side by side:

- **Rules** — lists all escalation rules. You must create at least one group before you can add a rule.
- **Groups** — lists all escalation user groups. Each group row shows the group name and the users assigned to it.

Each section has its own filter field and toolbar with **Add**, **Edit**, and **Remove** buttons. The same actions are available from the right-click menu on each table.

:::note
The filter fields support the `*` wildcard. Enter `*Level` to match names that contain "Level" anywhere in the string, not only at the start.
:::

When you apply a filter, the section title updates to show the number of visible items — for example, **Rules [3 - Filtered]**.

## Open Escalation Manager

To open Escalation Manager, complete the following steps:

1. In Enterprise Manager, select **Information** from the menu.
2. Select **Escalation Manager**.

**Result:** The Escalation Manager editor opens, displaying the **Rules** and **Groups** sections.

## Manage escalation groups

Groups must exist before you can assign them to rules. To manage groups, complete the following steps:

1. In the **Groups** section, select **Add** to create a new group, or select a group and select **Edit** to modify it.
2. In the **Group Add/Edit** dialog, enter the group name and assign the users who should receive escalated notifications.
3. Select **OK** to save.

To delete a group, select it and select **Remove**. If the group is assigned to one or more rules, Escalation Manager displays those rule names and prevents deletion until the group is removed from each rule.

## Manage escalation rules

To manage rules, complete the following steps:

1. In the **Rules** section, select **Add**.
   - If no groups exist, Escalation Manager prompts you to create one before continuing.
2. In the **Escalation Rule Add/Edit** dialog, configure the rule details. For field-level guidance, see [Defining Escalation Rules](Defining-Escalation-Rules.md).
3. Select **OK** to save.

To delete a rule, select it and select **Remove**. If the rule is currently assigned to one or more notification triggers, Escalation Manager displays those trigger names and prevents deletion until the rule is removed from each trigger.

## Related topics

- [Defining Escalation Groups](Defining-Escalation-Groups.md)
- [Defining Escalation Rules](Defining-Escalation-Rules.md)
- [Applying Escalation Rules to Triggers](Applying-Escalation-Rules-to-Triggers.md)
