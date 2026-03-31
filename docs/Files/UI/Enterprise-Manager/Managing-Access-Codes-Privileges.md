---
title: Managing Access Codes Privileges
description: "The Access Codes Privileges editor maintains Role privileges for Access Codes."
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

# Managing Access Codes Privileges

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Access Codes Privileges** editor maintains Role privileges for Access Codes. It lists role names with their granted and revoked access codes. For conceptual information, refer to [Access Code Privileges](../../../administration/privileges.md#access-code-privileges) in the **Concepts** online help.

## Granting Privileges to Access Codes

To grant Privileges to Access Codes, complete the following steps:

1. Select on **Access Codes Privileges** under the **Security** topic
2. Select a **role** in the **Select Role** list
3. Select the access code(s) in the **Revoked** list box
4. Select the **right arrow** to move privileges to the **Granted** list box. This grants read-only privileges for all jobs with that access code
5. Select **Close ☒** to close the screen

## Revoking Privileges from Access Codes

To revoke Privileges from Access Codes, complete the following steps:

1. Select on **Access Codes Privileges** under the **Security** topic
2. Select a **role** in the **Select Role** list
3. Select the access code(s) in the **Granted** list box

4. Select the **left arrow** to move privileges to the **Revoked** list box
5. Select **Close ☒** to close the screen


## FAQs

**Q: What does managing access codes privileges involve?**

Managing access codes privileges includes Granting Privileges to Access Codes, Revoking Privileges from Access Codes. Access access codes privileges through the Enterprise Manager navigation pane.

**Q: Who can manage access codes privileges in OpCon?**

Users with the appropriate privileges assigned through their role can manage access codes privileges. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Access Code**: A security label applied to jobs and schedules in OpCon. Users must have the matching access code privilege to view or manage items with that label.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
