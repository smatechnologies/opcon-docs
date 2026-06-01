---
title: Building Daily Schedules
description: "Building Daily schedules copies qualifying Master schedules and jobs for specified dates into the active Daily processing tables for SAM."
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

# Building Daily Schedules

Building Daily schedules copies qualifying Master schedules and jobs for specified dates into the active Daily processing tables for SAM. Build schedules before their start times to allow dependencies to resolve before jobs become eligible to run.

:::note
If you build a schedule for a past date or a date range that starts in the past, OpCon automatically places those schedule instances On Hold. You must manually release them before they will process.
:::

When you build a schedule, you can configure the following options:

- **Date range** — Set a start date (**From**) and end date (**To**) to build multiple days in a single request.
- **Overwrite** — Choose whether to replace schedules already in the Daily tables. Schedules currently In Process cannot be overwritten. Multi-Instance schedules are never overwritten; each build creates a new instance.
- **Build status** — Set the initial status to **On Hold** or **Released**. The default is On Hold.
- **Property definitions** — Set specific property definitions for each schedule instance. If you do not supply them, OpCon builds all defined instances automatically. For schedules with no defined instances, enter property definitions in the format:

  ```
  PName1=PValue1;PName2=PValue2…
  ```

  For more information, refer to [Properties](../objects/properties.md).

All schedule build processing is managed by SMASchedMan on the OpCon server. For details, refer to [SMASchedMan](../server-programs/request-router.md#smasched).

![Schedule Build Process](../Resources/Images/Concepts/schedulebuildprocess.png "Schedule Build Process")

## Build methods

Daily schedules can be built using the following methods:

| Method | Description |
|---|---|
| **Automatic** | When automatic schedule maintenance is configured, SAM builds Daily schedules automatically. Refer to [Schedule Maintenance](../objects/schedules.md#schedule-maintenance). |
| **Automated via events or utilities** | Use [Schedule-Related Events](../events/types.md#schedule) or the [DoBatch](../utilities/Command-line-Utilities/DoBatch.md) utility to trigger builds. |
| **Failure handling** | If an automatic build fails, SAM processes events on the `SMA_SKD_BUILD` job on the AdHoc schedule. Refer to [SMA_SKD Jobs on the AdHoc Schedule](../objects/schedules.md#adhoc-schedule). |
| **Manual** | Request builds through Solution Manager or Enterprise Manager. |

## Build a schedule in Solution Manager

To build a Daily schedule in Solution Manager, complete the following steps:

1. In Solution Manager, go to **Operations** > **Schedule Build**.
2. In the **From** field, select the start date for the build.
3. In the **To** field, select the end date for the build.
4. Select **On Hold** or **Released** to set the initial status of the built schedules.
5. To replace schedules already in the Daily tables, enable the **Overwrite Existing Schedules** option.
6. Select one or more schedules from the schedule list.
7. Select **Next** to proceed to the instance definition step.
8. If the selected schedules require property definitions or named instances, enter the required values on the instance definition screen.
9. Select **Build** to submit the build request.

**Result:** OpCon submits the build request to SMASchedMan. The build progress screen displays the status of each schedule being built. After the build completes, you can select a built schedule to view it in the Operations processes view.

:::note
The **Schedule Build** view requires the **Build Daily Schedules** function privilege. Contact your system administrator if the option is not available.
:::

## Build a schedule in Enterprise Manager

To build a Daily schedule in Enterprise Manager, complete the following steps:

1. In Enterprise Manager, select **Schedule Build** from the **Operation** navigation pane.
2. In the Build Schedules dialog, select the schedules to build from the schedule list.
3. In the **Start** field, set the start date for the build.
4. In the **Stop** field, set the end date for the build.
5. To replace schedules already in the Daily tables, select the **Overwrite existing schedules** option.
6. To define property values for schedule instances, select **Define schedule instance**.
7. Select **Build**.

**Result:** SMASchedMan processes the build request and returns results in the **Build Results** table. Each row shows the date, schedule name, and result.
