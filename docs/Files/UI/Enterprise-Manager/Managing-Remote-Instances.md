---
title: Managing Remote Instances
description: "The Remote Instances editor defines and manages connection information for accessing remote OpCon instances from Enterprise Manager."
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

# Managing Remote Instances

The **Remote Instances** editor in Enterprise Manager defines and manages connection information for accessing remote OpCon instances. Use it to add, edit, or delete the database connection settings that OpCon uses to communicate with other OpCon servers.

For conceptual information, refer to [Remote Instances](../../../objects/remote-instances.md) in the **Concepts** online help.

:::note
Only users in the `ocadm` role can add, edit, or delete remote instances.
:::

## Remote Instances Editor

The **Remote Instances** editor contains two sections:

**Remote OpCon** — Defines the database connection to the remote server:

| Field | Description |
|---|---|
| **Name** | A unique name for the remote instance. Maximum 255 characters. The following characters are not permitted in names: `* ? ' | ; % & < > ( ) [ ] { } , = ! \ "` |
| **Documentation** | Optional free-text notes about the remote instance. Maximum 8,000 characters. |
| **Server** | The hostname or IP address of the remote SQL Server instance. Required. |
| **Database** | The name of the remote OpCon database. Required. |
| **Windows Authentication** | When selected, uses Windows (trusted) authentication. **User** and **Password** fields are disabled. |
| **User** | The SQL login username. Required when **Windows Authentication** is not selected. |
| **Password** | The SQL login password. Required when **Windows Authentication** is not selected. Stored encrypted using AES encryption. |

**Options** — Configures advanced connection behavior:

| Field | Description |
|---|---|
| **Mirroring On** | Select this option when the remote instance uses SQL Server database mirroring. |
| **Transparent Network IP Resolution** | Controls the Transparent Network IP Resolution (TNIR) behavior. Select **Auto** (default), **Enabled**, or **Disabled**. **Auto** is recommended for most environments. |

## Remote Instances Toolbar

The **Remote Instances** toolbar provides actions for managing remote instance records.

![Remote Instances toolbar](../../../Resources/Images/EM/EMdashboardtoolbar.png "Remote Instances toolbar")

## Related Topics

- [Adding Remote Instances](Adding-Remote-Instances.md)
- [Editing Remote Instances](Editing-Remote-Instances.md)
- [Deleting Remote Instances](Deleting-Remote-Instances.md)
