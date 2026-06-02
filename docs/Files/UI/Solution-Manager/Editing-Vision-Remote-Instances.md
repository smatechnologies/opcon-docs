---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Vision Remote Instances
description: "How to edit an existing Vision Remote Instance in Solution Manager, including connection settings and database connection fields."
product_area: Solution Manager
audience: System Administrator
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Solution Manager
  - Vision
last_updated: 2026-03-18
doc_type: procedural
---

# Editing Vision Remote Instances

A Vision Remote Instance defines the connection information that Vision uses to monitor a separate OpCon environment. Each instance stores two sets of connection details: a **Vision Instance Connection** (REST API and Solution Manager URLs, credentials, and Vision Action User) and a **Complex Expression Connection** (direct database access for complex tag expressions).

Only users with the OCADM role can access the **Remote Instances** page.

## Edit a Vision Remote Instance

To edit an existing Vision Remote Instance, complete the following steps:

1. In Solution Manager, go to **Vision Settings**.
2. Select **Remote Instances** in the toolbar.
3. In the Remote Instances list, select the row for the instance you want to edit.
4. Select **Edit**.

   The **Remote Instance** dialog opens, pre-populated with the current values.

5. Update any fields in the **Vision Instance Connection** section as needed:

   | Field | Description |
   |---|---|
   | **Name** | Unique name for the remote instance. Cannot contain the characters `*?'|;%&<>()[]{},=!`. Maximum 255 characters. |
   | **Badge (Auto Gen.)** | Read-only abbreviation generated automatically from the **Name**. |
   | **Description** | Optional description. Maximum 4000 characters. |
   | **Api URL** | Base URL of the remote OpCon REST API. Must be a valid URL. |
   | **Api User** | OpCon user name used to authenticate to the remote API. Changing this field requires you to re-enter **Api Password**. |
   | **Api Password** | Password for the **Api User**. Maximum 12 characters. Required when adding or when **Api User** changes. |
   | **Solution Manager URL** | Base URL of the remote Solution Manager. Must be a valid URL. |
   | **Vision Action User** | OpCon user on the remote instance that Vision uses to perform actions. Must exist on the remote system. |

6. Update any fields in the **Complex Expression Connection** section as needed:

   | Field | Description |
   |---|---|
   | **SQL Server** | Hostname or IP address of the SQL Server hosting the remote OpCon database. Cannot contain `;` or `=`. |
   | **Database** | Name of the remote OpCon database. Cannot contain `;` or `=`. |
   | **Windows Auth** | When enabled, the connection uses Windows Authentication and the **User** and **Password** fields are cleared and disabled. |
   | **User** | SQL Server login name. Required when **Windows Auth** is off. |
   | **Password** | SQL Server password. Required when **Windows Auth** is off. |
   | **Mirroring** | Enables SQL Server database mirroring for the connection. |
   | **Transparent Network Ip Resolution** | Controls Transparent Network IP Resolution for the SQL driver. Options: **Auto**, **Enabled**, **Disabled**. |

7. Select **Save**.

**Result:** The remote instance is updated. The list refreshes to reflect the saved changes.

## Field validation

Solution Manager validates the following on save:

- **Name** must be unique across all remote instances.
- **Api URL** and **Solution Manager URL** must be reachable valid URLs.
- **Api User** credentials must be valid on the remote system (OCADM-level credentials are required).
- **Vision Action User** must exist on the remote instance.
- **User** and **Password** are required when **Windows Auth** is off.
