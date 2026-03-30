---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Assigning Users to Roles
description: "Use this procedure to assign Users to Roles in the Enterprise Manager."
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

#  Assigning Users to Roles

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to assign Users to Roles in the Enterprise Manager.

To assign a user to a role, complete the following steps:

1.  Select on **Roles** under the **Security** topic
2.  Select the **role name** in the **Select Role** list
3.  Select the **User Login ID(s)** in the **Revoked** list
4.  Select the **right arrow** to assign the users to the role
5.  Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Roles** toolbar
6.  Select **Close ☒** to close the **Roles** screen

## When Would You Use It?

- A Users to Roles needs to be linked to another object in Enterprise Manager

## Why Would You Use It?

- **Enforce access control**: Assigning Users to Roles ensures only authorized users or processes can interact with the associated resources

## FAQs

**Q: How many steps does the Assigning Users to Roles procedure involve?**

The Assigning Users to Roles procedure involves 6 steps. Complete all steps in order and save your changes.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.
