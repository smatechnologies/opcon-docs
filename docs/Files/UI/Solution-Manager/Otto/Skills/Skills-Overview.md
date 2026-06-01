---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Otto Skills Overview
description: "Skills perform specific operational tasks in OpCon on your behalf through the Otto chatbot, without leaving Solution Manager."
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

# Otto Skills Overview

Skills are the operational actions that Otto can perform in OpCon on your behalf. When you ask Otto to complete a task, it maps your request to the appropriate skill, confirms the action, and runs it using the OpCon REST API.

Otto is available exclusively to cloud customers. On-premises customers do not have access to Otto or its skills.

## How Skills Work

Otto interprets your natural language request and determines whether a matching skill is available and enabled. Before running any action, Otto responds with a confirmation message. If the skill is unavailable or the request fails, Otto responds with an error message.

Skills require the **Chatbot Privileges** function privilege. Users who are system administrators, who have **All Admin Privileges**, or who have **All Function Privileges** also have access. If Otto is disabled at the server level, no skills are returned regardless of user privileges.

![Skills Example](../../../../../Resources/Images/SM/Otto/Skills-Overview-Example.png "Skills Example")

## Available Skills

The following skills are available in Otto:

| Skill | Description |
|-------|-------------|
| [Add Daily Job](./Skill-Add-Daily-Job.md) | Add a job to a schedule in the daily queue |
| [Build Schedule](./Skill-Build-Schedule.md) | Trigger a schedule build for a specified date |
| [Delete Daily Job](./Skill-Delete-Daily-Job.md) | Remove a job from the daily queue |
| [Get Failed Jobs](./Skill-Get-Failed-Jobs.md) | Retrieve a list of failed jobs for a specified date |
| [Get Failed Schedules](./Skill-Get-Failed-Schedules.md) | Retrieve a list of schedules with failed jobs |
| [Perform a Fast Schedule Check](./Skill-Perform-A-Fast-Schedule-Check.md) | Run a fast integrity check on a schedule |
| [Restart Failed Jobs](./Skill-Restart-Failed-Jobs.md) | Restart all failed jobs in a schedule |
| [Retrieve Application Log](./Skill-Retrieve-Application-Log.md) | Fetch an OpCon application log file |
| [Retrieve Job Output](./Skill-Retrieve-Job-Output.md) | Fetch the output from a completed job |
| [Summarize Schedule Build](./Skill-Summarize-Schedule-Build.md) | Get a summary of a recent schedule build |
| [Update Job Status](./Skill-Update-Job-Status.md) | Change the status of a specific job |
| [Update Machine Status](./Skill-Update-Machine-Status.md) | Change the communication status of an Agent |
| [Update Schedule Status](./Skill-Update-Schedule-Status.md) | Change the status of a schedule |
