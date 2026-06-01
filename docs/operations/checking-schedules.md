---
title: Checking Daily Schedules
description: "Checking Daily Schedules validates job dependencies in the Daily tables to detect circular dependencies, unresolvable Requires dependencies, and unsatisfied Conflict or After dependencies."
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

# Checking Daily Schedules

Checking Daily Schedules validates job dependencies in the Daily tables. Run a schedule check against every new schedule and after major revisions to catch dependency problems before they affect production.

The check can detect:

- Circular dependencies (Slow mode only)
- Requires dependencies that cannot be resolved
- Conflict or After dependencies that are not satisfied

All schedule check processing is managed by SMASchedMan on the OpCon server. For details, refer to [SMASchedMan](../server-programs/request-router.md#smasched) in the **Server Programs** online help.

## Check Modes

When you initiate a schedule check through Enterprise Manager, you select one of three check modes:

| Mode | What It Checks |
|---|---|
| **Normal (No Circular)** | Validates Requires, Conflict, and After dependencies; skips circular dependency detection |
| **Slow (Circular)** | Validates all dependency types including circular dependencies; takes longer to complete |
| **Fast (Requires Only)** | Validates Requires dependencies only; skips After, Conflict, and circular dependency checking |

## Scope of Schedule Checks

- Checking a specific schedule does not check its subschedules. To check a subschedule, specify it as the schedule to check.
- To check all schedules and subschedules for a date, specify the date rather than a specific schedule name.

## Required Privileges

Users must have both of the following privileges to run a schedule check through Enterprise Manager:

- **Build Daily Schedules**
- **Delete Daily Schedules**

## Initiating a Schedule Check

### Check a Specific Schedule

To check a specific daily schedule, complete the following steps:

1. In Enterprise Manager, go to the Operations view.
2. Right-click the schedule you want to check.
3. Select **Maintenance** > **Check Schedule**.
4. In the dialog, select a check mode: **Normal (No Circular)**, **Slow (Circular)**, or **Fast (Requires Only)**.
5. Select **OK**.

**Result:** The check runs and the results display in the dialog. Any dependency problems found are listed by type.

### Check All Schedules for a Date

To check all schedules and subschedules for a specific date, complete the following steps:

1. In Enterprise Manager, go to the Operations view.
2. Right-click the date node you want to check.
3. Select **Schedules** > **Check Schedules**.
4. In the dialog, select a check mode: **Normal (No Circular)**, **Slow (Circular)**, or **Fast (Requires Only)**.
5. Select **OK**.

**Result:** The check runs against all schedules and subschedules built for that date. Any dependency problems found are listed by type.

## Automating Schedule Checks

Schedule checks can be automated using:

- **OpCon events**: Use the `$SCHEDULE:CHECK` event to check a specific schedule or `$SCHEDULE:CHECKALL` to check all schedules for a date. Both events require the **Build Daily Schedules** privilege. For details, refer to [Schedule-Related Events](../events/types.md#schedule).
- **DoBatch utility**: Submit check requests from the command line. For details, refer to [DoBatch](../utilities/Command-line-Utilities/DoBatch.md).

## Failure Handling

If a schedule check is initiated through an OpCon event and the check fails, SAM processes the events defined on the `SMA_SKD_CHECK` job on the AdHoc schedule. This allows you to configure notifications — such as email alerts — when an automated schedule check fails.

:::note
Enterprise Manager check processes give interactive feedback and do not use the `SMA_SKD_CHECK` job for notification. The `SMA_SKD_CHECK` job applies only to checks initiated through events or automated processes.
:::

For details on configuring the `SMA_SKD_CHECK` job, refer to [SMA_SKD Jobs on the AdHoc Schedule](../objects/schedules.md#adhoc-schedule).
