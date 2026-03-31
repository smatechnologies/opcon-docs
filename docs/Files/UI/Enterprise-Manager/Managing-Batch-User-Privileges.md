---
title: Managing Batch User Privileges
description: "The Batch User Privileges editor creates and maintains security tokens used in batch processing and manages Role privileges for those tokens."
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

# Managing Batch User Privileges

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Batch User Privileges** editor creates and maintains security tokens used in batch processing and manages Role privileges for those tokens. It contains a list of user account names, the target OS, and the granted and revoked privileges. For conceptual information, refer to [Batch User Privileges](../../../administration/privileges.md#batch-user-privileges) in the **Concepts** online help.

## When Would You Use It?

- You need to review or update Batch User Privileges settings in Enterprise Manager
- Batch User Privileges needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Batch User Privileges management in Enterprise Manager reduces the time needed to locate and update settings across the environment
- All Batch User Privileges changes are captured in the OpCon audit system, supporting change management and compliance processes

## Setting up Batch User IDs

Batch User IDs are required for processing jobs on Windows, IBM i, MCP, UNIX, and OpenVMS. For setup details, refer to [Adding Batch Users](Adding-Batch-Users.md).

## Granting Privileges to Batch User IDs

To grant a privilege, complete the following steps:

1. Select on **Batch User Privileges** under the **Security** topic
2. Select a **role** in the **Select Role** list
3. Select an **operating system** in the **Target Operating System** list
4. Select the **batch user(s)** in the **Revoked** list box
5. Select the **right arrow** to move them to the **Granted** list box
6. Select **Close ☒** to close the **Batch User Privileges** screen

## Revoking Privileges from Batch User IDs

To revoke a privilege, complete the following steps:

1. Select on **Batch User Privileges** under the **Security** topic
2. Select a **role** in the **Select Role** list
3. Select an **operating system** in the **Target Operating System** list
4. Select the **batch user(s)** in the **Granted** list box
5. Select the **left arrow** to move them to the **Revoked** list box
6. Select **Close ☒** to close the **Batch User Privileges** screen
:::

## Security Considerations

### Authorization

Batch User IDs are required for processing jobs on Windows, IBM i, MCP, UNIX, and OpenVMS platforms. Each Batch User ID must be granted to the appropriate roles before users in those roles can select those IDs when defining jobs. Conversely, revoking a Batch User ID from a role prevents users in that role from assigning those platform credentials to new or existing jobs.

All changes to Batch User Privileges are captured in the OpCon audit system, supporting change management and compliance processes.

### Data Security

The Batch User Privileges editor manages security tokens — the platform user account names — used during batch job submission. These tokens represent real operating system credentials on the target platforms. Controlling which OpCon roles have access to which Batch User IDs limits the operating-system accounts that automation can invoke on each platform.


## FAQs

**Q: What does managing batch user privileges involve?**

Managing batch user privileges includes Setting up Batch User IDs, Granting Privileges to Batch User IDs, Revoking Privileges from Batch User IDs. Access batch user privileges through the Enterprise Manager navigation pane.

**Q: Who can manage batch user privileges in OpCon?**

Users with the appropriate privileges assigned through their role can manage batch user privileges. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
