---
title: Schedule Tab
description: "Reference for the Schedule tab in the Schedule Master editor, covering schedule details, properties, and automatic maintenance settings."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: reference
---

# Schedule Tab

The **Schedule** tab in the [**Schedule Master**](Using-Schedule-Master.md) editor is where you configure the core settings for a Schedule, including its start time, workdays, holiday calendars, schedule properties, and automatic build and delete maintenance. For conceptual background, refer to [Schedules](../../../objects/schedules.md).

## Schedule Details

| Field | Description |
|---|---|
| **Start Time** | The time of day the Schedule becomes eligible to run, based on a 24-hour clock. Leave blank to use `00:00` (midnight). For a SubSchedule, SAM uses this value only to calculate job start offsets — the Container job controls when the SubSchedule actually starts. |
| **Workdays per Week** | The days of the week that OpCon treats as working days for this Schedule. Every selected day is a workday. This setting directly affects job and schedule frequency calculations. |
| **Additional Holidays** | The name of the holiday calendar whose dates are applied to this Schedule as non-working days. The default is `<None>` (HC: Only). |
| **Use Master Holiday** | When selected, applies the Master Holiday Calendar dates to this Schedule's holiday calendar. Selected by default. When you clear this option, the interface offers to copy the master holiday dates to the Schedule's own calendar before removing the association. |

## Schedule Properties

| Option | Description |
|---|---|
| **Multi-Instance** | When selected, allows multiple instances of this Schedule to run on the same date. Enabling this option requires that no cross-schedule dependencies exist on jobs in this Schedule. |
| **SubSchedule** | When selected, designates this Schedule as a child schedule that must be called by a Container job. Cross-schedule dependencies on jobs in a SubSchedule are not supported. When you clear this option, OpCon verifies that no Container jobs reference this Schedule as a SubSchedule before allowing the change. |
| **Conflict with Other Days** | When selected, prevents this Schedule from running if another instance of the same Schedule is still active on a different day. This option is not supported for SubSchedules. |

## Schedule Maintenance

These settings control when OpCon automatically builds and deletes daily Schedule instances. The server-level setting **Hour of each day SAM should detect schedules to build** controls the default time that auto-build and auto-delete processes run. Refer to [Time Settings](../../../administration/server-options.md#time-settings).

### Build Settings

| Field or Option | Description |
|---|---|
| **Auto Build** | When selected, OpCon automatically builds this Schedule. Enter the number of days in advance to start the build and the number of days to build forward from that point. |
| **Overwrite Existing** | When selected, OpCon overwrites an existing built Schedule if its status is Completed. Schedules with a status of In Process are not overwritten. |
| **Build On Hold** | When selected, OpCon builds the Schedule in an On Hold state. The Schedule does not run until it is manually released or released by an OpCon event. |
| **Auto Build Time** | The specific clock time at which this Schedule builds. The default value of `00:00` builds at the time defined by the server option for SAM's build time. Set a time later than the server option to override for this Schedule only. |

### Delete Settings

| Field or Option | Description |
|---|---|
| **Auto Delete** | When selected, OpCon automatically deletes this Schedule after a specified number of days. Enter the number of days in the past after which the daily Schedule instance is deleted. |

:::note
A Schedule that has been On Hold and never released is deleted by the auto-delete process. A Schedule that was previously released and is currently On Hold is not deleted.
:::

## Related Procedures

- [Adding Schedules](Adding-Schedules.md)
- [Configuring Automatic Schedule Maintenance](Configuring-Automatic-Schedule-Maintenance.md)
- [Copying Schedules](Copying-Schedules.md)
- [Deleting Schedules](Deleting-Schedules.md)
- [Merging Schedules](Merging-Schedules.md)
- [Viewing Additional Schedule Information](Viewing-Additional-Schedule-Info.md)
