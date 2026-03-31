---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Managing Script Runners
description: "The Script Runners editor creates and manages interpreters and their associated command templates."
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

# Managing Script Runners

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Script Runners** editor creates and manages interpreters and their associated command templates. Templates are passed to the Agent machine so the Agent knows how to run scripts received from the centralized database. For more information, refer to [Embedded Scripts](../../../automation-concepts/embedded-scripts.md) in the **Concepts** online help.

## When Would You Use It?

- You need to review or update Script Runners settings in Enterprise Manager
- Script Runners needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Script Runners management in Enterprise Manager reduces the time needed to locate and update settings across the environment
- All Script Runners changes are captured in the OpCon audit system, supporting change management and compliance processes

## Script Runners Toolbar

The toolbar resides at the top-right corner of the screen. Select any icon to learn more about its functionality.

![Script Runners toolbar](../../../Resources/Images/EM/EMrunner_typetoolbar.png "Script Runners toolbar")

## Right-click Menu

right-clicking on a script runner opens a menu with the same options as the toolbar.

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Adding Script Runners](Adding-Script-Runners.md)
- [Editing Script Runners](Editing-Script-Runners.md)
- [Deleting Script Runners](Deleting-Script-Runners.md)

:::


## FAQs

**Q: What does managing script runners involve?**

Managing script runners includes Script Runners Toolbar, Right-click Menu. Access script runners through the Enterprise Manager navigation pane.

**Q: Who can manage script runners in OpCon?**

Users with the appropriate privileges assigned through their role can manage script runners. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Embedded Script**: A script stored and versioned directly within the OpCon database. Embedded scripts can be assigned to Windows jobs and run at runtime without requiring the script file to exist on the target machine.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
