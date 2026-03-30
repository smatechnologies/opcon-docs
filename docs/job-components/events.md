---
title: Events
description: "Events are OpCon events the SAM processes based on triggers: job status, agent feedback string match, Exit Description evaluation, or Evaluation Expression."
product_area: Job Components
audience: Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Jobs
last_updated: 2026-03-18
doc_type: conceptual
---

# Events

**Theme:** Configure  
**Who Is It For?** Automation Engineer

## What Is It?

**Events** are OpCon events the SAM processes based on triggers: job status, agent feedback string match, Exit Description evaluation, or Evaluation Expression. Refer to [OpCon Events](../events/introduction.md). All [System Properties](../objects/properties.md#system) can be referenced with tokens in events, which are stored in the database after definition.

:::note
If the Server Option "Allow Wild Cards in Events" is enabled, \* (asterisk) and ? (question mark) are treated as wild cards in Schedule, Job, and Machine Names in Event strings
:::

- **Schedule Name**: Schedule name
- **Job Name**: Job name
- **Frequency Name**: Frequency name, if the event applies to a specific frequency
  - Leave the frequency blank to associate the event at the job level and always include the event for the job
  - Select a frequency name to associate the event only when the job runs with the associated frequency
- **Event Details**: OpCon event details. Define the trigger as Job Status, agent feedback with a string to match, Exit Description evaluation, or Evaluation Expression
  - **Job Status**: Job status that triggers the event. Valid statuses:
    - **Exceeded Max Run Time**: Job ran longer than the specified Max Run Time
    - **Failed**: Job failed
    - **Finished OK**: Job terminated successfully
    - **Job Still Attempting Start**: Job remains in Start Attempted status when SAM rechecks after the configured interval
    - **Late to Finish**: Time is past the late-to-finish time and the job is still running
    - **Late to Start**: Time is past the late-to-start time and the job has not started
    - **Missed Latest Start Time**: Job missed its latest start time
    - **Skipped**: Job was skipped
    - **Start Attempted**: Occurs just before job start info is sent to the agent. If the event is not processed, SAM places the job On Hold
  - **LSAM Feedback**: Evaluation string based on a specific LSAM feedback value. Fields:
    - **LSAM Feedback**: Platform-specific LSAM feedback values (e.g., SAP R/3 includes Child Process). Values vary by job type. Supported job types:
      - File Transfer
      - IBM i
      - MCP
      - SAP BW
      - SAP R/3 and CRM
      - UNIX
      - Windows
      - z/OS
    - **String to match**: String to compare against the agent Feedback value using SQL pattern matching
      - Use `%` (not `*`) as a wildcard
      - Use `_` (not `?`) for a single-character wildcard
      - Single quotes (`'`) are invalid
      - Maximum 4000 characters
  - **Exit Description**: Evaluation string for the completed job's exit description (Finished OK or Failed) that triggers the event

    :::danger
    $JOB:GOOD/$JOB:BAD should not be associated with Exit Description-based events if the job is set to auto-Retry/Rerun.
    :::

    Fields:

    - **Comparison Operators**: Supported operators:
      - Equal To
      - Not Equal To
      - Less Than
      - Less Than or Equal
      - Greater Than
      - Greater Than or Equal
      - Range
      - Contains
    - **Value**: Exit description to compare. Invalid characters: single quotes (`'`), semicolons (`;`)
    - **End Value**: End value for the Range operator. Same invalid characters as Value

  - **Job Completion Complex Expression**: Expression SAM evaluates on job completion. Must result in "True" for the event to process. See [Property Expressions API Syntax](../reference/property-expressions-syntax.md)
- **Event**: OpCon event that runs when the trigger fires. For syntax, refer to [Event Types](../events/types.md) in the **OpCon Events** online help

## When Would You Use It?

- **Events** are OpCon events the SAM processes based on triggers: job status, agent feedback string match, Exit Description evaluation, or Evaluation Expression

## Why Would You Use It?

- **Events**: **Events** are OpCon events the SAM processes based on triggers: job status, agent feedback string match, Exit Description evaluation, or Evaluation Expression

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Schedule Name | Schedule name | — | — |
| Job Name | Job name | — | — |
| Frequency Name | Frequency name, if the event applies to a specific frequency | — | — |
| Event Details | OpCon event details. | — | — |
| Event | OpCon event that runs when the trigger fires. | — | — |
## FAQs

**Q: What triggers can fire a job event?**

Job events can be triggered by job status changes (such as Finished OK, Failed, or Late to Start), by matching a specific agent feedback string, by evaluating the job's exit description, or by a property expression that evaluates to true on job completion.

**Q: Can a job event apply only to a specific frequency?**

Yes. Leave the Frequency Name blank to associate the event at the job level (fires on all runs). Select a specific frequency name to fire the event only when the job runs under that frequency.

**Q: Can system properties be used in event strings?**

Yes. All System Properties can be referenced with tokens in event strings, allowing dynamic values such as `$JOB NAME`, `$SCHEDULE DATE`, or `$MACHINE NAME` to be included in the event.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
