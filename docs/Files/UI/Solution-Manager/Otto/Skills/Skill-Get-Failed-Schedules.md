---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Get Failed Schedules
description: "The Get Failed Schedules skill retrieves a list of failed schedules for a specified date."
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

# Get Failed Schedules

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Get Failed Schedules** skill retrieves a list of failed schedules for a specified date.

## When Would You Use It?

- The **Get Failed Schedules** skill retrieves a list of failed schedules for a specified date

## Why Would You Use It?

- **Get Failed**: The **Get Failed Schedules** skill retrieves a list of failed schedules for a specified date

## Skill Details

### Parameters

- **Date**: The date for which failed schedules will be retrieved

### Notes

1. The first ten failures are displayed with a link to see the rest
1. A date range cannot be provided

## Example

`Get failed schedules for today`

`Please retrieve the list of failed schedules for today.`

## FAQs

**Q: How many steps does the Get Failed Schedules procedure involve?**

The Get Failed Schedules procedure involves 2 steps. Complete all steps in order and save your changes.

**Q: What does Get Failed Schedules cover?**

This page covers Skill Details, Example.

## Glossary


**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
