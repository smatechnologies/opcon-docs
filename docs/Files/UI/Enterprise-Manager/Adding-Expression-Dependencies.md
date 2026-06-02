---
title: Adding Expression Dependencies
description: "Add an expression dependency to a job in Enterprise Manager so the job only runs when a specified expression evaluates to True."
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

# Adding Expression Dependencies

An expression dependency controls whether a job is eligible to run based on a Boolean expression. OpCon evaluates the expression before starting the job; the job does not start until the expression resolves to `True`. You can set one expression at the job level and a separate expression per frequency.

To add an expression dependency to a job, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Dependencies** tab in the **Job Properties** frame.
5. Select the **Expression Dependency** tab.
6. Enter the expression in the **Job Expression** field. The expression must resolve to `True` before the job starts.
7. Select a frequency in the **Frequency List**.
8. Enter the expression in the **Frequency Expression** field. The expression must resolve to `True` before the job starts for the selected frequency.
9. Select **Save** on the **Job Master** toolbar.
10. Select **Close** (to the right of the **Job Master** tab) to close the screen.

**Result:** The expression dependency is saved to the job definition. OpCon evaluates the expression each time the job is eligible to run and holds the job until the expression resolves to `True`.

:::note
The **Frequency Expression** field is disabled until you select a frequency in the **Frequency List**. Each frequency can have its own expression.
:::
