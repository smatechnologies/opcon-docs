---
title: Managing Function Privileges
description: "The Function Privileges editor maintains Role privileges for specific functions."
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

# Managing Function Privileges

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Function Privileges** editor maintains Role privileges for specific functions. It contains a list of role names with granted and revoked privileges. For conceptual information, refer to [Function Privileges](../../../administration/privileges.md#function-privileges) in the **Concepts** online help.

## When Would You Use It?

- You need to review or update Function Privileges settings in Enterprise Manager
- Function Privileges needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Function Privileges management in Enterprise Manager reduces the time needed to locate and update settings across the environment
- All Function Privileges changes are captured in the OpCon audit system, supporting change management and compliance processes

## Granting Function Privileges

To grant a privilege, complete the following steps:

1. Select on **Function Privileges** under the **Security** topic. The **Function Privileges** screen displays
2. Select a **role** in the **Select Role** list
3. Select the **function(s)** in the **Revoked** list box
4. Select the **right arrow** to move functions to the **Granted** list box
5. Select **Close ☒** to close the **Function Privileges** screen

## Revoking Function Privileges

To revoke a privilege, complete the following steps:

1. Select on **Function Privileges** under the **Security** topic. The **Function Privileges** screen displays
2. Select a **role** in the **Select Role** list
3. Select the **function(s)** in the **Granted** list box
4. Select the **left arrow** to move functions to the **Revoked** list box
5. Select **Close ☒** to close the **Function Privileges** screen

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: What does managing function privileges involve?**

Managing function privileges includes Granting Function Privileges, Revoking Function Privileges. Access function privileges through the Enterprise Manager navigation pane.

**Q: Who can manage function privileges in OpCon?**

Users with the appropriate privileges assigned through their role can manage function privileges. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
