---
lang: en-us
title: Managing Resources
description: "Use the Resources editor in Enterprise Manager to add, edit, copy, delete, and reset resources that limit concurrent job execution across schedules."
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

# Managing Resources

The **Resources** editor in Enterprise Manager lets you define and maintain OpCon resources — numeric pools that limit the number of concurrently running jobs across schedules. For conceptual background, refer to [Resources](../../../objects/resources.md) in the **Concepts** online help.

## Required privilege

You must have the **Maintain Thresholds/Resources** function privilege assigned through your role to use the Resources editor.

## Resources editor fields

When you open the **Resources** editor and select a resource, the following fields are available:

| Field | Description |
|---|---|
| **Select Resource** | List of all defined resources. Select a resource to load its details. |
| **Resource Name** | Alphanumeric name that identifies the resource. |
| **Max Resources** | Numeric maximum number of resource units available. |
| **Documentation** | Optional free-text notes describing the resource's purpose. |
| **Resources In Use** | Read-only display showing current units in use as a fraction of the maximum (for example, `3/10`) and a progress bar. |

## Open the Resources editor

To open the Resources editor, complete the following steps:

1. In Enterprise Manager, select **Resources** under the **Administration** topic.

**Result:** The **Resources** screen opens.

## Available tasks

| Task | Description |
|---|---|
| [Adding Resources](Adding-Resources.md) | Define a new resource with a name and maximum value. |
| [Editing Resources](Editing-Resources.md) | Modify the name, maximum value, or documentation for an existing resource. |
| [Copying Resources](Copying-Resources.md) | Duplicate an existing resource as a starting point for a new one. |
| [Deleting Resources](Deleting-Resources.md) | Remove a resource after clearing all job dependencies and updates that reference it. |
| [Resetting Resources in Use](Resetting-Resources-in-Use.md) | Manually correct the **Resources In Use** value when it is inaccurate due to an unusual occurrence. |
| [Viewing Additional Resource Information](Viewing-Additional-Resource-Info.md) | View cross-references (job dependencies and updates) and audit records for a resource. |
