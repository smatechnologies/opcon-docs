---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Delete Daily Job
description: "The Delete Daily Job skill deletes a specified job from a specified daily schedule for a specified date."
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

# Delete Daily Job

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Delete Daily Job** skill deletes a specified job from a specified daily schedule for a specified date.

## When Would You Use It?

- The **Delete Daily Job** skill deletes a specified job from a specified daily schedule for a specified date

## Why Would You Use It?

- **Delete Daily**: The **Delete Daily Job** skill deletes a specified job from a specified daily schedule for a specified date

## Skill Details

### Parameters

- **Date**: The date of the job to be deleted
- **Job Name**: The name of the job to be deleted
- **Schedule Name**: The name of the daily schedule to delete the job from

## Example

`Delete job TestJob from schedule TestSchedule for today`

`Please delete the job with the name "TestJob" from the schedule "TestSchedule" for today.`

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Date | The date of the job to be deleted | — | — |
| Job Name | The name of the job to be deleted | — | — |
| Schedule Name | The name of the daily schedule to delete the job from | — | — |
## FAQs

**Q: What does Delete Daily Job cover?**

This page covers Skill Details, Example.

## Glossary

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
