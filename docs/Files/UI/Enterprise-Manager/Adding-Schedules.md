---
title: Adding Schedules
description: "Use this procedure to add a Schedule in Enterprise Manager."
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

# Adding Schedules

To add a Schedule in Enterprise Manager, complete the following steps:

1. Select **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays.
2. Select ![Add](../../../Resources/Images/EM/EMadd.png) **Add** on the **Schedule Master** toolbar.
3. Enter a schedule name (up to 40 characters) in the **Name** field.
4. *(Optional)* Enter notes about the Schedule in the **Documentation** field. The field accepts up to 4,000 characters.
5. Select the **Schedule** tab.
6. *(Optional)* Enter a start time in the **Start Time** field in the **Schedule Details** section. If left blank, the Schedule starts at `00:00` (midnight).
7. Select the days of the week the Schedule runs under **Workdays per Week**.
8. *(Optional)* Select any of the following options as needed:

   | Option | Description |
   |---|---|
   | **Multi-Instance** | Allows the Schedule to run as more than one instance on the same date. |
   | **SubSchedule** | Designates the Schedule as a container Schedule called by a Container job. |
   | **Conflict with Other Days** | Prevents the Schedule from running if it conflicts with Schedules on other days. |
   | **Use Master Holiday** | Applies the Master Holiday calendar to the Schedule. Selected by default. |

9. *(Optional)* Select an additional holiday calendar from the **Additional Holidays** list.
10. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar, then select **OK** to confirm.

**Result:** The Schedule is saved and appears in the Schedule Master list.

To close the editor, select **Close** (to the right of the **Schedule Master** tab).
