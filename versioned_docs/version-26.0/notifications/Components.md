---
title: Event Notification
description: "Event Notification in OpCon triggers notifications when Machine, Schedule, and Job status change events occur."
product_area: Notifications
audience: Operations Staff, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Operations Staff
  - Automation Engineer
  - Notifications
last_updated: 2026-03-18
doc_type: conceptual
---

# Event Notification

**Theme:** Configure  
**Who Is It For?** Operations Staff, Automation Engineer

## What Is It?

Event Notification in OpCon triggers notifications when Machine, Schedule, and Job status change events occur. Administrators can apply escalation rules to critical notifications for higher visibility.

Notification types include: Windows Event Log, Email (SMTP), Network Message, SNMP Trap, Unisys SPO AL and CO Reports, Text Messages (SMS), OpCon Events, and Command.

## When Would You Use It?

- Use this feature when Machine, Schedule, and Job status change events occur

## Why Would You Use It?

- **Event Notification**: Event Notification in OpCon triggers notifications when Machine, Schedule, and Job status change events occur

## Components

The Event Notification system consists of the following components:

- **SMA Notify Handler**: Reads the OpCon database and writes messages according to notification type. See [SMA Notify Handler](../server-programs/notify-handler.md)
- **Notification Manager**: Creates groups and defines notifications based on Machine, Schedule, and Job status change events. See [Using Notification Manager](../Files/UI/Enterprise-Manager/Using-Notification-Manager.md)
  - **Notification Groups**: User-defined groups of machines, schedules, or jobs that share common triggers and notifications
  - **Notification Triggers**: Database triggers that fire when status change events occur. Notification details are sent to the SMA Notify Handler through the database
- **Escalation Manager**: Configures notification escalation groups and rules. See [Using Escalation Manager](../Files/UI/Enterprise-Manager/Using-Escalation-Manager.md)
- **Escalation Acknowledgment**: Displays active escalations and allows users to acknowledge them. See [Using Escalation Acknowledgment](../Files/UI/Enterprise-Manager/Using-Escalation-Acknowlegement.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Notification Manager | Creates groups and defines notifications based on Machine, Schedule, and Job status change events. | — | — |
| Escalation Manager | Configures notification escalation groups and rules. | — | — |
| Escalation Acknowledgment | Displays active escalations and allows users to acknowledge them. | — | — |
## FAQs

**Q: What is Event Notification in OpCon?**

Event Notification triggers messages and actions when Machine, Schedule, or Job status change events occur. Administrators configure notification groups, triggers, and escalation rules through the Notification Manager and Escalation Manager.

**Q: What notification types does OpCon support?**

OpCon supports Windows Event Log, Email (SMTP), Network Message, SNMP Trap, Unisys SPO AL and CO Reports, Text Messages (SMS), OpCon Events, and Command notification types.

**Q: What is the role of the SMA Notify Handler?**

The SMA Notify Handler reads the OpCon database and writes messages to the configured notification targets based on triggered events. It is the service responsible for delivering notifications of all types.

## Glossary

**SMA Notify Handler**: Processes notifications triggered by Machine, Schedule, and Job status changes. Can send emails, text messages, Windows Event Log entries, SNMP traps, and SPO notifications.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
