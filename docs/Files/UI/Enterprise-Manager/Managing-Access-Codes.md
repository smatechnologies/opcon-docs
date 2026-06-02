---
title: Managing Access Codes
description: "The Access Codes editor in Enterprise Manager lets you add, copy, rename, delete, and assign privileges to OpCon Access Codes."
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

# Managing Access Codes

The **Access Codes** editor in Enterprise Manager lets you create and maintain the access codes used to control job-level visibility across roles. For conceptual background, refer to [Access Codes](../../../objects/access-codes.md).

To open the editor, select **Access Codes** under the **Security** topic in the Enterprise Manager navigation pane.

## Access Codes Toolbar

The **Access Codes** toolbar provides the following actions:

![Access Codes toolbar](../../../Resources/Images/EM/EMcalendarstoolbar.png "Access Codes toolbar")

## Access Code Fields

Each access code record contains the following fields:

| Field | Required | Max Length | Description |
|---|---|---|---|
| **Name** | Yes | 20 characters | Unique name that identifies the access code. |
| **Documentation** | No | 4,000 characters | Notes describing the purpose or usage of the access code. |

## Related Procedures

- [Adding Access Codes](Adding-Access-Codes.md)
- [Copying Access Codes](Copying-Access-Codes.md)
- [Granting Privileges to Access Codes](Managing-Access-Codes-Privileges.md#Granting)
- [Adding Access Codes to Jobs](Adding-Access-Codes-to-Jobs.md)
- [Renaming Access Codes](Renaming-Access-Codes.md)
- [Deleting Access Codes](Deleting-Access-Codes.md)
- [Viewing Additional Access Code Information](Viewing-Additional-Access-Code-Info.md)
