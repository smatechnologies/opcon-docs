---
title: Working with Scripts
description: "The Scripts topic in Enterprise Manager provides editors to manage the script repository, script runners, and script types for embedded scripts stored in the OpCon database."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Working with Scripts

The **Scripts** topic in Enterprise Manager provides editors to manage embedded scripts stored centrally in the OpCon database. From this topic you can organize scripts by type, configure the runners that interpret them on Agent machines, and maintain the script repository itself.

![Scripts Topic](../../../Resources/Images/EM/EMscriptsmenu.png "Scripts Topic")

## Scripts Editors

The **Scripts** topic contains three editors, accessible from the navigation panel.

| Editor | Description |
|---|---|
| [Script Repository](Using-Script-Repository.md) | Stores and versions job scripts in the OpCon database. Use this editor to add, edit, and delete scripts and their versions, and to review where each script is used before making changes. |
| [Script Runners](Managing-Script-Runners.md) | Creates and manages interpreters and their associated command templates. Templates are passed to the Agent machine so the Agent knows how to run scripts it receives from the database. |
| [Script Types](Managing-Script-Types.md) | Creates and manages the script types that categorize scripts and control which runners can run them. |

## Access Control

Access to Scripts editors is controlled by the privileges assigned to your OpCon role. Script-level access is managed separately through [Script Privileges](Managing-Script-Privileges.md) under the **Security** topic.

## Related Topics

- [Embedded Scripts](../../../automation-concepts/embedded-scripts.md)
- [Managing Script Privileges](Managing-Script-Privileges.md)
- [Using Script Tools](Using-Scripts-Tools.md)
