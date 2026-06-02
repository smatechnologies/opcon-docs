---
title: Defining Properties for Single Instance Jobs
description: "Use this procedure to define properties for single instance jobs in Enterprise Manager."
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

# Defining Properties for Single Instance Jobs

When a job is configured as a single instance job (the **Allow Multi-Instance** option is cleared), you can define a set of predefined instance properties on the **Instance Definition** tab. Each property follows the format `PropertyName=PropertyValue`. OpCon passes these properties to the job at run time.

To define properties for a single instance job, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Job Details** tab in the **Job Properties** section.
5. Clear the **Allow Multi-Instance** option if it is selected.
6. Select **Save** on the **Job Master** toolbar.
7. Select the **Instance Definition** tab.
8. In the **Define Property Values** field, enter a property definition using the format `PropertyName=PropertyValue`.
9. Select **Add**. The property appears in the **Instances** list.
10. Repeat steps 8 and 9 to add more properties.
11. Select **Save** on the **Job Master** toolbar to save the property definitions.
12. Select **Close** to close the **Job Master** screen.

**Result:** The predefined instance properties are saved to the job. OpCon uses these properties when the job runs.

:::note
The **Add** button is disabled after one property set is saved in single-instance mode. To define additional named sets of properties, enable the **Allow Multi-Instance** option on the **Job Details** tab first. Property names cannot contain the characters `= ' ( ) \ , |` or end with a trailing space.
:::
