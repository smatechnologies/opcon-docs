---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Managing Roles and Privileges
description: "The Roles page (_Library > Access Management > Roles_) lists all roles in the system."
product_area: Solution Manager
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

# Managing Roles and Privileges

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Roles** page (_Library > Access Management > Roles_) lists all roles in the system. Select a role name to view its details. Use the sort icon ![Sort Icon](../../../../../../Resources/Images/SM/Library/AccessManagement/sort-icon.png 'Sort Icon') to sort the list.

![Roles](../../../../../../Resources/Images/SM/Library/AccessManagement/roles-page.png 'Roles')

Selecting a role displays the following tabs:

- [General](Modifying-Roles-And-Privileges/General.md)
- [Activities](Modifying-Roles-And-Privileges/Activities.md)
- [Batch Users](Modifying-Roles-And-Privileges/Batch-Users.md)
- [Department Activities](Modifying-Roles-And-Privileges/Department-Activities.md)
- [Resources](Modifying-Roles-And-Privileges/Resources.md)
- [Users](Modifying-Roles-And-Privileges/Users.md)

To add, copy, or delete a role, use the context menu button ![Context Menu Button](../../../../../../Resources/Images/SM/Library/AccessManagement/context-menu.png 'Context Menu Button'):

- [Adding Roles](Adding-Roles.md)
- [Deleting Roles](Deleting-Roles.md)
- [Copying Roles](Copying-Roles.md)

---

For conceptual help, see:

- [Privileges](../../../../../../administration/privileges.md)
- [Roles](../../../../../../administration/roles.md)
- [Users](../../../../../../administration/user-accounts.md)

## When Would You Use It?

- You need to review or update Roles and Privileges settings in Solution Manager
- Roles and Privileges needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Roles and Privileges management in Solution Manager reduces the time needed to locate and update settings across the environment
- All Roles and Privileges changes are captured in the OpCon audit system, supporting change management and compliance processes

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: What does managing roles and privileges involve?**

Managing roles and privileges includes adding, editing, and deleting records. Access roles and privileges through the Enterprise Manager navigation pane.

**Q: Who can manage roles and privileges in OpCon?**

Users with the appropriate privileges assigned through their role can manage roles and privileges. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
