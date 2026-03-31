---
title: Managing Machine Privileges
description: "The Machine Privileges editor maintains Role privileges for Machines, displaying a list of role names with granted and revoked privileges."
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

# Managing Machine Privileges

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Machine Privileges** editor maintains Role privileges for Machines, displaying a list of role names with granted and revoked privileges. For conceptual information, refer to [Machine Privileges](../../../administration/privileges.md#machine-privileges) in the **Concepts** online help.

:::note
If a Role has the **Inherit Privileges for All Machines** feature enabled, the UI does not allow granting or revoking specific privileges. For additional information, refer to [Roles](../../../administration/roles.md) in the **Concepts** online help.
:::

## Granting Machine Privileges

To grant a privilege, complete the following steps:

1. Select on **Machine Privileges** under the **Security** topic. The **Machine Privileges** screen displays
2. Select a **role** in the **Select Role** list
3. Select the **machine(s)** in the **Revoked** list box
4. Select the **right arrow** to move privileges to the **Granted** list box. This gives the user read-only privileges for all jobs on the machine
5. Select **Close ☒** (to the right of the **Machine Privileges** tab) to close the screen

## Revoking Machine Privileges

To revoke a privilege, complete the following steps:

1. Select on **Machine Privileges** under the **Security** topic. The **Machine Privileges** screen displays
2. Select a **role** in the **Select Role** list
3. Select the **machine(s)** in the **Granted** list box
4. Select the **left arrow** to move privileges to the **Revoked** list box
5. Select **Close ☒** (to the right of the **Machine Privileges** tab) to close the screen


## FAQs

**Q: What does managing machine privileges involve?**

Managing machine privileges includes Granting Machine Privileges, Revoking Machine Privileges. Access machine privileges through the Enterprise Manager navigation pane.

**Q: Who can manage machine privileges in OpCon?**

Users with the appropriate privileges assigned through their role can manage machine privileges. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
