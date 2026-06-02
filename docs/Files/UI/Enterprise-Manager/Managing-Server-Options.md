---
title: Managing Server Options
description: "Use the Server Options editor in Enterprise Manager to view and modify global OpCon server parameter values."
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

# Managing Server Options

The **Server Options** editor in Enterprise Manager lets you view and modify global OpCon server parameter values. For descriptions of every parameter and its default value, refer to [OpCon Server Options](../../../administration/server-options.md).

:::note
Only users assigned to the **ocadm** role can access the Server Options editor.
:::

## Modify a server option parameter

To modify a server option parameter, complete the following steps:

1. In the **Administration** navigation pane, select **Server Options**.
2. Select the tab that contains the parameter you want to modify.
3. Select the parameter.
4. Enter or select the new value in the **Parameter Information** area.
5. Select **Update** to apply the change, or select **Defaults** to reset the parameter to its system default.
6. Repeat steps 3–5 for each additional parameter you want to change.
7. Select **Save** on the **Server Options** toolbar.
8. Select **Close** to close the **Server Options** editor.

**Result:** The updated values are saved and the SAM reloads the configuration automatically.
