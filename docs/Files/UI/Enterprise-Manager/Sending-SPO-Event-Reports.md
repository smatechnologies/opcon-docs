---
title: Sending SPO Event Reports
description: "The SPO tab provides the following fields for defining an SPO AL Report or a CO Report notification: - AL: If enabled, defines the AL report fields - Text (Optional): User-defined message up to 250."
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

# Sending SPO Event Reports

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **SPO** tab provides the following fields for defining an SPO AL Report or a CO Report notification:

- **AL**: If enabled, defines the AL report fields
- **Text** (Optional): User-defined message up to 250 characters. If omitted, the default `<lsam_mach_name> <schedule_date> <schedule_name> <job_name>` is used. If specified, the SPO message contains only the user-defined text
- **Severity**: Message severity level. Choices: Informational, Minor, Major, Warning, Critical, Indeterminate, or Unselect
- **Alarmid** (Optional): Any valid AL alarmid attribute, up to 250 characters. If omitted and no SPO Default Alarm ID is set in Administration > Options, the agent Machine name is sent
- **Alarmqual** (Optional): Any valid AL alarmqual attribute, up to 250 characters. If omitted, the Schedule and Job Name are sent
- **CO**: If enabled, presents the CO report fields
- **Instance** (Required): Any valid CO instance attribute. Case-sensitive. Maximum 250 characters
- **Command** (Optional): Any valid CO command attribute. Maximum 250 characters

:::note
This notification type is disabled on Linux. Notifications defined before Release 20.0.0 will be disabled.
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| AL | If enabled, defines the AL report fields | `<lsam_mach_name> <schedule_da | Maximum 250 characters. - **Command** (Optional): Any valid C |
| Severity | Message severity level. | Alarm ID is set in Administrat | Maximum 250 characters. - **Command** (Optional): Any valid C |
| CO | If enabled, presents the CO report fields | — | Maximum 250 characters. - **Command** (Optional): Any valid C |
## FAQs

**Q: What is SPO Event Reports used for?**

SPO Event Reports is used to send a notification or message from OpCon when triggered by a job, schedule, or machine status event.

## Glossary

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
