---
lang: en-us
title: Defining Properties for Single-Instance Schedules
description: "Define instance properties on a single-instance schedule in Enterprise Manager so OpCon can substitute property values when the schedule runs."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
  - Schedule
last_updated: 2026-06-01
doc_type: procedural
---

# Defining Properties for Single-Instance Schedules

Instance properties let you pass named values into a schedule at build time. For a single-instance schedule, you define one set of `PropertyName=PropertyValue` pairs that OpCon resolves when the schedule runs.

## Define properties for a single-instance schedule

To define properties for a single-instance schedule, complete the following steps:

1. In Enterprise Manager, select **Schedule Master** under the **Administration** topic. The **Schedule Master** screen opens.
2. Select the schedule in the **Schedule Selection** list.
3. Select the **Schedule** tab in the **Schedule Details** frame.
4. Clear the **Multi-Instance** option if it is selected.
5. Select the **Instance Definition** tab in the **Schedule Details** frame.
6. In the **Define Property Values** field, type one or more property definitions using the format `PropertyName=PropertyValue`. Separate multiple definitions with a semicolon (`;`), for example: `PropertyName1=PropertyValue1;PropertyName2=PropertyValue2`.
7. Select **Add**. The property definition appears in the **Instances** list.
8. Select **Save** on the **Schedule Master** toolbar to save the property definitions.
9. Select **Close** to close the **Schedule Master** screen.

**Result:** The property definitions are saved to the schedule. OpCon substitutes the defined values when the schedule is built.

:::note
If the schedule has named instances defined, you cannot clear the **Multi-Instance** option until those instances are removed.
:::
