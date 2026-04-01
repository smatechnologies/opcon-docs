---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Adding Roles
description: "Use this procedure to add Roles in Solution Manager."
product_area: Solution Manager
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

# Adding Roles

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Roles in Solution Manager.

## Administration

### Required Privileges

To add a role, you must have at least one of the following privileges:

- System Administrator
- All Function Privileges
- All Administrative Functions

---

## Adding a Role

To add a new role in _Library > Access Management_, complete the following steps:

1. Select the context menu button ![Context Menu Button](../../../../../../Resources/Images/SM/Library/AccessManagement/context-menu.png 'Context Menu Button')
2. Select **Create a new role**
3. Enter the role information in the **Role Details** dialog
4. Select **Save** to add the role or **Cancel** to dismiss the dialog

![Role Details](../../../../../../Resources/Images/SM/Library/AccessManagement/role-details-dialog.png 'Role Details')


## FAQs

**Q: How do you save a new roles record?**

After completing the required fields, select the **Save** button on the toolbar to save the roles record.

**Q: Can you add roles for multiple platforms?**

Yes. This page covers roles for multiple platforms or contexts: Required Privileges, Adding a Role.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.
