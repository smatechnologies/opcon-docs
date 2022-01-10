# Managing Batch User Privileges

The **Batch User Privileges** editor is used to create and maintain
security tokens used in batch processing and to maintain Role privileges
for these security tokens. The editor contains a list of user account
names, the target OS, and the granted and revoked privileges. For
conceptual information, refer to [Batch User Privileges](../../../administration/privileges.md#batch-user-privileges)
in the **Concepts** online help.

## Setting up Batch User IDs

Batch User IDs are required for processing jobs on Windows, IBM i, MCP,
UNIX, and OpenVMS. There are several required procedures for setting up
LSAM User IDs. For details on setting up Batch User IDs, refer to
[Adding Batch Users](Adding-Batch-Users.md).

## Granting Privileges to Batch User IDs

To grant a privilege:

1. Double-click on **Batch User Privileges** under the **Security**
    topic. The **Batch User Privileges** screen displays.
2. Select a **role** in the **Select Role** drop-down list.
3. Select an **operating system** in the **Target Operating System**
    drop-down list.
4. Select the **batch user(s)** in the **Revoked** list box.
5. Click the **right arrow** to move functions to the **Granted** list
    box.
6. Click **Close ☒** (to the right of the **Batch User Privileges**
    tab) to close the **Batch User Privileges** screen.

## Revoking Privileges from Batch User IDs

To revoke a privilege:

1. Double-click on **Batch User Privileges** under the **Security**
    topic. The **Batch User Privileges** screen displays.
2. Select a **role** in the **Select Role** drop-down list.
3. Select an **operating system** in the **Target Operating System**
    drop-down list.
4. Select the **batch user(s)** in the **Granted** list box.
5. Click the **left arrow** to move functions to the **Revoked** list
    box.
6. Click **Close ☒** (to the right of the **Batch User Privileges**
    tab) to close the **Batch User Privileges** screen.
:::
