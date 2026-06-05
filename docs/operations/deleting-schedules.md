---
title: Deleting Daily Schedules
description: "Deleting Daily Schedules removes Completed or unprocessed schedules from the Daily tables."
product_area: Operations
audience: Operations Staff, System Administrator
version_introduced: "[see release notes]"
tags:
  - Procedural
  - Operations Staff
  - System Administrator
  - Schedules
last_updated: 2026-03-18
doc_type: procedural
---

# Deleting Daily Schedules

Deleting Daily Schedules removes Completed or unprocessed schedules from the Daily tables. OpCon does not delete schedules that are In Process or On Hold (and previously released). To delete a schedule that is In Process or On Hold, you must first cancel or mark all remaining jobs on the schedule as Finished OK or Failed, so that the schedule can terminate.

Continuous recommends keeping no more than two weeks of schedules in the Daily tables; SAM and the supporting services perform better with fewer days built.

Processing is managed by the SMASchedMan program. Refer to [SMASchedMan](../server-programs/request-router.md#smasched) in the **Server Programs** online help.

Schedule deletions can be managed by:

- Automatic schedule maintenance configured on each schedule definition — when enabled, SAM deletes daily schedules automatically each day
- Automation using:
  - OpCon events (refer to [Schedule-Related Events](../events/types.md#schedule))
  - The DoBatch utility (refer to [DoBatch](../utilities/Command-line-Utilities/DoBatch.md))
- Manual request through the graphical interfaces

If an automatic delete fails, SAM processes events on the `SMA_SKD_DELETE` job on the AdHoc Schedule. Refer to [SMA_SKD Jobs on the AdHoc Schedule](../objects/schedules.md#adhoc-schedule).

## Deleting a Daily Schedule in Solution Manager

To delete a daily schedule in Solution Manager, complete the following steps:

1. In Solution Manager, go to **Operations**.
2. Select the date containing the schedule you want to delete.
3. In the Schedules list, select the schedule.
4. Open the context menu for the schedule and select **Delete**.
5. Confirm the deletion when prompted.

**Result:** The schedule is removed from the Daily tables. Only schedules with a status of Completed or that have never been started are eligible for deletion.

## Deleting a Daily Schedule in Enterprise Manager

To delete a daily schedule in Enterprise Manager, complete the following steps:

1. In the Enterprise Manager navigation panel, select **Operations**.
2. In the **Daily list** view, locate the date and schedule you want to delete.
3. Right-click the schedule and select **Delete Schedule**.
4. Select **Yes** to confirm the deletion.

**Result:** The schedule is removed from the Daily tables. If the schedule cannot be deleted because it is In Process or On Hold, Enterprise Manager displays an error message.

## Automating Schedule Deletions

To automate daily schedule deletions, configure the **Auto Delete Days** setting on the schedule definition. When configured, SAM automatically queues a delete request each day for the schedule date that is the specified number of days in the past.

Deletions can also be triggered on demand using the `$SCHEDULE:DELETE` event or the DoBatch utility. Refer to [Schedule-Related Events](../events/types.md#schedule) and [DoBatch](../utilities/Command-line-Utilities/DoBatch.md) for syntax and usage.
