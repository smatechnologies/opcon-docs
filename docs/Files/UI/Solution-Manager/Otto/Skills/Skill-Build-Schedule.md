---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Build Schedule
description: "The Build Schedule skill builds a schedule for a specified date, places it on hold or releases it, and optionally overwrites an existing build."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Build Schedule

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Build Schedule** skill builds a schedule for a specified date, places it on hold or releases it, and optionally overwrites an existing build.

## Skill Details

### Parameters

- **Date**: The date when the schedule will be built
- **Hold**: Whether to place the schedule on hold (`true`) or release it (`false`). Defaults to `true`
- **Overwrite**: Whether to overwrite an existing build. Defaults to `false`
- **Schedule Name**: The name of the daily schedule to build

### Notes

1. Instances cannot be provided; all instances of multi-instance schedules will be built
1. Instance properties cannot be provided
1. A date range cannot be provided

## Example

`Build schedule TestSchedule for today`

`Please build the schedule with name "TestSchedule" for today, and release it. Do not overwrite the existing schedule.`

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Date | The date when the schedule will be built | `true` | — |
| Hold | Whether to place the schedule on hold (`true`) or release it (`false`). | `true` | — |
| Overwrite | Whether to overwrite an existing build. | `false` | — |
| Schedule Name | The name of the daily schedule to build | — | — |
## FAQs

**Q: How many steps does the Build Schedule procedure involve?**

The Build Schedule procedure involves 3 steps. Complete all steps in order and save your changes.

**Q: What does Build Schedule cover?**

This page covers Skill Details, Example.

## Glossary


**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
