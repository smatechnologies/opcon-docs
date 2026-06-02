---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Retrieve Application Log
description: "The Retrieve Application Log skill fetches an OpCon application log file from within the Otto chat, without leaving Solution Manager."
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

# Retrieve Application Log

The **Retrieve Application Log** skill fetches an OpCon application log file by name from within the Otto chat. Use this skill when you need to inspect a specific application log without leaving Solution Manager.

## How It Works

When you ask Otto to retrieve an application log, the skill takes the log file name you provide and returns the contents of that file. Otto confirms the action before running it. If the file cannot be found or the request fails, Otto responds with an error message.

## Required Privileges

To use Otto skills, your account must have the **Chatbot Privileges** function privilege, or hold administrator or all-function privileges.

## Parameters

The **Retrieve Application Log** skill uses the following parameter.

| Parameter | Required | What It Does |
|---|---|---|
| **Log File Name** | Yes | The name of the application log file to retrieve. |

## Example Prompts

```
Retrieve application log for SMAOpConRestApi
```

```
Please get the application log with name SMAOpConRestApi.
```

## Glossary

**Otto**: The Solution Manager chat assistant. Otto runs skills that retrieve information and perform actions in OpCon from a conversational prompt.

**Solution Manager**: The browser-based web interface for OpCon. Provides access to operations, self-service, vision dashboards, and configuration.
