---
title: Checking Daily Schedules
description: "Checking Daily Schedules validates job dependencies in the Daily tables."
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

**Theme:** Configure  
**Who Is It For?** Operations Staff, System Administrator

## What Is It?

Checking Daily Schedules validates job dependencies in the Daily tables. It can:

- Detect circular dependencies
- Determine if a Requires dependency cannot be resolved
- Determine if Conflict or After dependencies are not satisfied

Continuous recommends running the check against every new schedule and after major revisions. The check can run against a date for all schedules or against specific schedules.

- Checking specific schedules does not check their subschedules
- To check a subschedule, specify it as the schedule to check
- Specify a date to check all schedules and subschedules on that date

Processing is managed by the SMASchedMan program. Refer to [SMASchedMan](../server-programs/request-router.md#smasched) in the **Server Programs** online help.

If the check fails and was started by an OpCon Event, the SAM processes events on the SMA_SKD_CHECK job. Refer to [SMA_SKD Jobs on the AdHoc Schedule](../objects/schedules.md#adhoc-schedule).

Schedule checks can be managed by:

- Automation using:
  - OpCon events (refer to [Schedule-Related Events](../events/types.md#schedule))
  - The DoBatch utility (refer to [DoBatch](../utilities/Command-line-Utilities/DoBatch.md))
- Request through the graphical interfaces

## When Would You Use It?

- You need to checking Daily Schedules validates job dependencies in the Daily tables

## Why Would You Use It?

- **Checking Daily**: Checking Daily Schedules validates job dependencies in the Daily tables

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## Operations

### Common Tasks
- Run a schedule check against every new schedule and after major revisions to detect circular dependencies, unresolvable Requires dependencies, and unsatisfied Conflict or After dependencies before production.
- To check a specific schedule, specify it by name; checking a specific schedule does not check its subschedules — specify the subschedule separately if needed.
- To check all schedules and subschedules for a date, specify the date rather than a specific schedule name.
- Schedule checks can be automated using OpCon events (Schedule-Related Events) or the DoBatch utility, or requested through the graphical interfaces.

### Alerts and Log Files
- Check processing is managed by the SMASchedMan program; if the check fails and was started by an OpCon Event, SAM processes events on the `SMA_SKD_CHECK` job on the AdHoc schedule.

## FAQs

**Q: What does checking a Daily Schedule validate?**

Checking a Daily Schedule validates job dependencies in the Daily tables. It detects circular dependencies, determines if a Requires dependency cannot be resolved, and identifies unsatisfied Conflict or After dependencies.

**Q: Does checking a specific schedule also check its subschedules?**

No. Checking a specific schedule does not check its subschedules. To check a subschedule, specify it as the schedule to check. To check all schedules and subschedules on a date, specify the date rather than a specific schedule.

**Q: When should you run a schedule check?**

Continuous recommends running a check against every new schedule and after major revisions to catch dependency issues before they cause problems in production.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Subschedule**: A schedule that runs as a child process within a Container job, allowing hierarchical, nested workflow automation where a parent schedule can trigger and monitor an entire child schedule.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
