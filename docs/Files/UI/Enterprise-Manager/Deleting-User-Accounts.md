---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting User Accounts
description: "Step-by-step procedure to remove a user account from OpCon using Enterprise Manager, including revoking all associated role privileges before deletion."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Deleting User Accounts

Before you delete a user account, you must revoke all privileges from the roles assigned to that account. This prevents orphaned privilege assignments that could affect other users who share those roles.

:::note
The built-in `ocadm` user account cannot be deleted. Any events owned by the deleted user are automatically reassigned to `ocadm` after deletion. Deletions are permanent and cannot be undone.
:::

The full deletion workflow has four phases:

1. [Disable inheritance and revoke access code privileges](#disable-inheritance-and-revoke-access-code-privileges)
2. [Revoke schedule and function privileges](#revoke-schedule-and-function-privileges)
3. [Revoke departmental and batch user privileges](#revoke-departmental-and-batch-user-privileges)
4. [Delete the user account](#delete-the-user-account)

## Disable Inheritance and Revoke Access Code Privileges

To disable schedule privilege inheritance and revoke access code privileges from the associated role, complete the following steps:

1. Select **User Accounts** under the **Security** topic. The **User Accounts** screen displays.
2. Select a role in the **Select Role** list. Use the **Find** (Ctrl+F) button to search if needed.
3. Clear the **Inherit Privileges for All Schedules** option if it is selected.
4. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Roles** toolbar.
5. Select **Close ☒** to the right of the **Roles** tab.
6. Select **Access Code Privileges** under the **Security** topic.
7. Select the same role in the **Select Role** list.
8. Select all access codes in the **Granted** list.
9. Select the left arrow to move all access code privileges to the **Revoked** list.
10. Select **Close ☒** to the right of the **Access Code Privileges** tab.

**Result:** Schedule privilege inheritance is disabled and all access code privileges are revoked from the role.

## Revoke Schedule and Function Privileges

To revoke schedule and function privileges from the role, complete the following steps:

1. Select **Schedule Privileges** under the **Security** topic.
2. Select the role in the **Select Role** list.
3. Select all schedule privileges in the **Granted** list.
4. Select the left arrow to move all schedule privileges to the **Revoked** list.
5. Select **Close ☒** to the right of the **Schedule Privileges** tab.
6. Select **Function Privileges** under the **Security** topic.
7. Select the role in the **Select Role** list.
8. Select all function privileges in the **Granted** list.
9. Select the left arrow to move all function privileges to the **Revoked** list.
10. Select **Close ☒** to the right of the **Function Privileges** tab.

**Result:** All schedule and function privileges are revoked from the role.

## Revoke Departmental and Batch User Privileges

To revoke departmental function privileges and batch user privileges from the role, complete the following steps:

1. Select **Departmental Function Privileges** under the **Security** topic.
2. Select the role in the **Select Role** list.
3. Select all departmental function privileges in the **Granted** list.
4. Select the left arrow to move all departmental function privileges to the **Revoked** list.
5. Select **Close ☒** to the right of the **Departmental Function Privileges** tab.
6. Select **Batch User Privileges** under the **Security** topic.
7. Select the role in the **Select Role** list.
8. Select an operating system in the **Target Operating System** list.
9. Select all security logins in the **Granted** list.
10. Select the left arrow to move all batch user privileges to the **Revoked** list.
11. Select **Close ☒** to the right of the **Batch User Privileges** tab.

**Result:** All departmental function and batch user privileges are revoked from the role.

## Delete the User Account

To delete the user account, complete the following steps:

1. Select **User Accounts** under the **Security** topic.
2. Select the user account you want to delete from the user list.
3. Select ![Remove icon](../../../Resources/Images/EM/EMdelete.png "Remove icon") **Remove** on the **User Accounts** toolbar.
4. Select **Yes** to confirm the deletion, or select **No** to cancel.

**Result:** The user account is permanently removed from OpCon. Any events previously owned by the deleted user are reassigned to `ocadm`.
