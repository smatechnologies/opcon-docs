---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Users
description: "Use this procedure to delete Users in Solution Manager."
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

# Deleting Users

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Users in Solution Manager.

## When Would You Use It?

- An existing Users in Solution Manager is no longer needed
- The Users has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Users definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews

## Administration

### Required Privileges

To delete a user, you must have at least one of the following privileges:

- System Administrator
- All Function Privileges
- All Administrative Functions

---

## Deleting a User

The **Access Management** page is found in _Library > Access Management_. Select the **Users** tab to see all users in the system.

:::note
The ocadm user cannot be deleted.
:::

To delete a user, complete the following steps:

1. Select the user to delete from the users list
2. Select the context menu button ![Context Menu Button](../../../../../../Resources/Images/SM/Library/AccessManagement/context-menu.png 'Context Menu Button')
3. Select **Delete the selected user**
4. Select **Yes** to confirm deletion or **No** to cancel

![Delete User](../../../../../../Resources/Images/SM/Library/AccessManagement/delete-user.png 'Delete User')


## FAQs

**Q: Can a users record be recovered after deletion?**

No. Deleting a users record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: How many users records can you delete at once?**

Select the specific users record you want to delete, then select the **Delete** button on the toolbar. Confirm the deletion when prompted.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
