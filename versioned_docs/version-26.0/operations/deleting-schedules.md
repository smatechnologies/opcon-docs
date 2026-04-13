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

**Theme:** Configure  
**Who Is It For?** Operations Staff, System Administrator

## What Is It?

Deleting Daily Schedules removes Completed or unprocessed schedules from the Daily tables. OpCon does not delete schedules that are In Process or On Hold (previously released). Continuous recommends keeping no more than two weeks of schedules in the Daily tables; the SAM and supporting services perform better with fewer days built.

Processing is managed by the SMASchedMan program. Refer to [SMASchedMan](../server-programs/request-router.md#smasched) in the **Server Programs** online help.

- When automatic schedule maintenance is configured, the SAM deletes daily schedules automatically. Refer to [Schedule Maintenance](../objects/schedules.md#schedule-definition)
- If an automatic delete fails, the SAM processes events on the SMA_SKD_DELETE job. Refer to [SMA_SKD Jobs on the AdHoc Schedule](../objects/schedules.md#adhoc-schedule)
- Schedule deletions can be automated using:
  - OpCon events (refer to [Schedule-Related Events](../events/types.md#schedule))
  - The DoBatch utility (refer to [DoBatch](../utilities/Command-line-Utilities/DoBatch.md))
- Schedule deletions can be requested through the graphical interfaces

## Operations

### Monitoring
- Keep no more than two weeks of schedules in the Daily tables; the SAM and supporting services perform better with fewer days built.
- Only Completed or unprocessed schedules can be deleted; OpCon does not delete schedules that are In Process or On Hold (previously released).

### Common Tasks
- Configure automatic schedule maintenance to have SAM delete daily schedules automatically; if an automatic delete fails, SAM processes events on the `SMA_SKD_DELETE` job on the AdHoc schedule.
- Automate deletions using OpCon events (Schedule-Related Events) or the DoBatch utility, or request them through the graphical interfaces.

### Alerts and Log Files
- All schedule deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews.
- If an automatic delete fails, SAM processes events on the `SMA_SKD_DELETE` job on the AdHoc schedule; configure notifications on this job to alert operations staff of failures.

## FAQs

**Q: What schedules can be deleted from the Daily tables?**

Only Completed or unprocessed schedules can be deleted. OpCon does not delete schedules that are In Process or On Hold (previously released).

**Q: How many days of Daily schedules should be kept?**

Continuous recommends keeping no more than two weeks of schedules in the Daily tables. The SAM and supporting services perform better with fewer days built.

**Q: What happens if an automatic schedule delete fails?**

If an automatic delete fails, the SAM processes events on the SMA_SKD_DELETE job on the AdHoc schedule, allowing you to configure notifications or corrective actions.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
