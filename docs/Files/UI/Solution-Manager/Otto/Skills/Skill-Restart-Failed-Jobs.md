---
lang: en-us
title: Otto Skill - Restart Failed Jobs
viewport: width=device-width, initial-scale=1.0
---

# Overview

The **Restart Failed Jobs** skill allows you to restart all failed jobs in a specified schedule for a specified date.

## Skill Details

- **Skill Name**: `restart-failed-jobs`

### Parameters

The **Restart Failed Jobs** skill requires the following parameters:

- **Date** _(string)_: The specified date of the jobs to restart.
- **Schedule Name** _(string)_: The name of the schedule on which to restart all jobs.

## Example

`Restart Failed Jobs TestSchedule for today`

`Please restart all failed jobs in the schedule "TestSchedule" for today.`
