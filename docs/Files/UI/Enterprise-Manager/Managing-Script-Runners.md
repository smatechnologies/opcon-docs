---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Managing Script Runners
description: "The Script Runners editor in Enterprise Manager creates and manages interpreters and the command templates that tell Agents how to run embedded scripts."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Managing Script Runners

The **Script Runners** editor creates and manages interpreters and their associated command templates. Templates are sent to the Agent machine so the Agent knows how to run scripts received from the centralized database. For more information, see [Embedded Scripts](../../../automation-concepts/embedded-scripts.md).

:::note
To add, edit, or remove script runners, your role must have the **Maintain Scripts** function privilege. Without this privilege, **Add Runner** is disabled and the edit and remove buttons remain inactive. For more information, see [Privileges](../../../administration/privileges.md).
:::

## Script Runners editor

The **Script Runners** editor displays all defined runners in a table. Use the filter field above the table to search runners by name.

The table contains the following columns:

| Column | Description |
|---|---|
| **Name** | The unique name of the script runner. |
| **Timestamp** | The date and time the runner was last updated. |
| **Script Type** | The script type associated with this runner. |
| **OS** | The operating system platform (Windows or UNIX). |
| **Command** | The command template used to run scripts of the associated type on the target platform. |

## Toolbar

The toolbar appears at the top-right corner of the editor. The following actions are available:

| Button | Description |
|---|---|
| **Add Runner** | Opens the **Add Runner** dialog to create a new script runner. |
| **Edit Runner** | Opens the **Edit Runner** dialog for the selected runner. Enabled when one runner is selected. |
| **Remove Runner** | Deletes the selected runner after confirmation. Enabled when one runner is selected. |

You can also double-click a runner to open the **Edit Runner** dialog.

## Right-click menu

Right-clicking a runner in the table opens a context menu with the same **Add Runner**, **Edit Runner**, and **Remove Runner** options as the toolbar.

## Related topics

- [Adding Script Runners](Adding-Script-Runners.md)
- [Editing Script Runners](Editing-Script-Runners.md)
- [Deleting Script Runners](Deleting-Script-Runners.md)
