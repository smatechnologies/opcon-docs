---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Delete Daily Job
description: "The Delete Daily Job skill removes a specified job from the daily queue for a specified schedule and date."
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

# Delete Daily Job

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Delete Daily Job** skill is an Otto chat skill that removes a job from the daily queue for a specified schedule and date. You request the deletion in natural language, and Otto identifies the job and removes it from the daily tables.

The skill acts on the daily (date-specific) instance of the job, so the removal affects only the automation built for the specified date. The master job definition is not changed.

## Required Privileges

To use the Delete Daily Job skill, you must have the **Chatbot Privileges** function privilege, or one of the equivalent administrator privileges that grants it.

<!-- GAP: The exact customer-facing label for the Chatbot Privileges function privilege as displayed in the Solution Manager UI has not been confirmed in source. Needs SME/UI confirmation. -->

If the job is not found or you do not have permission to act on it, Otto returns an error and no change is made.

## Skill Details

### Parameters

All three parameters are required.

- **Date**: The date of the daily schedule from which the job will be removed.
- **Job Name**: The name of the job to remove.
- **Schedule Name**: The name of the daily schedule that contains the job.

## Example

`Delete job TestJob from schedule TestSchedule for today`

`Please delete the job with the name "TestJob" from the schedule "TestSchedule" for today.`

## FAQs

**Q: Does deleting a daily job affect the master job definition?**

No. The Delete Daily Job skill removes only the daily (date-specific) instance of the job. The master job definition in the schedule is not changed and will continue to build on future dates according to its frequency settings.

**Q: What happens if the job cannot be found?**

If the job does not exist for the specified schedule and date, or you do not have permission to act on it, Otto returns an error and no change is made.

**Q: Can I delete multiple jobs at once?**

<!-- GAP: Whether the skill supports deleting multiple jobs in a single request has not been confirmed in source. Needs SME confirmation. -->

## Glossary

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for the current day's automation. Changes to daily tables affect only the current day's automation.
