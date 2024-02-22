# Managing Roles

The **Access Management** page is found in _Library > Access Management_, and provides the views to manage user accounts, privileges, and roles.

:::note
The **Access Management** page is only available to users with the **System Administrator** role or **All Function Privileges** or **All Administrative Privileges** function privileges.
:::

Select the **Roles** tab to see a list of all the roles that have been created in the system. Select a role to view or modify the details of that role. 

![Roles](../Resources/Images/SM/Library/AccessManagement/roles-page.png 'Roles')

To sort the roles, select the sort icon ![Sort Icon](../Resources/Images/SM/Library/AccessManagement/sort-icon.png 'Sort Icon').

## Modifying a Role

You can click on the name of a role to view the details of that role. A series of tabs is displayed on the Roles page. 

### Role Activities

The Activities tab displays the activities that are assigned to the selected role.

To modify the activities granted to a role, edit the preferred fields and click **Save**.

![Roles Activities](../Resources/Images/SM/Library/AccessManagement/roles-activities-tab.png 'Roles Activities')

### Role Batch Users

The Batch Users tab displays the batch users that are assigned to the selected role.

To modify the batch users assigned to a role, edit the preferred fields and click **Save**.

![Role Batch Users](../Resources/Images/SM/Library/AccessManagement/roles-batchusers-tab.png 'Role Batch Users')

### Role Department Activities

The Departments tab displays the departments that are assigned to the selected role.

To modify the department activities assigned to a role, edit the preferred fields and click **Save**.

![Role Department Activities](../Resources/Images/SM/Library/AccessManagement/roles-departments-tab.png 'Role Department Activities')

### Role General

The General tab displays the name, description, and inherited privileges that are assigned to the selected role.

To modify a role, edit the preferred fields and click **Save**.

:::note
If a Role has the **Inherit all** privileges for Machines, Machine Groups, Schedules, or Scripts selected on the **General** tab, the **Resources** tab will display information noting as such and does not allow granting or revoking privileges for specific resources. For information on this checkbox, refer to [Roles](../../../../../../../administration/roles.md) in the **Concepts** online help.
:::

![Role General](../Resources/Images/SM/Library/AccessManagement/roles-general-tab.png 'Role General')

### Role Resources

The Resources tab displays the resources that are granted to the selected role. Resources include access codes, machines, machine groups, schedules, and scripts.

To modify the resources granted to a role, edit the preferred fields and click **Save**.

:::note
If a Role has the **Inherit all** privileges for Machines, Machine Groups, Schedules, or Scripts selected on the **General** tab, the **Resources** tab will display information noting as such and does not allow granting or revoking privileges for specific resources. For information on this checkbox, refer to [Roles](../../../../../../../administration/roles.md) in the **Concepts** online help.
:::

![Role Resources](../Resources/Images/SM/Library/AccessManagement/roles-resources-tab.png 'Role Resources')

### Role Users

The Users tab indicates the users that are assigned to the selected role. The user's Full Name, Login Name, and Email Address, if available, are displayed. The email is a clickable link that will open the logged in user's email client.

To modify the users granted to a role, edit the preferred fields and click **Save**.

![Role Users](../Resources/Images/SM/Library/AccessManagement/roles-users-tab.png 'Role Users')

## Adding a Role

To add a new role:

1. Select the context menu button ![Context Menu Button](../Resources/Images/SM/Library/AccessManagement/context-menu.png 'Context Menu Button').
2. Select **Create a new role**.
3. Enter the role information in the **Role Details** dialog.
4. Select **Save** to add the role or **Cancel** to dismiss the dialog.

![Role Details](../Resources/Images/SM/Library/AccessManagement/role-details-dialog.png 'Role Details')

## Copying a Role

To copy a role:

1. Select the role to copy from the roles list.
2. Select the context menu button ![Context Menu Button](../Resources/Images/SM/Library/AccessManagement/context-menu.png 'Context Menu Button').
3. Select **Copy the selected role**.
4. Enter the name of the target role in the **Copy Role** dialog.
5. Select **Save** to add the role or **Cancel** to dismiss the dialog.

![Copy Role](../Resources/Images/SM/Library/AccessManagement/copy-role.png 'Copy Role')


:::note
The Role_ocadm role cannot be copied.
:::

## Deleting a Role

To delete a role:

1. Select the role to delete from the roles list.
2. Select the context menu button ![Context Menu Button](../Resources/Images/SM/Library/AccessManagement/context-menu.png 'Context Menu Button').
3. Select **Delete the selected role**.
4. A confirmation dialog is displayed. Select **Yes** to delete the role or **No** to dismiss the dialog without deleting the role.

:::note
The Role_ocadm role cannot be deleted.
:::