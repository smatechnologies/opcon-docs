---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Managing Script Types
description: "The Script Types editor creates and manages script types associated with scripts stored in the centralized database."
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

# Managing Script Types

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Script Types** editor creates and manages script types associated with scripts stored in the centralized database. The script type determines which [script runners](Managing-Script-Runners.md) can run a given script, establishing the relationship between a script and its runners. For more information, refer to [Embedded Scripts](../../../automation-concepts/embedded-scripts.md) in the **Concepts** online help.

## Script Types Toolbar

The toolbar resides at the top-right corner of the screen. Select any icon to learn more about its functionality.

![Script Types toolbar](../../../Resources/Images/EM/EMrunner_typetoolbar.png "Script Types toolbar")

## Right-click Menu

right-clicking on a script type opens a menu with the same options as the toolbar.

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Adding Script Types](Adding-Script-Types.md)
- [Editing Script Types](Editing-Script-Types.md)
- [Deleting Script Types](Deleting-Script-Types.md)

:::


## FAQs

**Q: What does managing script types involve?**

Managing script types includes Script Types Toolbar, Right-click Menu. Access script types through the Enterprise Manager navigation pane.

**Q: Who can manage script types in OpCon?**

Users with the appropriate privileges assigned through their role can manage script types. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Embedded Script**: A script stored and versioned directly within the OpCon database. Embedded scripts can be assigned to Windows jobs and run at runtime without requiring the script file to exist on the target machine.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
