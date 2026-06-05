---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Update Job Status
description: "The Update Job Status skill updates the status of a daily job on a specified schedule for a specified date."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-05-29
doc_type: conceptual
---

# Update Job Status

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Update Job Status** skill is an Otto chat skill that performs an action to update the status of a daily job on a specified schedule for a specified date. You request the update in natural language, and Otto identifies the job and applies the action.

The action must be one of the following values:

- `release` — Releases a held job so it can qualify and start.
- `restart` — Restarts the job.
- `forcerestart` — Forces a restart of the job.

The skill acts on the daily (date-specific) instance of the job, so the change affects only the automation built for the specified date.

## Required Privileges

To use the Update Job Status skill, you must have the Otto chatbot function privilege, or one of the equivalent administrator privileges that grants it.

In addition, you can only update jobs that you have permission to act on. If the job is not found or you do not have permission, Otto returns an error.

## Skill Details

### Parameters

All four parameters are required.

- **Schedule Name**: The name of the daily schedule that contains the job.
- **Job Name**: The name of the job to update.
- **Action**: The action to take. Must be one of: `release`, `restart`, `forcerestart`.
- **Date**: The date of the job to update.

## Example

`Update job TestJob to status "released" on schedule TestSchedule for today`

`Please update the job with the name "TestJob" to the status "released" on the schedule "TestSchedule" for today.`

## Configuration Options

| Setting | What It Does | Required |
|---|---|---|
| Schedule Name | The name of the daily schedule that contains the job | Yes |
| Job Name | The name of the job to update | Yes |
| Action | The action to take; must be one of `release`, `restart`, or `forcerestart` | Yes |
| Date | The date of the job to update | Yes |

## FAQs

**Q: What actions can I take with the Update Job Status skill?**

You can take one of three actions: `release`, `restart`, or `forcerestart`. Any other value returns an error.

**Q: Which job does the skill update?**

The skill updates the daily instance of the named job on the named schedule for the specified date. It does not change the master schedule definition.

**Q: What happens if the job cannot be found?**

If the job does not exist for the specified schedule and date, or you do not have permission to act on it, Otto returns an error and no change is made.

## Glossary

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for the current day's automation. Changes to daily tables affect only the current day's automation.
