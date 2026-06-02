---
title: Deleting Global Properties
description: "Deleting a global property requires three procedures: removing the property from the daily tables, removing it from the master tables, then deleting the property."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Deleting Global Properties

Deleting a global property is a three-step process: first remove all token references from the daily tables, then remove them from the master tables, and finally delete the property itself. Complete the procedures in this order to avoid broken token references in active or future schedules.

:::warning
Deletion is permanent. OpCon does not provide a way to recover a deleted global property. Verify the property is no longer needed before proceeding.
:::

:::note
System-managed global properties cannot be deleted. The **Remove** button is disabled when a system-managed property is selected.
:::

## Remove the Global Property from the Daily Tables

To remove all token references from the daily tables, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Select the **arrow** to expand the **date** for the schedule.
3. Select the **arrow** to expand the **schedule**.
4. Select the **job**.
5. Select **Edit Daily** in the **Maintenance** frame at the bottom-right of the screen.
6. In the **Command Line** text box, replace any tokens representing the property to delete with a hardcoded value or another token.
7. Select **Save** on the **Job Daily** toolbar.
8. Select the **Events** tab.
9. Select the **OpCon event** in the **Events** list box.
10. Select **Edit** in the **Events** frame. The **Event Definition Wizard** displays.
11. Replace any tokens in the OpCon event representing the property to delete with a hardcoded value or another token.
12. Select **OK** to save the changes.
13. Repeat steps 4–12 for all jobs using the token.
14. Select **Close** to close the **Job Daily** screen.
15. Select **Close** to close the **Daily Maintenance** screen.

**Result:** All daily job definitions and events no longer reference the global property.

## Remove the Global Property from the Master Tables

To remove all token references from the master tables, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Select the **arrow** to expand the **date** for the schedule.
3. Select the **arrow** to expand the **schedule**.
4. Select the **job**.
5. Select **Edit Master** in the **Maintenance** frame at the bottom-right of the screen.
6. In the **Command Line** text box, replace any tokens representing the property to delete with a hardcoded value or another token.
7. Select **Save** on the **Job Master** toolbar.
8. Select the **Events** tab.
9. Select the **OpCon event** containing the token.
10. Select **Edit** in the **Events** frame. The **Event Definition Wizard** displays.
11. Replace any tokens in the OpCon event representing the property to delete with a hardcoded value or another token.
12. Select **OK** to save the changes.
13. Repeat steps 4–12 for all jobs using the token.
14. Select **Close** to close the **Job Master** screen.
15. Select **Close** to close the **Daily Maintenance** screen.

**Result:** All master job definitions and events no longer reference the global property.

## Delete the Global Property

To permanently delete the global property, complete the following steps:

1. Select **Global Properties** under the **Administration** topic. The **Global Properties** screen displays.
2. Select the global property in the **Select Global Property** list.
3. Select **Remove** on the **Global Properties** toolbar.
4. Select **Yes** to confirm the deletion, or **No** to cancel.

**Result:** The global property is permanently removed from OpCon.
