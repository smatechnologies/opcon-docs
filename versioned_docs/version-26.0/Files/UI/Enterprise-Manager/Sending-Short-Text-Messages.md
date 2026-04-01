---
title: Sending Short Text Messages
description: "The Text tab provides the following fields for defining a notification to a pager, phone, or other SMS-capable device."
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

# Sending Short Text Messages

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Text** tab provides the following fields for defining a notification to a pager, phone, or other SMS-capable device.

- **To** (Required): SMTP email address(es) or SMS-capable device address(es), separated by semicolons. Maximum 3,000 characters. Examples:
  - AT&T Wireless - phonenumber\@txt.att.net
  - T-Mobile - phonenumber\@tmomail.net
  - Verizon - phonenumber\@vtext.com
- **Message** (Required): User-defined message up to 160 characters

::note
Several carriers are deprecating email-to-text functionality. Best practice is to discontinue reliance on this functionality.
:::

:::note
The SMA Notify Handler inserts a Notification ID in the format ID=nnn before any other message content. For more information, refer to [Looking up Notification Sources](Looking-up-Notification-Sources.md).
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What is Short Text Messages used for?**

Short Text Messages is used to send a notification or message from OpCon when triggered by a job, schedule, or machine status event.

## Glossary

**SMA Notify Handler**: Processes notifications triggered by Machine, Schedule, and Job status changes. Can send emails, text messages, Windows Event Log entries, SNMP traps, and SPO notifications.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
