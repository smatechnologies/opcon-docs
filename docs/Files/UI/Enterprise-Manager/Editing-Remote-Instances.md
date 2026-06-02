---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Remote Instances
description: "Step-by-step procedure for editing an existing remote instance in Enterprise Manager."
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

# Editing Remote Instances

A remote instance defines the connection details that OpCon uses to communicate with a separate OpCon database. Use this procedure to update the connection properties of an existing remote instance in Enterprise Manager.

For conceptual information about each field, refer to [Remote Instances](../../../objects/remote-instances.md) in the **Concepts** online help.

## Edit a remote instance

To edit a remote instance, complete the following steps:

1. Select **Remote Instances** under the **Administration** topic. The **Remote Instances** screen opens.
2. Select the remote instance you want to change in the **Selection** list. The instance details populate the form.
3. Update any of the following fields as needed:

   **Remote OpCon section**

   | Field | Description |
   |---|---|
   | **Name** | Unique name for the remote instance (maximum 255 characters). |
   | **Documentation** | Optional free-text notes for the remote instance (maximum 8,000 characters). |
   | **Server** | Hostname or IP address of the remote SQL Server. Required. |
   | **Database** | Name of the remote OpCon database. Required. |
   | **Windows Authentication** | When selected, OpCon connects using the Windows service account. The **User** and **Password** fields are disabled. |
   | **User** | SQL Server login name. Required when **Windows Authentication** is not selected. |
   | **Password** | Password for the SQL Server login. Required when **Windows Authentication** is not selected. Stored encrypted (AES). |

   **Options section**

   | Field | Description |
   |---|---|
   | **Mirroring On** | Select when the remote SQL Server uses database mirroring. |
   | **Transparent Network IP Resolution** | Controls SQL Server multi-subnet failover behavior. Options: **Auto** (default), **Enabled**, **Disabled**. **Auto** is recommended in most environments. |

4. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Remote Instances** toolbar.
5. Select **Close** (to the right of the **Remote Instances** tab) to close the **Remote Instances** screen.

**Result:** The updated connection details are saved to the OpCon database and take effect the next time the remote instance connection is referenced.
