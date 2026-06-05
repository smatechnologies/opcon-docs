---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Update Schedule Status
description: "The Update Schedule Status skill updates the status of a daily schedule for a specified date."
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

# Update Schedule Status

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Update Schedule Status** skill updates the status of a daily schedule for a specified date. You ask Otto to apply one of four status values: `release`, `hold`, `start`, or `close`. Otto resolves the named schedule for the given date, submits the status request, and confirms with the message `Update schedule status request sent.`

This skill maps to the `update-schedule-status` chat tool in the OpCon API.

## How It Works

When you ask Otto to update a schedule status, the skill validates your request before submitting it:

- The **Schedule Name** and **Status** values cannot be empty.
- The **Status** value must be one of `release`, `hold`, `start`, or `close`. Any other value is rejected as invalid.
- The named schedule must exist as a daily schedule for the specified date.
- A schedule that is on hold cannot be started. If you ask Otto to `start` a schedule that is currently on hold, the request is rejected.

If validation succeeds, Otto submits the status request and returns `Update schedule status request sent.`

## Required Privileges

To use this skill, you must have Chatbot privileges.

The status you can apply also depends on your schedule operation privileges. A user with administrator privileges can apply any status. A non-administrator must have access to the target schedule, and the applicable schedule operation privilege for the requested status (for example, release, force start, or hold).

## Skill Details

### Parameters

All three parameters are required.

| Parameter | Description |
|---|---|
| **Schedule Name** | The name of the daily schedule to update. |
| **Date** | The date of the schedule to update. |
| **Status** | The status to apply. Must be one of: `release`, `hold`, `start`, `close`. |

## Example

`Update schedule TestSchedule to status "release" for today`

`Please update the status of the schedule with the name "TestSchedule" to the status "release" for today.`

## FAQs

**Q: What status values can I apply?**

You can apply `release`, `hold`, `start`, or `close`. Any other value is rejected as invalid.

**Q: Why was my request to start a schedule rejected?**

A schedule that is on hold cannot be started. Release the schedule first, then start it.

**Q: What does Otto return when the request succeeds?**

Otto returns the message `Update schedule status request sent.`

## Related Topics

- [Skills Overview](Skills-Overview.md)
- [Update Job Status](Skill-Update-Job-Status.md)

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for the current day's automation. Changes to daily tables affect only that day's automation.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
