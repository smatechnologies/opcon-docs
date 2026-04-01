---
title: Running Commands
description: "The Run Command tab provides the following fields for the selected trigger: - Command (Required): Full path and name of the program to run."
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

# Running Commands

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Run Command** tab provides the following fields for the selected trigger:

- **Command** (Required): Full path and name of the program to run. Maximum 4000 characters
- **Working Directory** (Optional): Working directory used by the program. Maximum 255 characters
- **Batch User** (Required): User with permissions to run the program

:::note
This notification type is disabled on Linux. Notifications defined before Release 20.0.0 will be disabled.
:::

## FAQs

**Q: What does running commands do?**

Running commands runs the specified action or command in OpCon.

## Glossary

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
