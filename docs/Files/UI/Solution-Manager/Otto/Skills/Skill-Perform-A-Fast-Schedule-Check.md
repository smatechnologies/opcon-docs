---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Perform a Fast Schedule Check
description: "The Perform a Fast Schedule Check skill performs a schedule check for a specified schedule on a specified date."
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

# Perform a Fast Schedule Check

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Perform a Fast Schedule Check** skill performs a schedule check for a specified schedule on a specified date.

## When Would You Use It?

- The **Perform a Fast Schedule Check** skill performs a schedule check for a specified schedule on a specified date

## Why Would You Use It?

- **Perform a**: The **Perform a Fast Schedule Check** skill performs a schedule check for a specified schedule on a specified date

## Skill Details

### Parameters

- **Date**: The date of the schedule to check
- **Schedule Name**: The name of the daily schedule to check

## Example

`Check schedule TestSchedule for today`

`Please check the schedule with the name "TestSchedule" for today.`

## FAQs

**Q: What does Perform a Fast Schedule Check cover?**

This page covers Skill Details, Example.

## Glossary


**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
