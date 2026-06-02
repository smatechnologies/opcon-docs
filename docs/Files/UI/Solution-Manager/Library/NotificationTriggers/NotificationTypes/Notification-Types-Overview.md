---
title: Notification Types Overview
description: "Each notification trigger can deliver alerts through one or more delivery channels. Use this reference to identify available notification types and their configuration requirements."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: reference
---

Each notification trigger can deliver alerts through one or more delivery channels. OpCon supports eight notification types: Email, Text Message, OpCon Event, Windows Event Log, Network Message, SNMP Trap, Run Command, and SPO Event. Each type has distinct configuration fields and character limits.

## Notification types

| Type | Description |
|------|-------------|
| **Email** | Sends an email notification through the configured SMTP server. Supports To, CC, and BCC recipients and optional JORS output attachment. |
| **Text Message** | Sends an SMS message through the configured SMS gateway. The message body is limited to 160 characters. |
| **OpCon Event** | Fires one or more OpCon events as the notification action. Each event is associated with a user account that provides the execution context. |
| **Windows Event Log** | Writes an entry to the Windows Application Event Log. Requires a severity level, an event ID (up to 64 characters), and a message (up to 3,000 characters). |
| **Network Message** | Sends a network message to a specified recipient. The message body is limited to 895 characters. |
| **SNMP Trap** | Sends an SNMP trap to a configured SNMP manager. Requires an event ID (up to 64 characters) and a message (up to 250 characters). |
| **Run Command** | Runs a command or script on the OpCon server. Accepts a command string (up to 4,000 characters), an optional working directory (up to 255 characters), and a batch user. |
| **SPO Event** | Sends an SPO event report. Supports two subtypes: **Spoco** (instance and command, each up to 250 characters) and **Spoal** (text, alarm ID, alarm qualification, and severity, each up to 250 characters). |

## Character limits reference

| Type | Field | Maximum characters |
|------|-------|--------------------|
| Email | To / CC / BCC | 10,000 |
| Email | Subject | 10,000 |
| Email | Body | 12,000 |
| Text Message | To | 3,000 |
| Text Message | Message | 160 |
| Windows Event Log | Event ID | 64 |
| Windows Event Log | Custom Source | 64 |
| Windows Event Log | Message | 3,000 |
| Network Message | Recipient | 3,000 |
| Network Message | Message | 895 |
| SNMP Trap | Event ID | 64 |
| SNMP Trap | Message | 250 |
| Run Command | Command | 4,000 |
| Run Command | Working Directory | 255 |
| SPO Event (Spoco) | Instance / Command | 250 |
| SPO Event (Spoal) | Text / Alarm ID / Alarm Qualification | 250 |

## Trigger event categories

Notification triggers are organized by the category of event that initiates them. The following categories are supported:

| Category | Example trigger events |
|----------|------------------------|
| **Job** | Job Submitted, Job Failed, Job Finished OK, Job Late to Start, Job Late to Finish, Job Exceeded Max Runtime |
| **Schedule** | Schedule Start, Schedule Complete, Schedule Placed on Hold, Schedule Released from Hold |
| **Machine** | Machine Marked Down, Machine Marked Up, Machine Marked Limited, Network Down, Network Up |

## Related topics

- [Email](../NotificationTypes/Email.md)
- [Text Message](../NotificationTypes/Text-Message.md)
- [OpCon Event](OpCon-Events.md)
- [Windows Event Log](../NotificationTypes/Windows-Event-Log.md)
- [Network Message](../NotificationTypes/Network-Message.md)
- [SNMP Trap](../NotificationTypes/SNMP-Trap.md)
- [Run Command](../NotificationTypes/Run-Command.md)
- [SPO Event Report](../NotificationTypes/SPO-Event-Report.md)
