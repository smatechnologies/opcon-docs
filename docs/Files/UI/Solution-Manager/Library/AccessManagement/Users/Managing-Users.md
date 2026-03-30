---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Managing Users
description: "The Users page is found in _Library > Access Management > Users_."
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

# Managing Users

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Users** page is found in _Library > Access Management > Users_. It displays a list of all users in the system. Select a user's name to view their details. The **SSO** indicator appears next to users with a role configured for Single Sign-On.

![Users](../../../../../../Resources/Images/SM/Library/AccessManagement/users-page.png 'Users')

To sort the users, select the sort icon ![Sort Icon](../../../../../../Resources/Images/SM/Library/AccessManagement/sort-icon.png 'Sort Icon').

Selecting a user displays the following tabs:

- [General](Modifying-Users/General.md)
- [Roles](Modifying-Users/Roles.md)
- [Settings](Modifying-Users/Settings.md)

To add, copy, or delete a user, use the context menu button ![Context Menu Button](../../../../../../Resources/Images/SM/Library/AccessManagement/context-menu.png 'Context Menu Button'):

- [Adding Users](Adding-Users.md)
- [Deleting Users](Deleting-Users.md)
- [Copying Users](Copying-Users.md)

---

For conceptual help, see:

- [Users](../../../../../../administration/user-accounts.md)

## When Would You Use It?

- You need to review or update Users settings in Solution Manager
- Users needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Users management in Solution Manager reduces the time needed to locate and update settings across the environment
- All Users changes are captured in the OpCon audit system, supporting change management and compliance processes

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: What does managing users involve?**

Managing users includes adding, editing, and deleting records. Access users through the Enterprise Manager navigation pane.

**Q: Who can manage users in OpCon?**

Users with the appropriate privileges assigned through their role can manage users. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
