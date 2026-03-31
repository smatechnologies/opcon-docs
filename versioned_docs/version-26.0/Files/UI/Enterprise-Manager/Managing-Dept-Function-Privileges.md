---
title: Managing Departmental Function Privileges
description: "The Departmental Function Privileges editor maintains Role privileges for department functions."
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

# Managing Departmental Function Privileges

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Departmental Function Privileges** editor maintains Role privileges for department functions. It contains a list of user account names, departments, and granted and revoked privileges. For conceptual information, refer to [Departmental Function Privileges](../../../administration/privileges.md#departmental-function-privileges) in the **Concepts** online help.

## Granting Departmental Function Privileges

To grant a privilege, complete the following steps:

1. Select on **Departmental Function Privileges** under the **Security** topic
2. Select a **role** in the **Select Role** list
3. Select a **department** in the **Departments** list
4. Select the **function(s)** in the **Revoked** list box
5. Select the **right arrow** to move them to the **Granted** list box
6. Select **Close ☒** to close the **Departmental Function Privileges** screen

## Revoking Departmental Function Privileges

To revoke a privilege, complete the following steps:

1. Select on **Departmental Function Privileges** under the **Security** topic
2. Select a **role** in the **Select Role** list
3. Select a **department** in the **Departments** list
4. Select the **function(s)** in the **Granted** list box
5. Select the **left arrow** to move them to the **Revoked** list box
6. Select **Close ☒** to close the **Departmental Function Privileges** screen


## FAQs

**Q: What does managing departmental function privileges involve?**

Managing departmental function privileges includes Granting Departmental Function Privileges, Revoking Departmental Function Privileges. Access departmental function privileges through the Enterprise Manager navigation pane.

**Q: Who can manage departmental function privileges in OpCon?**

Users with the appropriate privileges assigned through their role can manage departmental function privileges. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
