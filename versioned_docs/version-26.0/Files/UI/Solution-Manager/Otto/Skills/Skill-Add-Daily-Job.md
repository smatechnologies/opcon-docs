---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Add Daily Job
description: "The Add Daily Job skill adds a new daily job to a specified daily schedule for a specified date, frequency, and status."
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

# Add Daily Job

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Add Daily Job** skill adds a new daily job to a specified daily schedule for a specified date, frequency, and status.

## When Would You Use It?

- The **Add Daily Job** skill adds a new daily job to a specified daily schedule for a specified date, frequency, and status

## Why Would You Use It?

- **Add Daily**: The **Add Daily Job** skill adds a new daily job to a specified daily schedule for a specified date, frequency, and status

## Skill Details

### Parameters

- **Date**: The schedule date where the job will be added
- **Frequency Name**: The frequency where the job will be added. If not specified, the default frequency is used
- **Job Name**: The name of the job to be added
- **Schedule Name**: The name of the daily schedule where the job will be added
- **Status**: The status for the added job. Options: `released`, `onHold`

### Notes

1. Only one job may be added at a time

1. Instance properties cannot be provided

## Example

`Add daily job on 2021-12-31 for frequency Daily, job name TestJob, schedule name TestSchedule, status released`

`Please add a daily job with a name of "TestJob", a status of "released", and a frequency of "Daily" to the schedule "TestSchedule" for today.`

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Date | The schedule date where the job will be added | frequency is used | — |
| Frequency Name | The frequency where the job will be added. | frequency is used | — |
| Job Name | The name of the job to be added | — | — |
| Schedule Name | The name of the daily schedule where the job will be added | — | — |
| Status | The status for the added job. | — | — |
## FAQs

**Q: How many steps does the Add Daily Job procedure involve?**

The Add Daily Job procedure involves 2 steps. Complete all steps in order and save your changes.

**Q: What does Add Daily Job cover?**

This page covers Skill Details, Example.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
