---
title: Sending SNMP Traps
description: "The SNMP tab provides the following fields for defining an SNMP trap notification: - Event ID (Optional): A user-defined ID usable as search criteria in a third-party notification filter."
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

# Sending SNMP Traps

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **SNMP** tab provides the following fields for defining an SNMP trap notification:

- **Event ID** (Optional): A user-defined ID usable as search criteria in a third-party notification filter. Maximum 64 characters
  - The SMA Notify Handler places this ID in the message as: "EventID=\<space\>XXXXXX"
  - Allowed characters exclude: \~ (Tilde), \# (Pound), % (Percent), ! (Exclamation), @ (At), $ (Dollar), \^ (Caret)
- **Severity**: The severity level of the message. Options: Information, Warning, or Error
- **Message**: A user-defined message up to 3,000 characters. The message also includes default trigger information: Event ID, trigger type, and triggering status change event

:::note
This notification type is disabled on Linux. Notifications defined before Release 20.0.0 will be disabled.
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Severity | The severity level of the message. | trigger information: Event ID | up to 3,000 characters. The message also includes default |
| Message | A user-defined message up to 3,000 characters. | trigger information: Event ID | up to 3,000 characters. The message also includes default |
## FAQs

**Q: What is SNMP Traps used for?**

SNMP Traps is used to send a notification or message from OpCon when triggered by a job, schedule, or machine status event.

## Glossary

**SMA Notify Handler**: Processes notifications triggered by Machine, Schedule, and Job status changes. Can send emails, text messages, Windows Event Log entries, SNMP traps, and SPO notifications.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
