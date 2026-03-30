---
title: Editing Daily Schedules
description: "Editing Daily Schedules modifies jobs and schedules in the Daily tables."
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

# Editing Daily Schedules

**Theme:** Configure  
**Who Is It For?** Operations Staff, System Administrator

## What Is It?

Editing Daily Schedules modifies jobs and schedules in the Daily tables. Each change affects only that iteration — it does not affect Job Master records or any other date in the Daily tables. For example, changing a job's start time from 19:00 to 20:00 applies only to that specific occurrence; all other executions remain at 19:00.

Modifiable schedule information:

- Schedule Start Time
- Schedule Completion Events
- Available properties for the schedule instance

Modifiable job information:

- General and platform-specific job details
- All Job Automation components for the job instance
- Available properties for the job instance

Jobs can also be deleted from Daily schedules.

:::note
Deleting a Container job whose subschedule(s) have never started also deletes all of that Container job's subschedule(s), including any spawned subschedules.
:::

## When Would You Use It?

- An existing Daily Schedules in OpCon Operations requires changes
- A change in process, system, or business requirement makes the current Daily Schedules definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating Daily Schedules in OpCon Operations ensures changes apply to future builds without disrupting currently running schedules
- Changes to Daily Schedules are recorded in the OpCon audit log, providing a complete modification history

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## Operations

### Common Tasks
- Edits to Daily Schedules affect only that specific date's iteration; changes do not propagate to the Job Master or to any other date in the Daily tables.
- Modifiable schedule information includes: Schedule Start Time, Schedule Completion Events, and available properties for the schedule instance.
- Modifiable job information includes: general and platform-specific job details, all Job Automation components, and available properties for the job instance.
- Jobs can be deleted from Daily schedules; deleting a Container job whose subschedule(s) have never started also deletes all of that Container job's subschedules, including any spawned subschedules.

### Alerts and Log Files
- All changes to Daily Schedules are recorded in the OpCon audit log, providing a complete modification history for compliance and troubleshooting.

## FAQs

**Q: Does editing a Daily Schedule affect the Job Master record?**

No. Edits to Daily Schedules apply only to that specific iteration. Job Master records and other dates in the Daily tables are not affected.

**Q: What job information can be modified in a Daily Schedule?**

You can modify general and platform-specific job details, all Job Automation components for the job instance, and available properties for the job instance.

**Q: What happens when you delete a Container job from a Daily Schedule?**

If a Container job's subschedule(s) have never started, deleting the Container job also deletes all of its subschedules, including any spawned subschedules.

## Glossary

**Subschedule**: A schedule that runs as a child process within a Container job, allowing hierarchical, nested workflow automation where a parent schedule can trigger and monitor an entire child schedule.

**Container Job**: A job type that runs a subschedule. Container jobs enable hierarchical schedule structures and support properties and events just like standard jobs.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
