---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Retrieve Job Output
description: "The Retrieve Job Output skill returns the output log files for a job on a specific schedule and date, giving you quick access to a job's results, including any errors."
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

# Retrieve Job Output

**Theme:** Overview  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Retrieve Job Output** skill returns the output log files for a job on a specific schedule and date. The skill gives you quick access to a job's results, including any errors that occurred, without leaving the Otto chat.

Use this skill when you want to review why a job finished the way it did or to inspect a job's output directly from the chat. For Windows and Unix jobs, Otto returns a summary of the job output. For other supported job types, Otto returns a list of the job's output log files. Select a log file in the response to open it.

## How It Works

When you ask Otto to retrieve a job's output, the skill identifies the matching job from the schedule name, job name, and date you provide, then returns that job's available output.

The skill applies the following rules:

- The job must have produced output. If no output is available for the job, Otto reports that no output was found.
- The job's status must be one of the supported categories: Held, Running, Finished OK, Fixed, Failed, or Under Review.
- The skill is not supported for container jobs or for jobs whose type cannot be determined.

For Windows and Unix jobs, Otto returns a summary of the job output. For all other supported job types, Otto returns the list of output log file names. Selecting a log file name in the response opens that file's output.

## Required Privileges

To use Otto skills, your account must have chatbot privileges, or hold administrator or all-function privileges.

## Parameters

The **Retrieve Job Output** skill uses the following parameters. All three are required.

| Parameter | What It Does |
|---|---|
| **Schedule Name** | The name of the schedule that contains the job. |
| **Job Name** | The name of the job to retrieve output for. |
| **Date** | The date of the schedule to check. |

## Example

`Retrieve job "Test" in "SMAUtility" schedule for today.`

`Why the job "Test" in "SMAUtility" schedule on 10/28/2024 failed`

## FAQs

**Q: What job statuses can Retrieve Job Output return output for?**

Otto can return output for jobs with the following status categories: Held, Running, Finished OK, Fixed, Failed, and Under Review.

**Q: Why does Otto report that no output is available for my job?**

A job must have produced output before Otto can return it. If the job has not yet run or did not generate output, no output is available. The skill also does not support container jobs or jobs whose type cannot be determined.

## Glossary

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**Otto**: The Solution Manager chat assistant. Otto runs skills that retrieve information and perform actions in OpCon from a conversational prompt.
