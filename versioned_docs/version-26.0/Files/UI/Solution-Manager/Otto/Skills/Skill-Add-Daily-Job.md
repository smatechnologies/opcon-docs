---
lang: en-us
title: Otto Skill - Add Daily Job
viewport: width=device-width, initial-scale=1.0
---

# Add Daily Job

The **Add Daily Job** skill allows you to add a new daily job to a specified daily schedule for a specified date, with a specified frequency, and status.

## Skill Details

### Parameters

The **Add Daily Job** skill requires the following parameters:

- **Date**: The specified schedule's date where the job will be added.
- **Frequency Name**: The name of the frequency where the job will be added. If not specified, the default frequency will be used.
- **Job Name**: The name of the job to be added.
- **Schedule Name**: The name of the daily schedule where the job will be added.
- **Status**: The status in which the job will be added, options: `released`, `onHold`

### Notes

1. Only one job may be added at a time.
1. Instance properties cannot be provided.

## Example

`Add daily job on 2021-12-31 for frequency Daily, job name TestJob, schedule name TestSchedule, status released`

`Please add a daily job with a name of "TestJob", a status of "released", and a frequency of "Daily" to the schedule "TestSchedule" for today.`
