---
title: Adding Remote Instances
description: "How to add a remote instance in Enterprise Manager so that OpCon environments can share properties and cross-environment expression dependencies can resolve."
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

# Adding Remote Instances

A remote instance defines the connection information for another OpCon environment running on a separate server. Once defined, tokens used in expression dependencies in one environment can reference properties in the remote environment. For conceptual details about each field, refer to [Remote Instances](../../../objects/remote-instances.md).

To add a remote instance, complete the following steps:

1. In Enterprise Manager, go to **Administration** and select **Remote Instances**.
2. Select **Add** on the **Remote Instances** toolbar.
3. In the **Name** field, enter a name for the remote instance.
4. (Optional) In the **Documentation** field, enter any relevant notes or descriptions.
5. In the **Remote OpCon** section, enter the **Server** name where the remote database resides.
6. In the **Database** field, enter the name of the remote OpCon database.
7. Specify the authentication method:
   - To use Windows Authentication, select the **Windows Authentication** option. The **User** and **Password** fields are disabled when this option is selected.
   - To use SQL Server authentication, clear the **Windows Authentication** option, then enter a valid **User** name and **Password**.
8. In the **Options** section, select the **Mirroring On** option if the remote instance uses database mirroring.
9. In the **Transparent Network IP Resolution** field, select a resolution method: **Auto**, **Enabled**, or **Disabled**.

:::note
**Auto** is the default and works correctly in most environments.
:::

10. Select **Save** on the **Remote Instances** toolbar.

The remote instance is saved and available for use in cross-environment expression dependencies.

## Required Fields

The following fields must be completed before you can save a remote instance:

| Field | Required when |
|---|---|
| **Name** | Always |
| **Server** | Always |
| **Database** | Always |
| **User** | **Windows Authentication** is not selected |
| **Password** | **Windows Authentication** is not selected |
