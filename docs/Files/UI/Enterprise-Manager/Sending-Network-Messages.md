---
title: Sending Network Messages
description: "The Network tab provides the following fields for defining a Network Pop-up Message notification: The SMANotifyHandler always attempts to use the Msg.exe program first."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Sending Network Messages

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Network** tab provides the following fields for defining a Network Pop-up Message notification:

:::caution
The SMANotifyHandler always attempts to use the **Msg.exe** program first. For a successful message, the Authentication User (UNC Access) and Authentication Password (UNC Access) must be defined in the Server Options. You must be an Administrator on the SAM application server and on every machine to which it will send messages. For more information, refer to **Authentication User (UNC Access)** and **Authentication Encrypted Password (UNC Access)** in [Server Options](../../../administration/server-options.md#smtp-server-settings) in the **Concepts** online help.
:::

- **Recipient Name(s)** (Required): Machine host names, TCP/IP addresses, or Windows User Names separated by semicolons (;). Maximum 3,000 characters
- **Message**: A user-defined message up to 3,000 characters. The message also includes default trigger information: trigger type and triggering status change event

:::note
This notification type is disabled on Linux. Notifications defined before Release 20.0.0 will be disabled.
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Message | A user-defined message up to 3,000 characters. | trigger information: trigger t | up to 3,000 characters. The message also includes default |
## FAQs

**Q: What is Network Messages used for?**

Network Messages is used to send a notification or message from OpCon when triggered by a job, schedule, or machine status event.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**TCP/IP**: The network communication protocol used for all data exchange between SMANetCom on the OpCon server and agents on target machines.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
