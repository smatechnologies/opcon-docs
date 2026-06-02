---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Showing Duplicate Frequency Names Only
description: "Filter the Frequency Manager to display only frequencies that share a name, then resolve duplicates using the Frequency Definition Wizard."
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

# Showing Duplicate Frequency Names Only

The **Frequency Manager** in Enterprise Manager lets you filter the frequency list to show only frequencies that share the same name. Duplicate frequencies with the same name are highlighted in matching colors so you can identify them at a glance and resolve the duplicates.

:::note
Selecting **Show duplicate frequency names only** automatically clears the **Show duplicate frequency definitions only** option. The two filters are mutually exclusive.
:::

## View and resolve duplicate frequency names

To view and resolve duplicate frequency names, complete the following steps:

1. In Enterprise Manager, select **Frequency Manager** under the **Management** topic.

   **Result:** The **Frequency Manager** screen opens.

2. Select the **Show duplicate frequency names only** option.

   **Result:** The frequency list filters to show only frequencies whose names appear more than once. Frequencies that share a name are highlighted in the same color.

3. Review the color-grouped entries to identify which frequency names have duplicates.

4. Right-click the frequency name you want to resolve and select **Edit**.

   **Result:** The **Frequency Definition Wizard** opens.

5. Modify the frequency definition so it matches the intended definition for that frequency name.

6. Select **Finish**.

   **Result:** The wizard saves the updated frequency definition and closes.

7. Repeat steps 4–6 for each remaining duplicate frequency name until no duplicates remain.

8. Clear the **Show duplicate frequency names only** option to return to the full frequency list.

9. Select **Close** to close the **Frequency Manager** screen.
