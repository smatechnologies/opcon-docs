---
title: Managing Batch Users
description: "The Batch User editor creates and maintains the Batch Users required for processing jobs on IBM i, MCP, OpenVMS, SQL, UNIX, and Windows."
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

# Managing Batch Users

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Batch User** editor creates and maintains the Batch Users required for processing jobs on IBM i, MCP, OpenVMS, SQL, UNIX, and Windows. Privileges are attached to these Batch Users but managed in the **Batch User Privileges** screen. For conceptual information, refer to [Batch User Privileges](../../../administration/privileges.md#batch-user-privileges) in the **Concepts** online help.

The editor contains a list of target operating systems, associated batch users, batch user details, and a button to manage batch user privileges.

## Batch Users Toolbar

The **Batch Users** editor has a toolbar for managing batch users. Select any icon on the toolbar below to learn more about its functionality.

![Batch Users toolbar](../../../Resources/Images/EM/EMbatchuserstoolbar.png "Batch Users toolbar")

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Adding Batch Users](Adding-Batch-Users.md)
- [Granting Privileges to Batch Users](Granting-Privileges-to-Batch-Users.md)
- [Revoking Privileges from Batch Users](Revoking-Privileges-from-Batch-Users.md)
- [Editing Batch Users](Editing-Batch-Users.md)
- [Deleting Batch Users](Deleting-Batch-Users.md)
- [Viewing Additional Batch User Information](Viewing-Additional-Batch-User-Info.md)
:::


## FAQs

**Q: What does managing batch users involve?**

Managing batch users includes Batch Users Toolbar. Access batch users through the Enterprise Manager navigation pane.

**Q: Who can manage batch users in OpCon?**

Users with the appropriate privileges assigned through their role can manage batch users. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
