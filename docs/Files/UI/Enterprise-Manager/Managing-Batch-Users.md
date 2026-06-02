---
title: Managing Batch Users
description: "The Batch Users editor in Enterprise Manager creates and maintains the Batch Users required for running jobs on IBM i, MCP, OpenVMS, SQL, UNIX, and Windows."
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

# Managing Batch Users

The **Batch Users** editor in Enterprise Manager creates and maintains the Batch Users required for running jobs on IBM i, MCP, OpenVMS, SQL, UNIX, and Windows. Privileges for Batch Users are managed separately in the **Batch User Privileges** editor. For conceptual information, refer to [Batch User Privileges](../../../administration/privileges.md#batch-user-privileges).

## Access the Batch Users Editor

To open the Batch Users editor, complete the following steps:

1. In Enterprise Manager, select **Security** in the navigation pane.
2. Select **Batch Users**.

The **Batch Users** editor opens with the following sections:

- **Operating System Selection** — a list to select the target operating system
- **Batch Users** — a filtered list of existing Batch Users for the selected OS
- **Batch User Details** — fields for the selected Batch User's identifier and, for Windows and SQL, password
- **Batch User Privileges** — a button to open the Batch User Privileges editor

## Batch User Details Fields

The fields displayed in the **Batch User Details** section vary by operating system.

| Operating System | Identifier Field Label | Password Fields |
|---|---|---|
| Windows | **User** (`Domain\User` format) | **Password**, **Confirm Password** |
| SQL | **User** (`Domain\User` format) | **Password**, **Confirm Password** |
| UNIX | **Group/User** (`group_id/user_id` format) | None |
| IBM i | **User Profile** | None |
| MCP | **Identifier** | None |
| OpenVMS | **Identifier** | None |

**Notes:**
- The user identifier field accepts up to 61 characters.
- The password field accepts up to 256 characters (Windows and SQL only).
- Windows identifiers are stored in uppercase.
- The following default Batch Users exist and cannot be edited or deleted: `use service account` (Windows and SQL) and `*` (MCP and IBM i).

## Related Procedures

- [Adding Batch Users](Adding-Batch-Users.md)
- [Editing Batch Users](Editing-Batch-Users.md)
- [Deleting Batch Users](Deleting-Batch-Users.md)
- [Granting Privileges to Batch Users](Granting-Privileges-to-Batch-Users.md)
- [Revoking Privileges from Batch Users](Revoking-Privileges-from-Batch-Users.md)
- [Viewing Additional Batch User Information](Viewing-Additional-Batch-User-Info.md)

## Manage Batch User Privileges

To open the Batch User Privileges editor from within the Batch Users editor, select **Manage Privileges** in the **Batch User Privileges** section.

**Required privilege:** You must have the **All User Interface Functions** function privilege to open the Batch User Privileges editor.
