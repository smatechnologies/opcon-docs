# Roles

Roles are used to maintain privileges for multiple User Accounts at the same time. Managing privileges through Roles provides easy administration of User Accounts.

A user must be a member of a role with All Administrative Functions, All Function Privileges, or must be in the ocadm role to manage roles.

The following information applies to Role management:

- **Role Name**: Defines the unique name of the Role.
- **Documentation**: Provides an area to store a description of the Role.
- **Inherit Privileges for All Schedules**: Determines if the Role inherits privileges to all current and future schedules in the OpCon database. If this setting is cleared, the Role retains previously inherited schedule privileges.
- **Inherit Privileges for All Machines**: Determines if the Role inherits privileges to all current and future Machines in the OpCon database. If this setting is cleared, the Role retains previously inherited Machine privileges.
- **Inherit Privileges for All Machine Groups**: Determines if the Role inherits privileges to all current and future Machine Groups in the OpCon database. If this setting is cleared, the Role retains previously inherited Machine Group privileges.
- **Inherit Privileges for All Scripts**: Determines if the Role inherits privileges to all current and future Embedded Scripts in the OpCon database. If this setting is cleared, the Role retains previously inherited Embedded Script privileges.
- **User Assignment**: Provides the User Accounts assigned to the Role Name. A User Account must have at least one assigned role to be able to log in. Refer to [User Accounts](./user-accounts.md).
