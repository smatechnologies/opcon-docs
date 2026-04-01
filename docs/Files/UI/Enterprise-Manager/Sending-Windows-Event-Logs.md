---
title: Sending Windows Event Logs
description: "The Event Log tab provides the following fields for defining a Windows Event Log notification: - Event ID (Optional): User-defined ID used as search criteria in third-party notification filters."
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

# Sending Windows Event Logs

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Event Log** tab provides the following fields for defining a Windows Event Log notification:

- **Event ID** (Optional): User-defined ID used as search criteria in third-party notification filters. Maximum 64 characters. The SMA Notify Handler formats it as `EventID= XXXXXX`. Prohibited characters: ~ \# % ! @ $ ^
- **Severity**: Message severity level. Choices: Information, Warning, or Error
- **Custom Event Source** (Optional): When selected, displays the **Event Source** field for a custom Source ID. Maximum 64 characters. The SMA Notify Handler prepends `OPCON:` to prevent conflicts. Allowed characters: alphanumeric (a-Z, 0-9), dash, underscore, space, comma, period, equal sign, parentheses
- **Message**: User-defined message up to 3,000 characters. The message also includes default trigger information: Event ID, trigger type, and triggering status change event

When the message appears in the Windows Event Log, any notification product that can read this log can send notifications.

:::note
This notification type is disabled on Linux. Notifications defined before Release 20.0.0 will be disabled.
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Severity | Message severity level. | trigger information: Event ID | Maximum 64 characters. The SMA Notify Handler prepends `OPCO |
| Message | User-defined message up to 3,000 characters. | trigger information: Event ID | up to 3,000 characters. The message also includes default |
## FAQs

**Q: What is Windows Event Logs used for?**

Windows Event Logs is used to send a notification or message from OpCon when triggered by a job, schedule, or machine status event.

## Glossary

**SMA Notify Handler**: Processes notifications triggered by Machine, Schedule, and Job status changes. Can send emails, text messages, Windows Event Log entries, SNMP traps, and SPO notifications.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
