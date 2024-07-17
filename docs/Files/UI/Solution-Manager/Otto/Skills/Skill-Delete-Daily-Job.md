---
lang: en-us
title: Otto Skill - Delete Daily Job
viewport: width=device-width, initial-scale=1.0
---

# Overview

The **Delete Daily Job** skill allows you to delete a specified job from the specified daily schedule for the specified date.

## Skill Details

- **Skill Name**: `delete-daily-job`

### Parameters

The **Delete Daily Job** skill requires the following parameters:

- **Date** _(string)_: The specified date of the job that will be deleted.
- **Job Name** _(string)_: The name of the job to be deleted.
- **Schedule Name** _(string)_: The name of the daily schedule on which the job name is to be deleted from.

## Example

`Delete job TestJob from schedule TestSchedule for today`

`Please delete the job with the name "TestJob" from the schedule "TestSchedule" for today.`
