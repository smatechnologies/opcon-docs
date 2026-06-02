---
title: Adding Properties to Daily Schedule Instances
description: "Add instance properties to a daily Schedule in Enterprise Manager to pass runtime values to jobs within that Schedule."
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

# Adding Properties to Daily Schedule Instances

Instance properties let you pass named values to a specific daily Schedule instance at runtime. You define each property as a `PropertyName=value` pair. OpCon resolves these values when the Schedule runs.

To add properties to a daily Schedule instance, complete the following steps:

1. In Enterprise Manager, select **Daily Maintenance** under the **Operation** topic.
2. Select the arrow to expand the date that contains the Schedule.
3. Select the Schedule you want to edit.
4. In the **Maintenance** group, select **Edit Daily**.
5. In the Schedule Daily editor, select the **Instance Definition** tab.
6. In the property definition field, enter the property in `PropertyName=value` format.

   To define multiple properties in a single entry, separate each pair with a semicolon — for example, `Region=West;Env=Prod`.

   Property names cannot contain the characters `= ' ( ) \ , |` and cannot end with a space. The property definition field accepts up to 4,000 characters.

7. Select **Add**.
8. Repeat steps 6–7 for each additional property.
9. On the **Schedule Daily** toolbar, select **Save**.

**Result:** The properties are saved to the daily Schedule instance and are available for token resolution when the Schedule runs.
