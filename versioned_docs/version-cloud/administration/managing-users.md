---
lang: en-us
title: Managing Users
viewport: width=device-width, initial-scale=1.0
---

# Managing Users

The **Access Management** page is found in _Library > Access Management_, and provides the views to manage user accounts, privileges, and roles.

:::note
The **Access Management** page is only available to users with the **System Administrator** role or **All Function Privileges** or **All Administrative Privileges** function privileges.
:::

Select the **Users** tab to see a list of all the users that have been created in the system. The **SSO** badge is displayed next to users that have a role that is configured for Single Sign-On.

![Users](../Resources/Images/SM/Library/AccessManagement/users-page.png 'Users')

To sort the users, select the sort icon ![Sort Icon](../Resources/Images/SM/Library/AccessManagement/sort-icon.png 'Sort Icon').

## Modifying a User

You can click on the name of a user to view and modify the details of that user. To modify a User, edit the preferred fields and click **Save**.

### General Section

The General tab displays the general information about the selected user. The General tab provides a **Reset User Password** button to reset the selected user's password and optionally to copy it to the clipboard.

![User General](../Resources/Images/SM/Library/AccessManagement/users-general-tab.png 'User General')

### Roles Section

The Roles tab displays all roles in the system and indicates which roles the selected User is assigned to.

![User Roles](../Resources/Images/SM/Library/AccessManagement/users-roles-tab.png 'User Roles')

### Settings Section

The Settings tab displays the **Enable password expiration** and **Enable external tokens** settings.

![User Settings](../Resources/Images/SM/Library/AccessManagement/users-settings-tab.png 'User Settings')

## Adding a User

To add a new user:

1. Select the context menu button ![Context Menu Button](../Resources/Images/SM/Library/AccessManagement/context-menu.png 'Context Menu Button').
2. Select **Create a new user**.
3. Enter the role information in the **User Details** dialog.
4. Select **Save** to add the role or **Cancel** to dismiss the dialog.

![User Details](../Resources/Images/SM/Library/AccessManagement/user-details.png 'User Details')

## Copying a User

To copy a user:

1. Select the user to copy from the users list.
2. Select the context menu button ![Context Menu Button](../Resources/Images/SM/Library/AccessManagement/context-menu.png 'Context Menu Button')
3. Select **Create a new user**.
4. Enter the user information in the **User Details** dialog.
5. Select **Save** to add the role or **Cancel** to dismiss the dialog.

![Copy User](../Resources/Images/SM/Library/AccessManagement/copy-user.png 'Copy User')

## Deleting a User

To delete a user:

1. Select the user to delete from the users list.
2. Select the context menu button ![Context Menu Button](../Resources/Images/SM/Library/AccessManagement/context-menu.png 'Context Menu Button').
3. Select **Delete the selected user**.
4. A confirmation dialog is displayed. Select **Yes** to delete the user or **No** to dismiss the dialog without deleting the user.

![Delete User](../Resources/Images/SM/Library/AccessManagement/delete-user.png 'Delete User')

:::note
The ocadm user cannot be deleted.
:::
