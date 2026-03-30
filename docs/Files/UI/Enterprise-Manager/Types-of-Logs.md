---
title: Types of Logs
description: "Upon activation, the Logs screen displays the current date, time, and log details."
product_area: Enterprise Manager
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

# Types of Logs

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Upon activation, the **Logs** screen displays the current date, time, and log details. OpCon maintains several distinct logs — each capturing a different category of system activity, from job execution and event processing to critical errors and network communication.

## When Would You Use It?

- Upon activation, the **Logs** screen displays the current date, time, and log details

## Why Would You Use It?

- **Types of**: Upon activation, the **Logs** screen displays the current date, time, and log details

## SAM Log

The **SAM Log** records schedule and job starts, completions, and event processing. The SAM also writes configuration information to the log at startup or regeneration.

## Critical Log

The **Critical Log** records processing errors for:

- Machine communication failures
- Database connection problems
- Event processing failures
- License expiration notifications

## Netcom Log

The **SMANetCom Log** includes configuration parameters, basic communication information, and the configuration for each agent machine. If a default parameter value is changed, the default appears in parentheses next to the relevant parameter.

## Netcom Trace Log

The **SMANetComTrace.log** records all SMANetCom processing information, including detailed TCP/IP messages and socket connection errors to assist with debugging.

## ServMan Log

The **SMAServMan Log** records all information relating to the management of all listed applications.

## ENS Log

The **ENS Log** (SMANotifyHandler.log) records all notification processing information.

## Request Router Log

The **SMARequestRouter Log** records all information relating to request routing.

## External File

The External File option opens a file located on the server.

To open an external file, complete the following steps:

1. Expand the **Logs** option under the **Information** topic
2. Select on **External File**
3. Select the **directory** where the external file is located
4. Enter a *file name* in the **File Name** text box, or select one from the list
5. *(Optional)* Select the **file type** in the **Files of type** list

6. Select the **Open** button to open the file, or **Cancel** to cancel

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Types of Logs procedure involve?**

The Types of Logs procedure involves 6 steps. Complete all steps in order and save your changes.

**Q: What does Types of Logs cover?**

This page covers SAM Log, Critical Log, Netcom Log.

## Glossary

**SMANetCom (SMA Network Communications Module)**: Handles TCP/IP communication of platform-specific automation information between SAM and all agents. Uses database tables to maintain reliable communication and data integrity.

**SMAServMan (SMA Service Manager)**: Manages the starting, stopping, and restarting of all OpCon server programs. Monitors configured applications and restarts them automatically if they fail unexpectedly.

**SMA Request Router**: Sends requests to designated Request Handlers and writes completion information back to the OpCon database. Manages tasks such as schedule maintenance and job output retrieval.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**TCP/IP**: The network communication protocol used for all data exchange between SMANetCom on the OpCon server and agents on target machines.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.
