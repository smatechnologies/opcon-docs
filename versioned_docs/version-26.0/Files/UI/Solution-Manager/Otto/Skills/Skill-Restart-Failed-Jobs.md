---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Restart Failed Jobs
description: "The Restart Failed Jobs skill restarts all failed jobs in a specified schedule for a specified date."
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

# Restart Failed Jobs

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Restart Failed Jobs** skill restarts all failed jobs in a specified schedule for a specified date.

## Skill Details

### Parameters

- **Date**: The date of the jobs to restart
- **Schedule Name**: The name of the schedule on which to restart all failed jobs

### Notes

1. Container jobs will not be rebuilt

## Example

`Restart Failed Jobs TestSchedule for today`

`Please restart all failed jobs in the schedule "TestSchedule" for today.`

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Date | The date of the jobs to restart | — | — |
| Schedule Name | The name of the schedule on which to restart all failed jobs | — | — |
## FAQs

**Q: How many steps does the Restart Failed Jobs procedure involve?**

The Restart Failed Jobs procedure involves 1 step. Complete all steps in order and save your changes.

**Q: What does Restart Failed Jobs cover?**

This page covers Skill Details, Example.

## Glossary

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
