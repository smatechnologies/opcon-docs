---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying Resources
description: "How to copy an existing Resource in Enterprise Manager to create a new Resource with the same configuration."
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

# Copying Resources

A Resource is a numeric counter in OpCon that represents a finite pool of units. Jobs can require a set number of Resource units before they run, which limits concurrent executions and prevents contention. Copying a Resource duplicates its configuration — including the maximum value and documentation — so you can use it as a starting point for a new Resource without rebuilding settings from scratch.

:::note
The **Copy** button is available only when a Resource is selected and there are no unsaved changes in the editor.
:::

## Copy a Resource

To copy a Resource, complete the following steps:

1. In Enterprise Manager, select **Resources** under the **Administration** topic. The **Resources** screen opens.
2. In the **Select Resource** list, select the Resource you want to copy. To find a specific Resource, select **Find**.
3. On the **Resources** toolbar, select **Copy**. The **Copy Resource** dialog opens.
4. In the **New Resource Name** field, enter a unique name for the copy. The name must not exceed 20 characters.
5. Select **OK**. The copy is saved and automatically selected in the **Select Resource** list.
6. Select **Close** (to the right of the **Resources** tab) to close the **Resources** screen.

**Result:** A new Resource is created with the same maximum value and documentation as the original. The **Resources In Use** counter for the new Resource starts at zero.
