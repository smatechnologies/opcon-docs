---
title: Managing Vision Actions
description: "Vision Actions are OpCon Events defined for a Vision Frequency Trigger. Use the Vision Actions page in Solution Manager to view, add, edit, and delete actions."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Managing Vision Actions

A Vision Action is a named set of OpCon Events that is triggered when a Vision Frequency condition is met. Each action must have a unique name and at least one event.

:::note
A Vision license is required to define Vision Actions. See [License File Request and Storing](Working-with-Vision.md#License).
:::

:::note
You must be in the `ocadm` role or have the **Maintain Vision Actions** privilege to create, edit, or delete Vision Actions. See [Function Privileges](../../../administration/privileges.md#function-privileges).
:::

## Vision Actions fields

The following fields are available when you create or edit a Vision Action:

| Field | Description |
|---|---|
| **Name** | A unique name for the action. Maximum 255 characters. Required. |
| **Events** | One or more OpCon Events assigned to the action. Select **Add** to open the **Create new Event** dialog. Each event is defined by selecting an **Event Template**, then completing the template fields. |

## View Vision Actions

The **Vision Actions** page displays all defined actions. Each row shows the action **Name** and its associated **Details** (a comma-separated list of configured event strings). Actions are sorted by name in ascending order by default.

To open the **Vision Actions** page, complete the following steps:

1. In Solution Manager, go to **Vision** > **Vision Settings**.
2. Select **Vision Actions**.

**Result:** The **Vision Actions** page opens, listing all existing actions with their name and event details.

<!--
![Vision Actions Admin Page](../../../Resources/Images/SM/Vision-Actions-Admin-Page.png "Vision Actions Admin Page")
-->

## Add a Vision Action

To add a Vision Action, complete the following steps:

1. On the **Vision Actions** page, select **Add**.
2. In the **Vision Action** dialog, enter a unique value in the **Name** field.
3. In the **Events** section, select **Add** to open the **Create new Event** dialog.
4. Select an **Event Template** from the list. The form updates dynamically based on the selected template.
5. Complete the event fields, then save the event.
6. Repeat steps 3–5 to add additional events as needed.
7. Select **Save**.

**Result:** The new Vision Action is saved and appears in the **Vision Actions** list.

## Edit a Vision Action

To edit a Vision Action, complete the following steps:

1. On the **Vision Actions** page, select the action you want to edit.
2. Select **Edit**, or double-click the action row.
3. In the **Vision Action** dialog, update the **Name** or **Events** fields as needed.
4. Select **Save**.

**Result:** The Vision Action is updated with the new values.

## Delete a Vision Action

You cannot delete a Vision Action that is referenced by one or more Vision cards. If you attempt to delete an action in use, Solution Manager displays an error listing the affected cards.

To delete a Vision Action, complete the following steps:

1. On the **Vision Actions** page, select one or more actions.
2. Select **Delete**.
3. In the confirmation dialog, select **OK**.

**Result:** The selected Vision Actions are removed from the list.

## Related topics

- [Adding Vision Actions](Adding-Vision-Actions.md)
- [Editing Vision Actions](Editing-Vision-Actions.md)
- [Deleting Vision Actions](Deleting-Vision-Actions.md)
