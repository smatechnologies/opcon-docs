---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Update Job Status
description: "The Update Job Status skill updates the status of a daily job on a specified schedule for a specified date."
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

# Update Job Status

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Update Job Status** skill updates the status of a daily job on a specified schedule for a specified date.

## Skill Details

### Parameters

- **Action**: Must be one of: `release`, `restart`, `forcerestart`
- **Date**: The specified date for the job
- **Job Name**: The name of the job to update
- **Schedule Name**: The name of the daily schedule for the updated job

## Example

`Update job TestJob to status "released" on schedule TestSchedule for today`

`Please update the job with the name "TestJob" to the status "released" on the schedule "TestSchedule" for today.`

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Action | Must be one of: `release`, `restart`, `forcerestart` | — | Must be one of: `release`, `restart`, `forcerestart` - **Date**: The specified date for |
| Date | The specified date for the job | — | — |
| Job Name | The name of the job to update | — | — |
| Schedule Name | The name of the daily schedule for the updated job | — | — |
## FAQs

**Q: What does Update Job Status cover?**

This page covers Skill Details, Example.

## Glossary

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
