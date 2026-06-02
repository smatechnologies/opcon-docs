---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Showing Duplicate Frequency Definitions Only
description: "How to filter Frequency Manager to show only frequencies that share an identical definition, and how to consolidate them by renaming."
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

# Showing Duplicate Frequency Definitions Only

The **Show duplicate frequency definitions only** option in Frequency Manager filters the frequency list to display only frequencies that share an identical definition. Frequencies with duplicate definitions are grouped by color to make them easy to identify. After reviewing duplicates, you can consolidate them by renaming one frequency to match another — OpCon merges all jobs that reference the renamed frequency onto the target name.

:::note
**Show duplicate frequency definitions only** and **Show duplicate frequency names only** are mutually exclusive. Selecting one option automatically clears the other.
:::

## View and consolidate duplicate frequency definitions

To view duplicate frequency definitions and consolidate them, complete the following steps:

1. In Enterprise Manager, select **Frequency Manager** under the **Management** topic. The **Frequency Manager** screen displays.
2. Select the **Show duplicate frequency definitions only** option. The frequency list refreshes to show only frequencies that have an identical definition. Entries that share a definition are highlighted in the same color.
3. Review the duplicate frequency definitions displayed.
4. Right-click the frequency name you want to consolidate and select **Rename**. The **Frequency Definition Wizard** displays.
5. In the **Frequency Name** field, enter the name of the existing frequency whose definition you want to keep.
6. Select **Finish**. OpCon renames the frequency and updates all jobs that referenced the old name.
7. Clear the **Show duplicate frequency definitions only** option to return to the full frequency list.
8. Select **Close** to close the **Frequency Manager** screen.

**Result:** The renamed frequency no longer appears as a duplicate. All jobs that previously used the old frequency name now reference the consolidated frequency.
