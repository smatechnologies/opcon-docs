---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting User Accounts
description: "Use this procedure to delete User Accounts in the Enterprise Manager."
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

# Deleting User Accounts

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete User Accounts in the Enterprise Manager.

To delete a user account, complete the following procedures.

To delete a user account:

### Disable Inheritance and Revoke Role Privileges

To disable inheritance of schedule privileges and revoke access code and schedule privileges from the associated role, complete the following steps:

1.  Select on **User Accounts** under the **Security** topic. The **User Accounts** screen displays
2.  Select a **role** in the **Select Role** list. Use the **Find** (Ctrl+F) button to search if needed
3.  Clear the **Inherit Privileges for All Schedules** option if selected
4.  Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Roles** toolbar
5.  Select **Close ☒** to the right of the **Roles** tab
6.  Select on **Access Code Privileges** under the **Security** topic
7.  Select a **role** in the **Select Role** list. Use the **Find** (Ctrl+F) button to search if needed
8.  Select all **access codes** in the **Granted** list box
9.  Select the **left arrow** to move the access code privileges to the **Revoked** list box
10. Select **Close ☒** to the right of the **Access Code Privileges** tab

### Revoke Schedule, Function, and Departmental Privileges

To revoke schedule, function, and departmental function privileges from the role, complete the following steps:

1. Select on **Schedule Privileges** under the **Security** topic
2. Select a **role** in the **Select Role** list. Use the **Find** (Ctrl+F) button to search if needed
3. Select all **schedule privileges** in the **Granted** list box
4. Select the **left arrow** to move the schedule privileges to the **Revoked** list box
5. Select **Close ☒** to the right of the **Schedule Privileges** tab
6. Select on **Function Privileges** under the **Security** topic
7. Select a **role** in the **Select Role** list. Use the **Find** (Ctrl+F) button to search if needed
8. Select all **function privileges** in the **Granted** list box
9. Select the **left arrow** to move the function privileges to the **Revoked** list box
10. Select **Close ☒** to the right of the **Function Privileges** tab

### Revoke Departmental and Batch User Privileges

To revoke departmental function privileges and batch user privileges from the role, complete the following steps:

1. Select on **Departmental Function Privileges** under the **Security** topic
2. Select a **role** in the **Select Role** list. Use the **Find** (Ctrl+F) button to search if needed
3. Select all **departmental function privileges** in the **Granted** list box
4. Select the **left arrow** to move the departmental function privileges to the **Revoked** list box
5. Select **Close ☒** to the right of the **Departmental Function Privileges** tab
6. Select on **Batch User Privileges** under the **Security** topic
7. Select a **role** in the **Select Role** list. Use the **Find** (Ctrl+F) button to search if needed
8. Select an **operating system** in the **Target Operating System** list
9. Select all **security logins** in the **Granted** list box
10. Select the **left arrow** to move the batch user privileges to the **Revoked** list box
11. Select **Close ☒** to the right of the **Batch User Privileges** tab

### Delete the User Account

To delete the user account, complete the following steps:

1. Select on **User Accounts** under the **Security** topic
2. Select a **role** in the **Select Role** list. Use the **Find** (Ctrl+F) button to search if needed
3. Select ![Remove icon](../../../Resources/Images/EM/EMdelete.png "Remove icon") **Remove** on the **User Accounts** toolbar
4. Select **Yes** to confirm the deletion or **No** to cancel
:::

## When Would You Use It?

- An existing User Accounts in Enterprise Manager is no longer needed
- The User Accounts has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused User Accounts definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Can a user accounts record be recovered after deletion?**

No. Deleting a user accounts record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: How many user accounts records can you delete at once?**

Select the specific user accounts record you want to delete, then select the **Delete** button on the toolbar. Confirm the deletion when prompted.

## Glossary

**Access Code**: A security label applied to jobs and schedules in OpCon. Users must have the matching access code privilege to view or manage items with that label.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
