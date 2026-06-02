---
title: Defining Escalation Groups
description: "How to define an escalation group in Enterprise Manager by assigning users who will receive escalation notifications."
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

# Defining Escalation Groups

An escalation group is a named collection of OpCon users who receive escalation notifications. Each group must include at least one assigned user. You reference escalation groups when building escalation rules.

:::note
Each user must have an email address defined to receive escalations. Refer to [Adding User Accounts](Adding-User-Accounts.md) for more information.
:::

## Define an escalation group

To define an escalation group, complete the following steps:

1. In Enterprise Manager, select **Escalation Manager** under the **Management** topic. The **Escalation Manager** screen displays.
2. Select **Add Group** in the **Groups** toolbar. The **Group Add/Edit** dialog displays.
3. Enter a name in the **Group Name** field (for example, `Level One`). Group names must be unique; duplicate names are not allowed.
4. In the **Users** frame, add users to the group using one of the following methods:
   - To add a token user, enter the token value (beginning with `[[`) in the token text field, then select **Add Token User**.
   - To add a named user, select a user in the **Available Users** list, then select the arrow to move the user to the **Assigned Users** list.
5. Repeat the previous step until all required users appear in the **Assigned Users** list. At least one user must be assigned before you can save.
6. Select **Save**.

**Result:** The new group appears in the **Groups** list on the **Escalation Manager** screen and is available for use in escalation rules.
