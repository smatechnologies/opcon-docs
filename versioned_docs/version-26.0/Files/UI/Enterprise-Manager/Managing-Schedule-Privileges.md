---
title: Managing Schedule Privileges
description: "The Schedule Privileges editor maintains Role privileges for Schedules, displaying a list of role names with granted and revoked privileges."
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

# Managing Schedule Privileges

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Schedule Privileges** editor maintains Role privileges for Schedules, displaying a list of role names with granted and revoked privileges. For conceptual information, refer to [Schedule Privileges](../../../administration/privileges.md#schedule-privileges) in the **Concepts** online help.

## Granting Schedule Privileges

To grant a privilege, complete the following steps:

1. Select on **Schedule Privileges** under the **Security** topic. The **Schedule Privileges** screen displays
2. Select a **role** in the **Select Role** list
3. Select the **schedule(s)** in the **Revoked** list box
4. Select the **right arrow** to move privileges to the **Granted** list box
5. Select **Close ☒** (to the right of the **Schedule Privileges** tab) to close the screen

## Revoking Schedule Privileges

:::note
If a Role has the **Inherit Privileges for All Schedules** feature enabled inside the **Roles** screen, the EM does not allow revoking privileges. For information on this option, refer to [Roles](../../../administration/roles.md) in the **Concepts** online help.
:::

To revoke a privilege, complete the following steps:

1. Select on **Schedule Privileges** under the **Security** topic. The **Schedule Privileges** screen displays
2. Select a **role** in the **Select Role** list
3. Select the **schedule(s)** in the **Granted** list box
4. Select the **left arrow** to move privileges to the **Revoked** list box
5. Select **Close ☒** (to the right of the **Schedule Privileges** tab) to close the screen


## FAQs

**Q: What does managing schedule privileges involve?**

Managing schedule privileges includes Granting Schedule Privileges, Revoking Schedule Privileges. Access schedule privileges through the Enterprise Manager navigation pane.

**Q: Who can manage schedule privileges in OpCon?**

Users with the appropriate privileges assigned through their role can manage schedule privileges. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
