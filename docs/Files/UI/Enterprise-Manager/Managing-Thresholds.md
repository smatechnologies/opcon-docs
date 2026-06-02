---
title: Managing Thresholds
description: "The Thresholds editor in Enterprise Manager defines and maintains OpCon Thresholds, displaying a list of thresholds and their corresponding values."
product_area: Enterprise Manager
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

# Managing Thresholds

The **Thresholds** editor in Enterprise Manager defines and maintains OpCon Thresholds. It displays a list of defined thresholds and their corresponding values. For conceptual background, refer to [Thresholds](../../../objects/thresholds.md).

## Opening the Thresholds Editor

To open the Thresholds editor, complete the following steps:

1. In the Enterprise Manager navigation pane, select **Administration**.
2. Select **Thresholds**.

**Result:** The **Thresholds** editor opens, displaying the list of existing thresholds.

## Thresholds Toolbar

The **Thresholds** toolbar provides the following actions:

| Button | Description |
|---|---|
| **Add** | Creates a new threshold record. |
| **Save** | Saves changes to the selected threshold. |
| **Copy** | Copies the selected threshold to a new threshold with a different name. |
| **View Audit** | Opens the audit history for the selected threshold. |
| **Cross References** | Displays all jobs in the Master and Daily tables that reference the selected threshold as a dependency or update. |
| **Delete** | Deletes the selected threshold. A threshold cannot be deleted while cross-references exist. |

![Thresholds toolbar](../../../Resources/Images/EM/EMcalendarstoolbar.png "Thresholds toolbar")

## Threshold Fields

Each threshold record contains the following fields:

| Field | Required | Description |
|---|---|---|
| **Name** | Yes | A unique alphanumeric name for the threshold. Maximum 20 characters. |
| **Threshold Value** | Yes | A numeric value for the threshold. Minimum 0; maximum 2,147,483,647. Defaults to 0. |
| **Documentation** | No | Free-text notes describing the threshold's purpose. Maximum 4,000 characters. |

## Related Topics

- [Adding Thresholds](Adding-Thresholds.md)
- [Editing Thresholds](Editing-Thresholds.md)
- [Viewing Additional Threshold Information](Viewing-Additional-Threshold-Info.md)
- [Copying Thresholds](Copying-Thresholds.md)
- [Deleting Thresholds](Deleting-Thresholds.md)
