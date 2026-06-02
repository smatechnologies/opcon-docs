---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Perform a Fast Schedule Check
description: "The Perform a Fast Schedule Check skill runs a fast integrity check on a named daily schedule for a specified date."
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

# Perform a Fast Schedule Check

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Perform a Fast Schedule Check** skill runs a fast integrity check on a named daily schedule for a specified date. When you ask Otto to check a schedule, it locates the matching daily schedule, submits a fast check request to the OpCon API, and polls for a result for up to 30 seconds.

- If a log file is available within 30 seconds, Otto returns the log file path and a **View Log File Details** link.
- If no log file is available within 30 seconds, Otto returns the message `Fast schedule check submitted. Please check log files for results.`

This skill maps to the `perform-a-fast-schedule-check` chat tool in the OpCon API.

## How It Works

When you ask Otto to perform a fast schedule check, the skill validates your request before submitting it:

- The **Schedule Name** and **Date** values cannot be empty.
- The **Date** value must be a parseable date. An invalid date string is rejected.
- The named schedule must exist as a daily schedule for the specified date. If no matching daily schedule is found, the request is rejected.

If validation succeeds, Otto submits a fast schedule check request for the resolved daily schedule and waits up to 30 seconds for a log file to be generated.

## Required Privileges

To use this skill, you must have the **Chatbot Privileges** function privilege. Users with **All Admin Privileges** or **All Function Privileges** also have access. If Otto is disabled at the server level, this skill is not available regardless of user privileges.

Otto is available exclusively to cloud customers. On-premises customers do not have access to Otto or its skills.

## Skill Details

### Parameters

Both parameters are required.

| Parameter | Description |
|---|---|
| **Schedule Name** | The name of the daily schedule to check. |
| **Date** | The date of the daily schedule to check. |

## Example

`Check schedule TestSchedule for today`

`Please check the schedule with the name "TestSchedule" for today.`

## FAQs

**Q: What does Otto return when the schedule check succeeds?**

If a log file is generated within 30 seconds, Otto returns the log file path and a **View Log File Details** link. If the check is still running when the 30-second limit is reached, Otto returns `Fast schedule check submitted. Please check log files for results.`

**Q: Why was my request rejected?**

The most common reasons are: the **Schedule Name** or **Date** value is empty, the **Date** value cannot be parsed, or no daily schedule with the given name exists for the specified date.

## Related Topics

- [Skills Overview](Skills-Overview.md)
- [Build Schedule](Skill-Build-Schedule.md)

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for the current day's automation. Changes to daily tables affect only that day's automation.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
