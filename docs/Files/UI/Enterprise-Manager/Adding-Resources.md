---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Adding Resources
description: "Use this procedure to add a Resource in Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
  - Resources
last_updated: 2026-03-18
doc_type: procedural
---

# Adding Resources

A Resource is a numeric variable that represents a finite pool of units. Jobs can require a set number of Resource units to run, which limits concurrency and prevents Resource contention across your automation environment.

To add a Resource, complete the following steps:

1. Under the **Administration** topic, select **Resources**. The **Resources** screen opens.
2. On the **Resources** toolbar, select **Add**.
3. In the **Resource Name** field, enter an alphanumeric name for the Resource.
4. *(Optional)* In the **Documentation** field, enter notes that describe the Resource's purpose.
5. In the **Max Resources** field, enter a numeric value for the maximum number of Resource units available. The default is `0`.
6. On the **Resources** toolbar, select **Save**.

**Result:** The new Resource is saved and appears in the Resource list.

7. Select **Close** (to the right of the **Resources** tab) to close the **Resources** screen.
