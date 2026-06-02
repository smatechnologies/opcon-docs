---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Managing Script Types
description: "Reference for the Script Types editor in Enterprise Manager, which creates and manages script types that determine which script runners can run a given script."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: reference
---

# Managing Script Types

The **Script Types** editor in Enterprise Manager creates and manages script types. A script type determines which [script runners](Managing-Script-Runners.md) can run a given script, establishing the relationship between a script and its running environment. For more information, refer to [Embedded Scripts](../../../automation-concepts/embedded-scripts.md).

## Required privilege

To add, edit, or remove script types, your role must include the **Maintain Scripts** function privilege. Users without this privilege can view script types but cannot modify them.

## Opening the Script Types editor

In the Enterprise Manager navigation pane, select **Types** under **Scripts**. The **Script Types** screen opens.

## Script Types table

The table displays all defined script types with the following columns:

| Column | Description |
|---|---|
| **Name** | The unique name identifying the script type. |
| **Timestamp** | The date and time the script type was last updated. |
| **File Extension** | The file extension associated with the script type, prefixed with a period (for example, `.pl`). |
| **Description** | An optional description of the script type. |

Use the filter field above the table to search script types by name.

## Toolbar

The toolbar appears in the upper-right corner of the **Script Types** screen.

| Button | Description |
|---|---|
| **Add** | Opens the **Add Script Type** dialog to create a new script type. |
| **Edit** | Opens the **Edit Script Type** dialog for the selected script type. Requires one script type to be selected. |
| **Remove** | Deletes the selected script type. Requires one script type to be selected. If the script type has associated scripts, runners, or jobs, a cross-reference dialog appears and deletion is blocked. |

## Right-select menu

Right-selecting a script type in the table opens a context menu with the same options as the toolbar: **Add**, **Edit**, and **Remove**.

You can also double-select a script type to open the **Edit Script Type** dialog directly.

## Script Type fields

The **Add Script Type** and **Edit Script Type** dialogs share the following fields:

| Field | Required | Description |
|---|---|---|
| **Name** | Yes | A unique name for the script type (for example, `PERL`). Maximum 128 characters. Duplicate names are not allowed. |
| **File Extension** | No | The file extension for scripts of this type (for example, `pl`). Enter only the extension characters — the leading period is added automatically. Maximum 12 alphanumeric characters. |
| **Description** | No | A brief description of the script type. |

Select **Save** to save changes or **Cancel** to discard them.

## Related topics

- [Adding Script Types](Adding-Script-Types.md)
- [Editing Script Types](Editing-Script-Types.md)
- [Deleting Script Types](Deleting-Script-Types.md)
