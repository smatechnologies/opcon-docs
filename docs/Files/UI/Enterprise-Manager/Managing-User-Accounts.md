---
title: Managing User Accounts
description: "The User Accounts editor defines and maintains OpCon User Accounts."
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

# Managing User Accounts

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **User Accounts** editor defines and maintains OpCon User Accounts. It contains a list of users, user account details, and options. For information on manual login, automatic login, and optional LDAP integration, refer to [User Accounts](../../../administration/user-accounts.md) in the **Concepts** online help.

## When Would You Use It?

- You need to review or update User Accounts settings in Enterprise Manager
- User Accounts needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing User Accounts management in Enterprise Manager reduces the time needed to locate and update settings across the environment
- All User Accounts changes are captured in the OpCon audit system, supporting change management and compliance processes

## User Accounts Toolbar

The **User Accounts** editor toolbar provides functions for managing user accounts. Select any icon to learn more about its functionality.

![User Accounts toolbar](../../../Resources/Images/EM/EMsecurityusetoolbar.png "User Accounts toolbar")

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Adding User Accounts](Adding-User-Accounts.md)
- [Forcing Password Changes at Next Logon](Forcing-Password-Changes.md)
- [Disabling User Logins](Disabling-User-Logins.md)
- [Changing User Passwords](Changing-User-Passwords.md)
- [Resetting User Passwords](Resetting-User-Passwords.md)
- [Copying User Accounts](Copying-User-Accounts.md)
- [Deleting User Accounts](Deleting-User-Accounts.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: What does managing user accounts involve?**

Managing user accounts includes User Accounts Toolbar. Access user accounts through the Enterprise Manager navigation pane.

**Q: Who can manage user accounts in OpCon?**

Users with the appropriate privileges assigned through their role can manage user accounts. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
