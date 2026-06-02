---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Changing Machines Status Table Column Order
description: "How to reorder columns in the Machines Status table in Enterprise Manager."
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

# Changing Machines Status Table Column Order

The **Machines Status** view in Enterprise Manager displays a table of defined machines and their current operational state. You can reorder the columns in this table to match your preferred layout. Enterprise Manager saves the column order automatically when you close the view and restores it the next time you open it.

## Change the column order

To change the column order in the Machines Status table, complete the following steps:

1. In the navigation panel, select **Machines Status** under the **Operation** category.
2. In the **Machines Status** table, drag a column heading to the preferred position and release.

**Result:** The column moves to the new position. Enterprise Manager saves the updated column order for your next session.

:::note
The Machines Status table includes the following columns: **Status**, **Name**, **Operating System**, **Last Update**, **Running Jobs**, **Groups**, **Socket**, **Version**, **TLS**, and **Activity**. All columns support reordering.
:::
