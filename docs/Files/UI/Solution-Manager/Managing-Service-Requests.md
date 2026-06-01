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

## Overview

In Admin Mode, each Service Request button displays three action buttons in its upper-right corner: **Edit**, **Copy**, and **Delete**. Use these buttons to modify, duplicate, or remove a Service Request.

The **Admin Mode** toggle is visible only to users whose role includes the **Maintain Service Request** function privilege.

To enable Admin Mode, see [Enabling Admin Mode Editing](Enabling-Admin-Mode-Editing.md).

### Service Request Management Options

![Service Request Management Options](../../../Resources/Images/SM/Managing-Service-Requests.png "Service Request Management Options")

## Management Actions

The following table describes each action available on a Service Request button when Admin Mode is active.

| Action | Button | Description |
|---|---|---|
| Edit | **Edit** | Opens the Service Request editor so you can modify the existing configuration. |
| Copy | **Copy** | Creates a duplicate of the Service Request. <!-- GAP: whether the editor explicitly prompts for a unique name before saving is unverified --> The copy opens in the editor with its ID cleared so it is saved as a new record. |
| Delete | **Delete** | Permanently removes the Service Request. A confirmation dialog appears before the deletion completes. |

For step-by-step instructions, see the following topics:

- [Editing Service Requests](Editing-Service-Requests.md)
- [Copying Service Requests](Copying-Service-Requests.md)
- [Deleting Service Requests](Deleting-Service-Requests.md)

## Access Requirements

- To view the Self Service page, your role must include the **View Service Requests** function privilege and your license must include the Self Service feature.
- To see Admin Mode controls and manage Service Requests, your role must include the **Maintain Service Request** function privilege.

## Related Topics

- [Enabling Admin Mode Editing](Enabling-Admin-Mode-Editing.md)
- [Creating Service Requests](Creating-Service-Requests.md)
