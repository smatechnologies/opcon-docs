---
title: Using Escalation Manager
description: "The Escalation Manager editor defines escalation rules for any ENS trigger that uses email."
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

# Using Escalation Manager

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Escalation Manager** editor defines escalation rules for any ENS trigger that uses email. User-defined escalation user groups are created and assigned to rules. Rules are applied to triggers in [Notification Definitions](Notification-Definitions.md) in **Notification Manager**. For conceptual information about the Event Notification System (ENS), refer to [Event Notification](../../../notifications/Components.md) in the **Concepts** online help.

The **Escalation Manager** screen displays escalation rules and groups.

Use the **Type Filter Text** box to filter rules and groups by entering part of or the full name. Type an \* (asterisk) before a word to search for strings that do not start with that word.

:::note
In the Escalation Manager screen, type **Level** to find a specific rule or group that includes "Level" somewhere in the string.
:::

The **Escalation Manager** has two areas for managing escalations:

**Rules**: Lists escalation rules. You must add escalation user groups to the **Groups** frame before adding rules. The **Rules** frame toolbar and right-click menu provide:

- **[Add](Defining-Escalation-Rules.md)**: Opens the **Escalation Rule Add/Edit** dialog
- **Edit**: Opens the **Escalation Rule Add/Edit** dialog
- **Delete**: Deletes the selected rule

**Groups**: Lists escalation user groups. You must create user groups before assigning them to rules in the **Rules** frame. The **Groups** frame toolbar and right-click menu provide:

- **[Add](Defining-Escalation-Groups.md)**: Opens the **Group Add/Edit** dialog
- **Edit**: Opens the **Group Add/Edit** dialog
- **Delete**: Deletes the selected group

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Defining Escalation Groups](Defining-Escalation-Groups.md)
- [Defining Escalation Rules](Defining-Escalation-Rules.md)
- [Applying Escalation Rules to Triggers](Applying-Escalation-Rules-to-Triggers.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Rules | Lists escalation rules. | — | — |
| [Add](Defining-Escalation-Rules.md) | Opens the **Escalation Rule Add/Edit** dialog | — | — |
| Groups | Lists escalation user groups. | — | — |
| [Add](Defining-Escalation-Groups.md) | Opens the **Group Add/Edit** dialog | — | — |
## FAQs

**Q: What can you do with Escalation Manager?**

Escalation Manager allows you to manage and configure related settings.

**Q: Who has access to Escalation Manager?**

Access to Escalation Manager is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
