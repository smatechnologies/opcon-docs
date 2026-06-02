---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying Global Properties
description: "Copy a Global Property in Enterprise Manager to create a duplicate with a new name, reusing the existing value, documentation, and encryption settings."
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

# Copying Global Properties

Copying a Global Property creates a new property that inherits the value, documentation, and encryption settings of the original. Use this approach when you want an existing property as the starting point for a new one rather than configuring the new property from scratch.

To copy a Global Property, complete the following steps:

1. Under the **Administration** topic, select **Global Properties**. The **Global Properties** screen opens.
2. In the **Global Properties** list, select the property you want to copy.
3. On the **Global Properties** toolbar, select **Copy**. The **Copy Global Property** dialog opens.
4. In the **New Global Property Name** field, enter a unique name of up to 64 characters.
5. Select **OK**.

**Result:** The new Global Property is saved to the OpCon database with the same value, documentation, and encryption settings as the original. The copy appears in the **Global Properties** list and is available for reference in job definitions and events.

6. Select **Close** to close the **Global Properties** screen.

:::note
The **Copy** button is only available when a property is selected and the editor has no unsaved changes. Save or discard any pending changes before copying.
:::
