---
title: Defining Properties for Multi-Instance Schedules
description: "Use this procedure to define instance properties for a multi-instance schedule in Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-06-02
doc_type: procedural
---

# Defining Properties for Multi-Instance Schedules

When a schedule is marked as multi-instance and the **Properties** option is selected, OpCon builds one schedule instance for each property set you define. Each property set is a semicolon-delimited list of `PropertyName=PropertyValue` pairs.

To define properties for a multi-instance schedule, complete the following steps:

1. Select **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays.
2. Select the schedule in the **Schedule Selection** list.
3. Select the **Schedule** tab in the **Schedule Details** frame.
4. Select the **Multi-Instance** option in the **Schedule Properties** frame.
5. Select the **Instance Definition** tab in the **Schedule Details** frame.
6. Select the **Properties** option.
7. Select the **Build an instance for each set of Properties** option.
8. Enter a property set using the format `PropertyName=PropertyValue`, separating multiple property pairs with a semicolon (`;`). For example: `PName1=PValue1;PName2=PValue2`.
9. Select **Add**.
10. Repeat steps 8 and 9 for each additional instance.
11. Select ![Green circle with white checkmark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar.
12. Select **Close** to close the **Schedule Master** screen.

**Result:** OpCon saves the property definitions. When the schedule is built, one instance is created for each property set.

:::note
You cannot clear the **Multi-Instance** option after property sets are defined. Remove all property sets before disabling multi-instance.
:::
