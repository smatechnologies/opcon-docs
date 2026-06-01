---
title: Schedule Dates Overview
description: "OpCon uses specific rules to name and track schedules and jobs in the daily queue."
product_area: Operations
audience: Operations Staff, System Administrator
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Operations Staff
  - System Administrator
  - Schedules
last_updated: 2026-03-18
doc_type: conceptual
---

## Overview

OpCon uses specific rules to name and track schedules and jobs in the daily queue. When schedules are built for a schedule date, OpCon analyzes all schedule and job information together to create a day's automation. Understanding these naming conventions is essential for building date-based automation, filtering in operations views, and identifying specific schedule or job instances.

## In This Section

| Page | Description |
|------|-------------|
| [Schedule Dates and Automation](schedule-dates.md) | How OpCon assigns and formats dates when building the daily schedule queue, and how schedule and job information combine to create a day's automation |
| [OpCon Schedule Names](schedule-names.md) | Naming rules and conventions for schedules in the daily queue, including multi-instance schedules and subschedules |
| [OpCon Job Names](job-names.md) | How job instance names are formed and displayed, including multi-instance jobs and jobs run on each machine in a group |

## Key Concepts

**Daily Schedule**
A schedule instance that OpCon builds for a specific date. Changes to a daily schedule affect only that date and do not modify the master definition.

**Schedule Date**
The date for which OpCon builds a schedule. All schedule and job information is analyzed together against the schedule date to produce that day's automation.

**Multi-Instance Schedule**
A schedule configured to allow multiple copies to run simultaneously. OpCon appends a suffix to each copy's name to distinguish instances — either a `$XXXX` counter or the value of the first Schedule Instance property.

**Subschedule**
A schedule that runs as a child of a Container job. OpCon builds the subschedule into the daily tables using the format `ParentSchedule_ContainerJobName[SubSchedule]`.

**Multi-Instance Job**
A job configured to allow multiple copies to run simultaneously. OpCon appends either a `$XXXX` counter or the value of the first Job Instance property to distinguish instances.
