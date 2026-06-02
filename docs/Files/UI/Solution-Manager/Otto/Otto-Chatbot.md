---
title: Otto Chatbot Overview
description: "Otto is an AI-powered chatbot in Solution Manager that answers questions about OpCon and performs operational actions through built-in skills."
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

# Otto Chatbot Overview

Otto is the AI-powered chatbot in Solution Manager. It understands natural language questions about OpCon, answers questions using the OpCon help documentation, and performs operational actions through built-in skills. Otto is available at the bottom-right corner of every Solution Manager screen via the chat button.

![Otto chat button as seen by cloud users](../../../../Resources/Images/SM/Otto/Otto-Cloud-Users.png "Chatbot")

Otto is available exclusively to cloud customers. On-premises customers see a different interface that does not include Otto capabilities.

![Chat button as seen by on-premises users](../../../../Resources/Images/SM/Otto/Otto-Non-Cloud-Users.png "Chatbot")

## Access Requirements

To use Otto skills, your user account must have the **Chatbot Privileges** function privilege. Users who are system administrators, who have **All Admin Privileges**, or who have **All Function Privileges** also have access. If Otto is disabled at the server level, no skills are returned regardless of user privileges.

## Data and Privacy

Otto uses Azure OpenAI Services, which uses OpenAI's GPT-4o model to generate responses. The service is fully controlled by Microsoft and provides a secure, private environment for processing prompts.

Your prompts (inputs) and completions (outputs):

- are NOT available to other customers
- are NOT available to OpenAI
- are NOT used to improve OpenAI models
- are NOT used to improve any Microsoft or third-party products or services
- are NOT used for automatically improving Azure OpenAI models for your use in your resource
- are NOT used to fine-tune any models

Microsoft hosts the OpenAI models in its Azure environment. The service does not interact with any services operated by OpenAI (for example, ChatGPT or the OpenAI API). Azure OpenAI Service includes content filtering and abuse monitoring to reduce the risk of harmful use.

### Data Flow

The following diagram illustrates how your data is processed.

![Otto data flow diagram](../../../../Resources/Images/SM/Otto/Otto-Data-Flow.png "Otto Data Flow")

#### Chat Tool Definitions

Chat tool definitions are provided by the OpCon REST API. They give Otto context to determine whether a user is asking a question about OpCon or requesting a skill.

#### Data Sources

Otto uses OpCon help documentation to answer questions about OpCon.

## Features

Otto provides the following capabilities:

- **Search**: Otto searches the OpCon documentation to answer your questions.
- **Skills**: Otto performs operational tasks in OpCon on your behalf. Before running any action, Otto responds with a confirmation message. If the skill is unavailable or the request fails, Otto responds with an error message.

### Available Skills

| Skill | Description |
|-------|-------------|
| [Add Daily Job](./Skills/Skill-Add-Daily-Job.md) | Add a job to a schedule in the daily queue |
| [Build Schedule](./Skills/Skill-Build-Schedule.md) | Trigger a schedule build for a specified date |
| [Delete Daily Job](./Skills/Skill-Delete-Daily-Job.md) | Remove a job from the daily queue |
| [Get Failed Jobs](./Skills/Skill-Get-Failed-Jobs.md) | Retrieve a list of failed jobs for a specified date |
| [Get Failed Schedules](./Skills/Skill-Get-Failed-Schedules.md) | Retrieve a list of schedules with failed jobs |
| [Perform a Fast Schedule Check](./Skills/Skill-Perform-A-Fast-Schedule-Check.md) | Run a fast integrity check on a schedule |
| [Restart Failed Jobs](./Skills/Skill-Restart-Failed-Jobs.md) | Restart all failed jobs in a schedule |
| [Retrieve Application Log](./Skills/Skill-Retrieve-Application-Log.md) | Fetch an OpCon application log file |
| [Retrieve Job Output](./Skills/Skill-Retrieve-Job-Output.md) | Fetch the output from a completed job |
| [Summarize Schedule Build](./Skills/Skill-Summarize-Schedule-Build.md) | Get a summary of a recent schedule build |
| [Update Job Status](./Skills/Skill-Update-Job-Status.md) | Change the status of a specific job |
| [Update Machine Status](./Skills/Skill-Update-Machine-Status.md) | Change the communication status of an Agent |
| [Update Schedule Status](./Skills/Skill-Update-Schedule-Status.md) | Change the status of a schedule |

For details on each skill, see [Otto Skills Overview](./Skills/Skills-Overview.md).
