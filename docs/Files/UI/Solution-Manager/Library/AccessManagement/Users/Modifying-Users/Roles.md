---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: User Roles
description: "Use the Roles tab on the Users page to view all roles in the system and assign or remove roles for the selected user."
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

# User Roles

The **Roles** tab on the Users page lists all roles defined in the system and shows which roles the selected user is currently assigned to. You can assign or remove roles by selecting or clearing each role option, then saving your changes.

![User Roles](../../../../../../../Resources/Images/SM/Library/AccessManagement/users-roles-tab.png 'User Roles')

## Assign or Remove Roles for a User

To assign or remove roles for a user, complete the following steps:

1. Go to **Library > Access Management > Users**.
2. Select the user you want to modify from the user list.
3. Select the **Roles** tab.
4. Select the option next to each role you want to assign, or clear the option next to each role you want to remove.
5. Select **Save**.

**Result:** A confirmation message appears when the save is successful. If the **Ask user to enter a recovery email upon login** Server Option is enabled and the user has no email address and is not assigned to any SSO role, the [Email Required dialog](#email-required-dialog) appears before the save completes.

:::note
Role assignments for the `ocadm` system administrator account cannot be modified. Additionally, a user without the `Role_ocadm` role cannot assign `Role_ocadm` to another user.
:::

## Email Required Dialog

The Email Required dialog appears when all three of the following conditions are true:

- The **Ask user to enter a recovery email upon login** option is enabled on the **Server Options > Security** page.
- The selected user does not have an email address on file.
- The selected user is not assigned to any SSO-enabled role.

The dialog prompts you to enter an email address for the user before the save proceeds.

![Email Dialog](../../../../../../../Resources/Images/SM/Library/AccessManagement/users-email-dialog.png 'Email Dialog')

To save with a required email, complete the following steps:

1. Enter a valid email address in the **Email address** field.
2. Select **Save**.

**Result:** The user record is updated with the email address and the role changes are saved.

Selecting **Cancel** closes the dialog and cancels the save.

---

For more information, see:

- [Managing Users](../Managing-Users.md)

For conceptual information, see:

- [Users](../../../../../../../administration/user-accounts.md)
