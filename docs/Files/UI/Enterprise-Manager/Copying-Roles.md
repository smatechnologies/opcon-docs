---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying Roles
description: "Copying a role creates an identical new role with the same name preceded by 'co:' (e.g., 'co:RoleName')."
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

#  Copying Roles

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Copying a role creates an identical new role with the same name preceded by "co:" (e.g., "co:RoleName"). All privileges from the original role are copied to the new role.

To copy a role, complete the following steps:

1.  Select on **Roles** under the **Security** topic. The **Roles** screen displays
2.  Select the **role name** in the **Select Role** list
3.  Select **Copy** on the **Roles** toolbar. The **Copy Role** dialog displays
4.  Enter the *name* for the role
5.  Select **OK**
6.  Select **Close ☒** (to the right of the **Roles** tab) to close the **Roles** screen
:::

## When Would You Use It?

- An existing Roles definition needs to be duplicated in Enterprise Manager
- A new Roles with similar settings to an existing one needs to be created quickly

## Why Would You Use It?

- **Save configuration time**: Duplicating an existing Roles eliminates redundant data entry and ensures the new definition inherits proven settings

## FAQs

**Q: Why would you copy roles instead of creating a new one?**

Copying roles is useful when you want to reuse an existing configuration as a starting point. All settings from the original are duplicated, and you can then modify the copy as needed.

**Q: Does copying roles require a new unique name?**

Yes. The copy must be saved with a new unique name to distinguish it from the original roles record.

## Glossary

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.
