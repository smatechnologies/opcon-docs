---
title: Using Escalation Acknowledgment
description: "The Escalation Acknowledgment view is used to view and acknowledge escalations."
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

# Using Escalation Acknowledgment

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Escalation Acknowledgment** view is used to view and acknowledge escalations. To set up escalation rules, refer to [Using Escalation Manager](Using-Escalation-Manager.md).

The screen lists unacknowledged escalations with the following information for each:

- **Date**: The date of the escalation
- **Notification**: The subject of the email notification pending acknowledgment
- **Escalation Level**: The current level of the escalation, as defined in the rule sequence
- **Status**: The current state of acknowledgment. Status has two states:
  - **Pending**: The escalation is awaiting acknowledgment and has been sent to one or more user groups in the escalation rule
  - **Exhausted**: The escalation has been sent to all user groups in the rule but has not been acknowledged

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Viewing Notification Details](Viewing-Notification-Details.md)
- [Acknowledging Escalations](Acknowledging-Escalations.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Date | The date of the escalation | — | — |
| Escalation Level | The current level of the escalation, as defined in the rule sequence | — | — |
| Status | The current state of acknowledgment. | — | — |
## FAQs

**Q: What can you do with Escalation Acknowledgment?**

Escalation Acknowledgment allows you to manage and configure related settings.

**Q: Who has access to Escalation Acknowledgment?**

Access to Escalation Acknowledgment is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
