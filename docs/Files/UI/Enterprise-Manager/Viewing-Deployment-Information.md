---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Viewing Deployment Information
description: "View schedule deployment information on the Deploy Info tab in the Schedule Master editor in Enterprise Manager."
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

# Viewing Deployment Information

The **Deploy Info** tab in the [Schedule Master](Using-Schedule-Master.md) editor displays read-only deployment information for a schedule that has been deployed to a local OpCon instance. If the schedule has not been deployed, the tab displays **N/A**.

The tab shows the following fields when deployment information is available:

| Field | Description |
|---|---|
| **Version** | The version number of the deployed package. |
| **Package** | The name of the deployment package. |
| **Description** | The description associated with the deployment package. |
| **Record Id** | The unique identifier for the deployment record. |
| **Deployed** | The user who performed the deployment and the deployment date and time. |

To view deployment information for a schedule, complete the following steps:

1. In Enterprise Manager, select **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays.
2. Select the schedule you want to view.
3. Select the **Deploy Info** tab.

**Result:** The tab displays the deployment details for the selected schedule. If the schedule has not been deployed, the tab displays **N/A**.

For conceptual information about schedule deployment, refer to [Schedule Deployment Information](Schedule-Deployment-Information.md).
