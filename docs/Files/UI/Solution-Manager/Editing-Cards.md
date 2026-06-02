---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Cards
description: "How to edit Vision cards in Solution Manager using the Vision Settings view."
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

# Editing Cards

Vision cards define the tag-based groupings that appear on the **Vision Live** page. You can edit a card's name, type, associated frequencies, thresholds, and role assignments from the **Vision Settings** view.

:::note
Editing Vision cards requires the **Maintain Vision Workspaces** privilege. The **Settings** button is only visible to users who hold this privilege.
:::

## Edit a Vision card

To edit a Vision card, complete the following steps:

1. In Solution Manager, go to **Vision**.
2. Select **Settings** in the toolbar on the **Vision Live** page.
3. In the card tree on the left, select the card you want to edit.
4. In the edit form that opens on the right, modify one or more of the following fields:

   | Field | Description |
   |---|---|
   | **Parent Card** | The group card that contains this card. |
   | **Type** | Read-only after creation. Displays **Group** or **Tag**. |
   | **Name** | The display name for the card. Must be unique within the parent group. |
   | **Instance** | (Tag cards only) The remote OpCon instance whose tags this card monitors. Leave blank to use the current instance. |
   | **Pattern** | (Tag cards only) The job tag pattern this card tracks. |
   | **Job Offset** | (Tag cards only) The day offset used to match jobs to the card. |
   | **Roles** | The roles that can view this card. The **ocadm** role and your own user role are required. |
   | **Thresholds** | QoS and SLA tolerable and critical percentage thresholds used in the Vision Health view. |
   | **Frequency(ies)** | (Tag cards only) The Vision frequencies associated with this card. At least one frequency is required. |

5. Select **OK** to save the card and close the form.
6. Select **Save** at the bottom of the **Vision Settings** view to commit all pending changes.

**Result:** The updated card settings take effect on the **Vision Live** page on the next refresh.
