---
title: Sending SPO Event Reports
description: "Reference for the SPO tab fields used to define an SPO AL Report or CO Report notification in Enterprise Manager, including the Text, Severity, Alarmid, Alarmqual, Instance, and Command fields."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-05-29
doc_type: reference
---

# Sending SPO Event Reports

## What Is It?

The **SPO** tab defines the message OpCon sends to an SPO (event console) when a notification is triggered. On the tab, you select one of two report types using the **AL** and **CO** options:

- **AL**: Sends an alarm (AL) report. Use this report type to raise an alarm with a severity, alarm identifier, and qualifier.
- **CO**: Sends a command (CO) report. Use this report type to send a command directed at a target instance.

Selecting **AL** or **CO** changes the fields shown on the tab. The **AL** option is selected by default.

:::note
This notification type is disabled on Linux. Notifications defined before Release 20.0.0 will be disabled.
:::

## AL Report Fields

The following fields are available when you select the **AL** option:

| Field | Required | What It Does | Default |
|---|---|---|---|
| **Text** | Optional | User-defined message, up to 250 characters. The SPO message always begins with the agent Machine name, schedule date, schedule name, and job name. If you specify Text, it is appended after that standard information. If you omit Text, the message contains only the standard information. | Machine name, schedule date, schedule name, and job name |
| **Severity** | — | Message severity level. Choices: **Informational**, **Warning**, **Minor**, **Major**, **Critical**, **Indeterminate**, **Clear**. | **Informational** |
| **Alarmid** | Optional | Any valid AL alarmid attribute, up to 250 characters. If omitted and no default alarm ID is configured, the agent Machine name is sent. | Configured default alarm ID, or the Machine name if none is set |
| **Alarmqual** | Optional | Any valid AL alarmqual attribute, up to 250 characters. If omitted, the schedule name and job name are sent (as `<schedule_name>:<job_name>`). | `<schedule_name>:<job_name>` |

## CO Report Fields

The following fields are available when you select the **CO** option:

| Field | Required | What It Does | Maximum |
|---|---|---|---|
| **Instance** | Required | Any valid CO instance attribute. Case-sensitive. | 250 characters |
| **Command** | Required | Any valid CO command attribute. | 250 characters |

## Related Topics

<!-- GAP: No verified related-topic page paths available from source or the existing page; needs SME/site navigation review. -->

## Glossary

**Agent**: An application installed on a target platform that runs jobs in the native language of that platform and reports results back to OpCon. Agents are defined as Machines in OpCon.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Machine**: A platform defined in the OpCon database that has an Agent installed. OpCon routes job requests to Machines, and Machines report job completion status back to OpCon.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which Machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
