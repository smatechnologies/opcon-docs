---
lang: en-us
title: Otto Skill - Build Schedule
viewport: width=device-width, initial-scale=1.0
---

# Build Schedule

The **Build Schedule** skill allows you to build a schedule for a specified date, and either place it on hold or release it, and optionally overwrite an existing build.

## Skill Details

### Parameters

The **Build Schedule** skill requires the following parameters:

- **Date**: The specified date when the schedule will be built.
- **Hold**: Determines whether to place schedule on hold or released. True if hold, false if release, and defaults to true
- **Overwrite**: Determines whether to overwrite an existing build, defaults to false
- **Schedule Name**: The name of the daily schedule to build.

### Notes

1. Instances cannot be provided, it will build all instances of multi-instance schedules
1. Instance properties cannot be provided
1. Cannot provide a date range.

## Example

`Build schedule TestSchedule for today`

`Please build the schedule with name "TestSchedule" for today, and release it. Do not overwrite the existing schedule.`
