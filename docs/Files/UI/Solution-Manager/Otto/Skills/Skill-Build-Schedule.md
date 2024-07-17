---
lang: en-us
title: Otto Skill - Build Schedule
viewport: width=device-width, initial-scale=1.0
---

# Overview

The **Build Schedule** skill allows you to build a schedule for a specified date, and either place it on hold or release it, and optionally overwrite an existing build.

## Skill Details

- **Skill Name**: `build-schedule`

### Parameters

The **Build Schedule** skill requires the following parameters:

- **Date** _(string)_: The specified date when the schedule will be built.
- **Hold** _(boolean)_: Determines whether to place schedule on hold or released. True if hold, false if release, and defaults to true
- **Overwrite** _(boolean)_: Determines whether to overwrite an existing build, defaults to false
- **Schedule Name** _(string)_: The name of the daily schedule to build.

## Example

`Build schedule TestSchedule for today`

`Please build the schedule with name "TestSchedule" for today, and release it. Do not overwrite the existing schedule.`
