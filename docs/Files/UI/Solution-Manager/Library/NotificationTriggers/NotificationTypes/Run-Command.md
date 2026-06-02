---
title: Run Command
description: "!Run Command The Run Command dialog provides the following fields for defining a command to run for the selected trigger: - Command (Required): Defines the full path and name of the program to run."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Run Command

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

![Run Command](../../../../../../Resources/Images/SM/Library/NotificationTriggers/run-command-dialog.png "Run Command")

The **Run Command** dialog provides the following fields for defining a command to run for the selected trigger:

- **Command** (Required): Defines the full path and name of the program to run. The maximum for this field is 4000 characters
- **Working Directory** (Optional): Defines the working directory used by the program. The maximum for this field is 255 characters
- **Batch User** (Required): Defines the user with permissions to run the program

## FAQs

**Q: What does the Run Command notification type do?**

The **Run Command** dialog defines a program to run on the OpCon server when a notification trigger fires. You specify the full path to the executable, an optional working directory, and the batch user that has permission to run the program.

**Q: Where can you find Run Command in OpCon?**

Go to **Library > Notification Triggers** in Solution Manager, then select or create a trigger and choose **Run Command** as the notification type.

## Glossary

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
