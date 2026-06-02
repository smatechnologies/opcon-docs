---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Vision Actions
description: "How to permanently delete one or more Vision Actions in Solution Manager."
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

# Deleting Vision Actions

Deleting a Vision Action permanently removes it from OpCon. You cannot recover a deleted Vision Action, so confirm the action is no longer needed before proceeding.

You must have the **Maintain Vision Actions** function privilege to delete Vision Actions.

:::warning
A Vision Action that is currently assigned to one or more Vision cards cannot be deleted. Remove the action from all Vision cards before attempting deletion.
:::

## Delete a Vision Action

To delete one or more Vision Actions, complete the following steps:

1. In Solution Manager, go to **Vision Settings**.
2. Select **Actions** to open the Actions list.
3. Select the option next to each Vision Action you want to delete. You can select multiple actions.
4. Select **Delete**.
5. In the confirmation dialog, select **OK**.

**Result:** The selected Vision Actions are permanently removed from OpCon. The Actions list refreshes automatically.
