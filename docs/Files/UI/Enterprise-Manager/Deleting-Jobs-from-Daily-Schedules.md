---
title: Deleting Jobs from Daily Schedules
description: "Use this procedure to delete a job from a Daily Schedule in Enterprise Manager."
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

# Deleting Jobs from Daily Schedules

Deleting a job from a Daily Schedule permanently removes that job instance from the schedule for the selected date. This action cannot be undone. The master job definition is not affected.

:::warning
You must have the **Delete Jobs from Daily Schedules** departmental function privilege to delete a job. The **Delete** button is unavailable when a job is currently running or processing events.
:::

## Delete a job from a Daily Schedule

To delete a job from a Daily Schedule, complete the following steps:

1. In Enterprise Manager, select **Daily Maintenance** under the **Operation** topic.
2. Select the expand arrow next to the date that contains the schedule.
3. Select the expand arrow next to the schedule to view its jobs.
4. Select the job you want to delete.
5. Select **Delete** in the **Maintenance** frame.
6. Select **OK** to confirm the deletion, or select **Cancel** to discard the action.
7. Select **Close** to close the **Daily Maintenance** view.

**Result:** The job is permanently removed from the Daily Schedule for the selected date. The master job definition remains unchanged.
