---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Machine Information
description: "Use this procedure to view or edit machine information and advanced machine properties in Enterprise Manager."
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

# Editing Machine Information

Use this procedure to view or edit the definition and advanced properties of a machine in Enterprise Manager. You must have the **Maintain Machines** function privilege to save changes.

## Edit machine information

To edit machine information, complete the following steps:

1. Select **Machines Status** under the **Operation** topic in the navigation panel.
2. Select the **Table** tab or the **Map** tab.
3. Right-click the machine you want to edit.
4. Select **Edit Machine** from the context menu.

   The **Machines** screen opens.

5. Edit the machine information fields as needed.
6. Select **Save** on the **Machines** toolbar to save the changes.

   **Result:** The machine definition is updated in the OpCon database.

## Edit advanced machine properties

To edit advanced machine properties, complete the following steps:

1. With the **Machines** screen open, select the **Open Advanced Settings Panel** link in the **Advanced Settings** section.

   The **Advanced Machine Properties** dialog opens.

   :::note
   If the machine status is **Enabled** or **Limited**, the dialog opens in read-only mode because the machine is actively communicating with SAM.
   :::

2. Edit the machine properties as needed.
3. Select **Save** to save the changes.
4. Select **Close** (to the right of the **Machines** tab) to close the **Machines** screen.

   **Result:** The updated advanced machine properties are saved to the OpCon database.
