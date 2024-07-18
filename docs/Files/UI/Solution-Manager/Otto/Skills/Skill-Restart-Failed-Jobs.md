---
lang: en-us
title: Otto Skill - Restart Failed Jobs
viewport: width=device-width, initial-scale=1.0
---

# Restart Failed Jobs

The **Restart Failed Jobs** skill allows you to restart all failed jobs in a specified schedule for a specified date.

## Skill Details

### Parameters

The **Restart Failed Jobs** skill requires the following parameters:

- **Date**: The specified date of the jobs to restart.
- **Schedule Name**: The name of the schedule on which to restart all jobs.

### Notes

1. Container jobs will not be rebuilt.

## Example

`Restart Failed Jobs TestSchedule for today`

`Please restart all failed jobs in the schedule "TestSchedule" for today.`
