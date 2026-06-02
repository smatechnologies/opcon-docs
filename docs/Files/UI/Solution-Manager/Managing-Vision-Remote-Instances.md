---
title: Managing Vision Remote Instances
description: "Vision Remote Instances define instances of OpCon to be monitored that run and are accessed on a remote server."
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

# Managing Vision Remote Instances

Vision Remote Instances define instances of OpCon to be monitored that run and are accessed on a remote server. For more information, refer to [Remote Instances](../../../objects/remote-instances.md) in the **Concepts** online help.

:::note
You must be in the **ocadm** role to add, edit, or delete remote instances. For more on Function Privileges including those pertaining to Vision, refer to [Function Privileges](../../../administration/privileges.md#function-privileges) in the **Concepts** online help.
:::

## Vision Remote Instances page

The **Vision Remote Instances** page is the central location for viewing, adding, editing, and deleting remote instances.

![Vision Remote Instances Admin Page](../../../Resources/Images/SM/Vision-Remote-Instances-Admin-Page.png "Vision Remote Instances Admin Page")

From this page you can:

- [Add a Vision Remote Instance](Adding-Vision-Remote-Instances.md)
- [Edit a Vision Remote Instance](Editing-Vision-Remote-Instances.md)
- [Delete a Vision Remote Instance](Deleting-Vision-Remote-Instances.md)

## Field reference

The following fields apply when you add or edit a Vision Remote Instance.

### General

| Field | Description |
|---|---|
| **Name** | The name of the remote instance. Required. |
| **Badge (Auto Gen.)** | A two-character badge automatically generated from the **Name** field. The badge appears on Vision cards assigned to the remote instance. |
| **Description** | Optional descriptions, explanations, or notes for the remote instance. |

### Vision Instance Connection

API and Solution Manager credentials for the remote OpCon instance.

| Field | Description |
|---|---|
| **Api URL** | The API base URL for the remote instance. Required. |
| **Api User** | The API username for authenticating to the remote instance. Required. |
| **Api Password** | The password corresponding to the **Api User**. Required when adding a new remote instance. |
| **Solution Manager URL** | The Solution Manager base URL for the remote instance. Required. |
| **Vision Action User** | The OpCon user account used to submit Vision actions on the remote instance. Required. |

### Complex Expression Connection

Connection information that enables the remote instance to be used in OpCon property expressions. By default, OpCon expressions reference local properties only.

| Field | Default | Description |
|---|---|---|
| **SQL Server** | — | The name of the SQL Server where the remote OpCon database resides. Required. |
| **Database** | — | The name of the remote OpCon database. Required. |
| **Windows Auth** | Enabled | When enabled, Windows Authentication is used to connect to the database. The SMA Service Manager must run as a user with privileges to the OpCon database. For more information, refer to [Add the OpConxps Active Directory Group to the SQL Server](../../../installation/configuration.md#Add_the_OpConxps_Active_Directory_Group_to_the_SQL_Server) in the **OpCon Installation** online help. When disabled, **User** and **Password** are required. |
| **User** | — | The SQL Server username for connecting to the database. Required when **Windows Auth** is disabled. |
| **Password** | — | The password for the SQL Server user. Required when **Windows Auth** is disabled. |
| **Mirroring** | Disabled | When enabled, ensures the correct connection string is used when the remote instance uses SQL Server mirroring. |
| **Transparent Network IP Resolution** | Auto | Controls IP address resolution behavior when connection issues occur. Options: **Auto** (automatically detected; default), **Enabled** (transparent resolution active), **Disabled** (no transparent resolution). |
