---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Summarize Schedule Build
description: "The Summarize Schedule Build skill displays a summary of the schedule build log for a specified schedule and date, including status, any build issues, and a link to the full log file."
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

# Summarize Schedule Build

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Summarize Schedule Build** skill displays a summary of the schedule build log for a specified schedule and date, including status, any build issues, and a link to the full log file.

## Skill Details

### Parameters

- **Date**: The date on which the specified schedule is set to run
- **Schedule Name**: The name of the daily schedule

### Notes

1. The schedule name must be valid and exist in the system
2. The date must be the date on which the schedule is set to run

## Example

`Summarize the schedule build for the SMAUtility schedule on 2024-10-31`

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Date | The date on which the specified schedule is set to run | — | must be valid and exist in the system. 2. The date must be the date on which the schedul |
| Schedule Name | The name of the daily schedule | — | must be valid and exist in the system. 2. The date must be the date on which the schedul |
## FAQs

**Q: How many steps does the Summarize Schedule Build procedure involve?**

The Summarize Schedule Build procedure involves 2 steps. Complete all steps in order and save your changes.

**Q: What does Summarize Schedule Build cover?**

This page covers Skill Details, Example.

## Glossary

**SMAUtility Schedule**: A pre-built OpCon schedule installed during setup that contains standard maintenance jobs for audit history cleanup, job history cleanup, and BIRT report generation.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
