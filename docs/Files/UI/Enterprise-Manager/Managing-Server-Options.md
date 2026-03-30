---
title: Managing Server Options
description: "The Server Options editor controls global settings for OpCon, displaying server parameter values and source information for viewing and editing."
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

# Managing Server Options

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Server Options** editor controls global settings for OpCon, displaying server parameter values and source information for viewing and editing. For conceptual information, refer to [OpCon Server Options](../../../administration/server-options.md) in the **Concepts** online help.

:::note
Only the ocadm role can access this editor.
:::

## When Would You Use It?

- You need to review or update Server Options settings in Enterprise Manager
- Server Options needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Server Options management in Enterprise Manager reduces the time needed to locate and update settings across the environment
- All Server Options changes are captured in the OpCon audit system, supporting change management and compliance processes

## Modifying Server Option Parameter(s)

To modify a server option parameter, complete the following steps:

1. Select on **Server Options** under the **Administration** topic
2. Select the **tab** containing the parameter to modify
3. Select the **parameter** to modify
4. Enter or select the **Parameter Information**
5. Select **Update** to save, or **Defaults** to reset to the system default
6. Repeat steps 3–5 for each parameter that requires changes
7. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Server Options** toolbar
8. Select **Close ☒** to close the **Server Options** screen

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: What does managing server options involve?**

Managing server options includes Modifying Server Option Parameter(s). Access server options through the Enterprise Manager navigation pane.

**Q: Who can manage server options in OpCon?**

Users with the appropriate privileges assigned through their role can manage server options. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
