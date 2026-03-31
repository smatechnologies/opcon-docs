---
title: Managing Machine Group Privileges
description: "The Machine Group Privileges editor maintains Role privileges for Machine Groups."
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

# Managing Machine Group Privileges

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Machine Group Privileges** editor maintains Role privileges for Machine Groups. It contains a list of role names with granted and revoked privileges. For conceptual information, refer to [Machine Group Privileges](../../../administration/privileges.md#machine-group-privileges) in the **Concepts** online help.

:::note
If a Role has **Inherit Privileges for All Machine Groups** enabled, the UI does not allow granting or revoking specific privileges. For additional information, refer to [Roles](../../../administration/roles.md) in the **Concepts** online help.
:::

## When Would You Use It?

- You need to review or update Machine Group Privileges settings in Enterprise Manager
- Machine Group Privileges needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Machine Group Privileges management in Enterprise Manager reduces the time needed to locate and update settings across the environment
- All Machine Group Privileges changes are captured in the OpCon audit system, supporting change management and compliance processes

## Granting Machine Group Privileges

To grant a privilege, complete the following steps:

1. Select on **Machine Group Privileges** under the **Security** topic. The **Machine Group Privileges** screen displays
2. Select a **role** in the **Select Role** list
3. Select the **machine group(s)** in the **Revoked** list box
4. Select the **right arrow** to move privileges to the **Granted** list box. This gives the user read-only privileges for all jobs on the machine group
5. Select **Close ☒** to close the **Machine Group Privileges** screen

## Revoking Machine Group Privileges

To revoke a privilege, complete the following steps:

1. Select on **Machine Group Privileges** under the **Security** topic. The **Machine Group Privileges** screen displays
2. Select a **role** in the **Select Role** list
3. Select the **machine group(s)** in the **Granted** list box
4. Select the **left arrow** to move privileges to the **Revoked** list box
5. Select **Close ☒** to close the **Machine Group Privileges** screen


## FAQs

**Q: What does managing machine group privileges involve?**

Managing machine group privileges includes Granting Machine Group Privileges, Revoking Machine Group Privileges. Access machine group privileges through the Enterprise Manager navigation pane.

**Q: Who can manage machine group privileges in OpCon?**

Users with the appropriate privileges assigned through their role can manage machine group privileges. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
