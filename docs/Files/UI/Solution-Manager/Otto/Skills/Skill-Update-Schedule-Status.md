---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Update Schedule Status
description: "The Update Schedule Status skill updates the status of a daily schedule for a specified date."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Update Schedule Status

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Update Schedule Status** skill updates the status of a daily schedule for a specified date. The status can be set to `release`, `hold`, `start`, or `close`.

## Skill Details

### Parameters

- **Date**: The date of the schedule to update
- **Schedule Name**: The name of the daily schedule to update
- **Status**: Must be one of: `release`, `hold`, `start`, `close`

## Example

`Update schedule TestSchedule to status "release" for today`

`Please update the status of the schedule with the name "TestSchedule" to the status "release" for today.`

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Date | The date of the schedule to update | — | Must be one of: `release`, `hold`, `start`, `close`  ## Example  `Update schedule TestSc |
| Schedule Name | The name of the daily schedule to update | — | Must be one of: `release`, `hold`, `start`, `close`  ## Example  `Update schedule TestSc |
| Status | Must be one of: `release`, `hold`, `start`, `close` | — | Must be one of: `release`, `hold`, `start`, `close`  ## Example  `Update schedule TestSc |
## FAQs

**Q: What does Update Schedule Status cover?**

This page covers Skill Details, Example.

## Glossary


**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
