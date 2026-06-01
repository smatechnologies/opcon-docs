---
title: Managing Privileges
description: "Privileges in Enterprise Manager control what each role can access and do in OpCon. Use Security > Privileges to assign Access Code, Schedule, Function, Departmental Function, Batch User, Machine, Machine Group, and Script privileges to roles."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - System Configuration
last_updated: 2026-03-18
doc_type: procedural
---

# Managing Privileges

Privileges control what each OpCon role can access and do. You assign privileges to roles, and roles are assigned to user accounts. Enterprise Manager organizes privileges into eight categories, each accessible from **Security** > **Privileges** in the Navigation Panel.

To access the Privileges section, select **Privileges** under **Security** in the Navigation Panel.

:::note
All privilege editors require the **All Administration Functions** function privilege to open.
:::

## Privilege categories

The following privilege categories are available under **Privileges**:

| Category | Description |
|---|---|
| [Access Code Privileges](Managing-Access-Codes-Privileges.md) | Controls which access codes a role can use to view and update jobs. |
| [Schedule Privileges](Managing-Schedule-Privileges.md) | Controls which schedules a role can view and modify. |
| [Function Privileges](Managing-Function-Privileges.md) | Controls which non-departmental administrative functions a role can perform, such as maintaining machines, calendars, and global properties. |
| [Departmental Function Privileges](Managing-Dept-Function-Privileges.md) | Controls which departmental functions a role can perform, such as adding or modifying jobs within specific departments. |
| [Batch User Privileges](Managing-Batch-User-Privileges.md) | Controls which batch user accounts a role can assign to jobs. |
| [Machine Privileges](Managing-Machine-Privileges.md) | Controls which machines a role can assign jobs to. |
| [Machine Group Privileges](Managing-Machine-Group-Privileges.md) | Controls which machine groups a role can use. |
| [Script Privileges](Managing-Script-Privileges.md) | Controls which scripts in the script repository a role can view and use. |
