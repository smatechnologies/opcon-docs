---
title: Editing Jobs in Master vs Daily Schedules
description: "Master job definitions can include all possible Job Automation Components."
product_area: Automation Concepts
audience: Automation Engineer, Business Analyst
version_introduced: "[see release notes]"
tags:
  - Procedural
  - Automation Engineer
  - Business Analyst
  - Jobs
last_updated: 2026-03-18
doc_type: procedural
---

# Editing Jobs in Master vs Daily Schedules

**Theme:** Configure  
**Who Is It For?** Automation Engineer, Business Analyst

## What Is It?

Master job definitions can include all possible [Job Automation Components](../job-components/overview.md). Edits to a Master job apply to future Schedule Builds only — existing Daily copies are not affected. This allows future changes without disrupting jobs currently in the Daily.

Daily job definitions can include all [Job Automation Components](./../job-components/overview.md) except Frequencies. Frequency components belong to master records and determine which days a job appears in the Daily. During Schedule Build, OpCon combines the appropriate components and creates a Daily copy. Edits to a Daily job apply only to that specific copy, leaving other Daily copies and the Master definition unchanged.

:::info Example
If the start time for a job is changed from 19:00 to 20:00 in the Daily Tables on January 12, 2012, only that instance is affected. Assuming no changes to January 13th, 14th, or the Master:

- All future builds set the start time to 19:00
- January 12th's start time is 20:00
- January 13th's start time is 19:00
- January 14th's start time is 19:00
:::

## When Would You Use It?

- An existing Jobs in Master vs Daily Schedules in OpCon requires changes
- A change in process, system, or business requirement makes the current Jobs in Master vs Daily Schedules definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating Jobs in Master vs Daily Schedules in OpCon ensures changes apply to future builds without disrupting currently running schedules
- Changes to Jobs in Master vs Daily Schedules are recorded in the OpCon audit log, providing a complete modification history

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Do edits to a Master job affect jobs already in the Daily?**

No. Edits to a Master job apply to future Schedule Builds only. Existing Daily copies are not affected, allowing future changes without disrupting jobs currently running or scheduled for today.

**Q: Can I edit a frequency in the Daily Schedule?**

No. Frequency components belong to Master records and cannot be edited in the Daily. All other job automation components can be modified in the Daily.

**Q: If I change a job's start time in the Daily, does that change carry forward to future dates?**

No. Edits to a Daily job apply only to that specific instance. Future builds use the Master definition, which is unchanged.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
