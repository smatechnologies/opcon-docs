---
title: Managing Script Privileges
description: "The Script Privileges editor maintains Role privileges for Embedded Scripts."
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

# Managing Script Privileges

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Script Privileges** editor maintains Role privileges for Embedded Scripts. It displays a list of role names with granted and revoked privileges. For conceptual information, refer to [Embedded Script Privileges](../../../administration/privileges.md#embedded-script-privileges) in the **Concepts** online help.

## Granting Script Privileges

To grant a privilege, complete the following steps:

1. Select on **Script Privileges** under the **Security** topic
2. Select a **role** in the **Select Role** list
3. Select the **script(s)** in the **Revoked** list box
4. Select the **right arrow** to move privileges to the **Granted** list box
5. Select **Close ☒** to close the screen

## Revoking Script Privileges

:::note
If a Role has **Inherit Privileges for All Scripts** enabled, revoking privileges is not allowed. Refer to [Roles](../../../administration/roles.md) in the **Concepts** online help.
:::

To revoke a privilege, complete the following steps:

1. Select on **Script Privileges** under the **Security** topic
2. Select a **role** in the **Select Role** list
3. Select the **script(s)** in the **Granted** list box
4. Select the **left arrow** to move privileges to the **Revoked** list box
5. Select **Close ☒** to close the screen


## FAQs

**Q: What does managing script privileges involve?**

Managing script privileges includes Granting Script Privileges, Revoking Script Privileges. Access script privileges through the Enterprise Manager navigation pane.

**Q: Who can manage script privileges in OpCon?**

Users with the appropriate privileges assigned through their role can manage script privileges. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Embedded Script**: A script stored and versioned directly within the OpCon database. Embedded scripts can be assigned to Windows jobs and run at runtime without requiring the script file to exist on the target machine.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
