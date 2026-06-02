---
title: Deleting Un-used User-defined Calendars
description: "Step-by-step procedure for removing user-defined calendars no longer in use from Enterprise Manager, including removing calendar references from Schedule Master and Job Master records first."
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

# Deleting Un-used User-defined Calendars

:::note
Delete user-defined calendars that are no longer in use to control the size of database tables. Holiday calendars are automatically deleted when the associated schedule is deleted.
:::

Before you can delete a user-defined calendar, you must remove all references to it from Schedule Master and Job Master records. Enterprise Manager blocks deletion if any schedule or job/frequency still references the calendar.

## Remove the Calendar from Schedule Master

To remove the calendar from Schedule Master records, complete the following steps:

1. Select **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays.
2. Select the schedule in the **Schedule** list.
3. Select the **Frequency** tab.
4. Select the frequency that references the calendar you want to delete, then select **Remove**.
5. Select **Yes** to confirm the removal, or **No** to cancel.
6. Repeat steps 4–5 for every frequency in every schedule that references the calendar.

## Remove the Calendar from Job Master

To remove the calendar from Job Master records, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays.
2. Select the schedule name in the **Schedule** list.
3. Select the job name in the **Job** list.
4. Select the **Frequency** tab.
5. Select the frequency that references the calendar you want to delete, then select **Remove**.
6. Select **Yes** to confirm the removal, or **No** to cancel.
7. Repeat steps 3–6 for every job in every schedule that references the calendar.
8. Select **Close** (to the right of the **Job Master** tab) to close the **Job Master** screen.

## Delete the Calendar

To delete the calendar, complete the following steps:

1. Select **Calendars** under the **Administration** topic. The **Calendars** screen displays.
2. Select the calendar in the **Selection** list.
3. Review the **Schedules using for holidays** list. If any schedule is listed, complete [Remove the Calendar from Schedule Master](#remove-the-calendar-from-schedule-master) before continuing.
4. Review the **Schedules/Jobs/Frequencies using this calendar** list. If any record is listed, complete [Remove the Calendar from Job Master](#remove-the-calendar-from-job-master) before continuing.
5. Select **Remove** on the **Calendars** toolbar.
6. Select **Yes** to confirm the deletion, or **No** to cancel.

**Result:** The calendar is permanently removed from OpCon. This action cannot be undone.

## FAQs

**Q: Can a deleted user-defined calendar be recovered?**

No. Deleting a user-defined calendar permanently removes it from OpCon. Verify the calendar is no longer needed before deleting it.

**Q: What should you check before deleting a user-defined calendar?**

Confirm that no schedules, jobs, or frequencies reference the calendar. Enterprise Manager displays a cross-reference dialog and blocks deletion if references still exist.
