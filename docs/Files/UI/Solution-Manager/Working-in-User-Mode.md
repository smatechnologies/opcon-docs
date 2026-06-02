---
title: Working in User Mode
description: "Users without the Maintain Service Request privilege see the Self Service page in user mode, which shows only the Service Request buttons their roles are granted access to."
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

# Working in User Mode

User mode is the default view of the **Self Service** page for any user who does not hold the **Maintain Service Request** function privilege. In user mode, the page displays only the Service Request buttons that the user's assigned roles are granted access to. The admin mode toggle does not appear in the toolbar.

Users who do hold the **Maintain Service Request** privilege see an admin mode toggle in the toolbar, which lets them switch between managing Service Requests and running them. See [Self Service](../../../Resources/Images/SM/Service-Request-View-User.png) for the admin view.

## User Mode Self Service Page

The following screenshot shows the Self Service page as it appears in user mode.

![User Mode Self Service Screen Display](../../../Resources/Images/SM/Service-Request-View-User.png "User Mode Self Service Screen Display")

## Access Requirements

To open the **Self Service** page (in any mode), a user must have:

- The **View Service Requests** function privilege assigned through their role.

Users with only **View Service Requests** always see the page in user mode. The admin mode toggle is visible only to users who also hold the **Maintain Service Request** privilege.

## Filtering Service Requests

In user mode, you can narrow the list of visible Service Requests using the filter fields at the top of the page:

| Filter | Description |
|---|---|
| **Filter by Name** | Shows only Service Requests whose names match the text you enter. |
| **Filter by Category** | Shows only Service Requests assigned to the category you enter. |
| **Filter by Role** | Shows only Service Requests granted to the selected role. |

## Related Topics

- [Run Service Requests](Running-Service-Requests.md)
- [Filter Service Requests](Filtering-Service-Requests.md)
- [View Service Request Processes](Viewing-Service-Request-Process-Indicators.md)
