---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Managing Service Requests
description: "Manage Service Requests in Solution Manager by using the Edit, Copy, and Delete buttons that appear on each Service Request button in Admin Mode."
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

# Managing Service Requests

In Admin Mode, each Service Request button displays three action buttons in its upper-right corner: **Edit**, **Copy**, and **Delete**. Use these buttons to modify, duplicate, or remove a Service Request.

The **Admin Mode** toggle is visible only to users whose role includes the **Maintain Service Request** function privilege.

To enable Admin Mode, see [Enabling Admin Mode Editing](Enabling-Admin-Mode-Editing.md).

## Access Requirements

To manage Service Requests, your role must meet the following requirements:

- **View the Self Service page**: Your role must include the **View Service Requests** function privilege, and your license must include the Self Service feature.
- **See and use Admin Mode controls**: Your role must also include the **Maintain Service Request** function privilege.

## Service Request Management Options

The following table describes each action available on a Service Request button when Admin Mode is active.

| Action | Description |
|---|---|
| **Edit** | Opens the Service Request editor so you can modify the existing configuration. |
| **Copy** | Opens a copy of the Service Request in the editor with the ID cleared. You must provide a unique name before saving. The copy is saved as a new record. |
| **Delete** | Permanently removes the Service Request. A confirmation dialog appears before the deletion completes. |

![Service Request Management Options](../../../Resources/Images/SM/Managing-Service-Requests.png "Service Request Management Options")

For step-by-step instructions, see the following topics:

- [Editing Service Requests](Editing-Service-Requests.md)
- [Copying Service Requests](Copying-Service-Requests.md)
- [Deleting Service Requests](Deleting-Service-Requests.md)

## Related Topics

- [Enabling Admin Mode Editing](Enabling-Admin-Mode-Editing.md)
- [Creating Service Requests](Creating-Service-Requests.md)
