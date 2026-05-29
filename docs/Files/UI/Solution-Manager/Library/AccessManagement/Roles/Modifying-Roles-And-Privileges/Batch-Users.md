---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Role Batch Users
description: "The Batch Users tab (_Library > Access Management > Roles_) controls which batch users the selected role can access."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Role Batch Users

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Batch Users** tab (_Library > Access Management > Roles_) controls which batch users the selected role can access. A batch user is a target-platform account (login name plus a group/user profile) that OpCon uses to run jobs on a machine.

The tab presents the batch users in two lists: **Revoked** and **Granted**. Move batch users between the lists to grant or revoke access for the role, then select **Save** to apply the changes. Each batch user appears by its login name.

![Role Batch Users](../../../../../../../Resources/Images/SM/Library/AccessManagement/roles-batchusers-tab.png 'Role Batch Users')

---

For more information see:

- [Managing Roles](../Managing-Roles-And-Privileges.md)

For conceptual help, see:

- [Privileges](../../../../../../../administration/privileges.md)
- [Roles](../../../../../../../administration/roles.md)
- [Users](../../../../../../../administration/user-accounts.md)

## FAQs

**Q: Where can you find Role Batch Users in OpCon?**

Access Role Batch Users in Solution Manager or Enterprise Manager.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Batch User**: A target-platform account that OpCon uses to run jobs on a machine. A batch user is identified by its login name and includes a group/user profile that describes the account on the target operating system.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
