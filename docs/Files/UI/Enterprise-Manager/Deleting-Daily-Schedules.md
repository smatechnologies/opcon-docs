---
title: Deleting Daily Schedules
description: Delete one or more daily schedule instances from the Daily Maintenance view in Enterprise Manager.
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

# Deleting Daily Schedules

Use the **Daily Maintenance** view in Enterprise Manager to permanently remove a daily schedule instance for a specific date. Deletion requires the **Delete Daily Schedules** function privilege. A schedule that is currently running cannot be deleted.

:::warning
Deleting a daily schedule permanently removes it from OpCon. This action cannot be undone. Verify the schedule is no longer needed before proceeding.
:::

## Delete a single daily schedule

To delete a single daily schedule, complete the following steps:

1. Under the **Operation** topic, select **Daily Maintenance**. The **Daily Maintenance** view opens.
2. Select the expand arrow next to the date that contains the schedule you want to delete.
3. Select the schedule to delete.
4. In the **Maintenance** group at the bottom-right of the view, select **Delete**.
5. When prompted, select **OK** to confirm the deletion or **Cancel** to cancel.

**Result:** The daily schedule is permanently removed from OpCon for that date.

## Delete all schedules for a date

To delete all schedules for a specific date, complete the following steps:

1. Under the **Operation** topic, select **Daily Maintenance**. The **Daily Maintenance** view opens.
2. Select the date node in the tree to highlight the entire date.
3. In the **Maintenance** group at the bottom-right of the view, select **Delete**.
4. When prompted, select **OK** to confirm the deletion or **Cancel** to cancel.

**Result:** All daily schedule instances for the selected date are permanently removed from OpCon.

## FAQs

**Q: Can a deleted daily schedule be recovered?**

No. Deleting a daily schedule permanently removes it from OpCon. Verify the schedule is no longer needed before deleting it.

**Q: Why is the Delete button unavailable?**

The **Delete** button is unavailable when no schedule is selected, when the selected schedule is currently running, or when your user role does not have the **Delete Daily Schedules** function privilege. Contact your OpCon administrator to request the required privilege.

## Glossary

**Daily schedule**: An instance of a master schedule built for a specific date. It contains the jobs scheduled to run on that date and tracks their execution status.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
