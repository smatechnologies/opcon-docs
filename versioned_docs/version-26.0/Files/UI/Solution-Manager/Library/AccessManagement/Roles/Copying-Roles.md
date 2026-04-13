---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying Roles
description: "Use this procedure to copy Roles in Solution Manager."
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

# Copying Roles

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to copy Roles in Solution Manager.

## Administration

### Required Privileges

To copy a role, you must have at least one of the following privileges:

- System Administrator
- All Function Privileges
- All Administrative Functions

---

## Copying a Role

:::note
The Role_ocadm role cannot be copied.
:::

To copy a role in _Library > Access Management > Roles_, complete the following steps:

1. Select the role to copy from the roles list
2. Select the context menu button ![Context Menu Button](../../../../../../Resources/Images/SM/Library/AccessManagement/context-menu.png 'Context Menu Button')
3. Select **Copy the selected role**
4. Enter the name of the target role in the **Copy Role** dialog
5. Select **Save** to add the role or **Cancel** to dismiss the dialog

![Copy Role](../../../../../../Resources/Images/SM/Library/AccessManagement/copy-role.png 'Copy Role')


## FAQs

**Q: Why would you copy roles instead of creating a new one?**

Copying roles is useful when you want to reuse an existing configuration as a starting point. All settings from the original are duplicated, and you can then modify the copy as needed.

**Q: Does copying roles require a new unique name?**

Yes. The copy must be saved with a new unique name to distinguish it from the original roles record.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.
