---
title: Working in Admin Mode
description: "Admin Mode is a toggle on the Self Service page that exposes create, edit, copy, and delete controls for Service Requests and categories. It is available only to users with the Maintain Service Request function privilege."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Working in Admin Mode

Admin Mode is a toggle switch on the **Self Service** page in Solution Manager. When enabled, it exposes management controls that let you create, edit, copy, and delete Service Requests and categories directly from the Self Service view.

## Access requirements

The **Admin Mode** switch appears in the toolbar only if your assigned role includes the **Maintain Service Request** function privilege. Users without this privilege see the Self Service page in read-only view and cannot access Admin Mode.

To access the Self Service page at all, your role must also include the **View Service Requests** privilege, and your OpCon license must include the Self Service feature.

For details on function privileges, see [Function Privileges](../../../administration/privileges.md#function-privileges).

<!--
## Admin Mode Self Service page

The following screenshot shows the Self Service page as it appears with Admin Mode enabled.

![Admin Mode Self Service Screen Display](../../../Resources/Images/SM/Service-Request-View-Admin.png "Admin Mode Self Service Screen Display")
-->

## Enabling Admin Mode

To enable Admin Mode on the Self Service page, complete the following steps:

1. Go to **Self Service** in Solution Manager.
2. Select the **Admin Mode** toggle in the toolbar.

**Result:** The page refreshes to show management controls on each Service Request button and category, along with a **New Service Request** option at the top of the list. Admin Mode remains on for your session; the setting persists across page refreshes.

## What Admin Mode provides

When Admin Mode is active, the following controls become available:

| Control | Location | Action |
|---|---|---|
| **Edit** | Each Service Request button | Opens the Service Request editor |
| **Copy** | Each Service Request button | Creates a duplicate of the Service Request in the editor |
| **Delete** | Each Service Request button | Deletes the Service Request after confirmation |
| **Edit** | Each category header | Opens the category editor |
| **Delete** | Each category header | Deletes the category after confirmation |
| **New Service Request** | Top of the page | Opens the editor to create a new Service Request |

## Filtering Service Requests in Admin Mode

The filter bar at the top of the Self Service page works the same way in Admin Mode as it does in standard view. Use the following fields to narrow the list:

| Field | Description |
|---|---|
| **Filter by Name** | Filters Service Requests by name |
| **Filter by Role** | Filters Service Requests by the role they are assigned to |
| **Filter by Category** | Filters Service Requests by category |

Select **Filter** to apply the current filter values, or **Clear** to reset all filters.

## Related topics

- [Filter Service Requests](Filtering-Service-Requests.md)
- [Create Service Requests](Creating-Service-Requests.md)
- [Manage Service Requests](Managing-Service-Requests.md)
- [Stylize Service Requests](Stylizing-Service-Requests.md)
- [Set up OpCon Events](Setting-up-OpCon-Events.md)
- [Set up Privileges](Setting-up-Privileges.md)
- [Set up User Inputs](Setting-up-User-Inputs.md)
- [View Service Request Processes](Viewing-Service-Request-Process-Indicators.md)
