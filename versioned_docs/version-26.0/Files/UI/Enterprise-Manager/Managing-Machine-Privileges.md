# Managing Machine Privileges

The **Machine Privileges** editor is used to maintain Role privileges
for Machines. The editor contains a list of role names and the granted
and revoked privileges. For conceptual information, refer to [Machine Privileges](../../../administration/privileges.md#machine-privileges) in
the **Concepts** online help.

:::note
If a Role has the **Inherit Privileges for All Machines** feature enabled, the UI does not allow granting or revoking specific privileges. For additional information, refer to [Roles](../../../administration/roles.md) in the **Concepts** online help.
:::

## Granting Machine Privileges

To grant a privilege:

1. Double-click on **Machine Privileges** under the **Security** topic.
    The **Machine Privileges** screen displays.
2. Select a **role** in the **Select Role** drop-down list.
3. Select the **machine(s)** in the **Revoked** list box.
4. Click the **right arrow** to move privileges to the **Granted** list
    box. This gives the user read only privileges for all jobs on the
    machine.
5. Click **Close ☒** (to the right of the **Machine Privileges** tab)
    to close the **Machine Privileges** screen.

## Revoking Machine Privileges

To revoke a privilege:

1. Double-click on **Machine Privileges** under the **Security** topic.
    The **Machine Privileges** screen displays.
2. Select a **role** in the **Select Role** drop-down list.
3. Select the **machine(s)** in the **Granted** list box.
4. Click the **left arrow** to move privileges to the **Revoked** list
    box.
5. Click **Close ☒** (to the right of the **Machine Privileges** tab)
    to close the **Machine Privileges** screen.
