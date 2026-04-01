---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Revoking Privileges from Batch Users
description: "Revoking a batch user privilege moves it from the Granted list to the Revoked list for a role, preventing that role from running jobs under that user account."
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

# Revoking Privileges from Batch Users

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Batch user privileges control which batch users a role can use when submitting jobs. Revoking a privilege moves a batch user from the Granted list to the Revoked list for a given role and operating system, preventing that role from running jobs under that user account.

To revoke privileges, complete the following steps:

1. Select on **Batch Users** under the **Security** topic. The **Batch User** screen displays
2. Select the **Manage Privileges** button
3. Select a **role** in the **Select Role** list, or use the **Find** (Ctrl+F) button to locate the role
4. Select an **operating system** in the **Target Operating System** list
5. Select the **batch user(s)** in the **Granted** list box
6. Select the **left arrow** to move the batch user(s) to the **Revoked** list box
7. Select **Close ☒** (to the right of the **Batch User Privileges** tab) to close the **Batch User Privileges** screen

## FAQs

**Q: How many steps does the Revoking Privileges from Batch Users procedure involve?**

The Revoking Privileges from Batch Users procedure involves 7 steps. Complete all steps in order and save your changes.

## Glossary

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.
