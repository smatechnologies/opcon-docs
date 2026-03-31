---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Summary Job output log files
description: "The Retrieve Job Output skill displays a summary of the output logs for a daily job on a specific date, giving quick access to key information including any errors that occurred."
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

# Summary Job output log files

**Theme:** Overview  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Retrieve Job Output** skill displays a summary of the output logs for a daily job on a specific date, giving quick access to key information including any errors that occurred.

## When Would You Use It?

- The **Retrieve Job Output** skill displays a summary of the output logs for a daily job on a specific date, giving quick access to key information including any errors that occurred

## Why Would You Use It?

- **Summary Job**: The **Retrieve Job Output** skill displays a summary of the output logs for a daily job on a specific date, giving quick access to key information including any errors that occurred

## Skill Details

### Parameters

- **Schedule Name**: The name of the daily schedule to check
- **Job Name**: The name of the job to check
- **Date**: The date of the schedule to check

## Example

`Retrieve job "Test" in "SMAUtility" schedule for today.`

`Why the job "Test" in "SMAUtility" schedule on 10/28/2024 failed`

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Schedule Name | The name of the daily schedule to check | — | — |
| Job Name | The name of the job to check | — | — |
| Date | The date of the schedule to check | — | — |
## FAQs

**Q: What does Summary Job output log files cover?**

This page covers Skill Details, Example.

## Glossary

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
