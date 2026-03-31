---
title: Managing Roles
description: "The Roles editor maintains Role privileges, displaying a list of Role names, Inherit Privilege specifications, and User Assignments."
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

# Managing Roles

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Roles** editor maintains Role privileges, displaying a list of Role names, Inherit Privilege specifications, and User Assignments. For conceptual information, refer to [Roles](../../../administration/roles.md) in the **Concepts** online help.

## When Would You Use It?

- You need to review or update Roles settings in Enterprise Manager
- Roles needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Roles management in Enterprise Manager reduces the time needed to locate and update settings across the environment
- All Roles changes are captured in the OpCon audit system, supporting change management and compliance processes

## Roles Toolbar

The **Roles** editor has a toolbar for managing roles. Select on any specific icon on the toolbar below to learn more about its functionality.

![Roles toolbar](../../../Resources/Images/EM/EMsecurityusetoolbar.png "Roles toolbar")

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Adding Roles](Adding-Roles.md)
- [Granting Privileges to Roles](Granting-Privileges-to-Roles.md)
- [Assigning Users to Roles](Assigning-Users-to-Roles.md)
- [Unassigning Users from Roles](Unassigning-Users-from-Roles.md)
- [Copying Roles](Copying-Roles.md)
- [Editing Roles](Editing-Roles.md)
- [Deleting Roles](Deleting-Roles.md)


## FAQs

**Q: What does managing roles involve?**

Managing roles includes Roles Toolbar. Access roles through the Enterprise Manager navigation pane.

**Q: Who can manage roles in OpCon?**

Users with the appropriate privileges assigned through their role can manage roles. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
