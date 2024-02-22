# Access Management

## Role-based Access Control (RBAC)

OpCon uses **Role-based Access Control (RBAC)** to authorize users to perform functions or interact with specific objects. All privileges are assigned to a role, and users are able to be assigned to multiple roles.

:::info 
Role privileges are cumulative across roles. If a user belongs to **Role A**, which grants privileges *Maintain Job History* and *Maintain Audit History*, and **Role B**, which grants the *View Service Request* privilege, the user will have all three privileges.
:::

### User Accounts

### Roles


### Departments

Departments are an assignable label to a job that gives administrators finer control over who can interact with what within the system. Functional privileges are assignable on a Department basis and a user's functionality will be determined by the combination of their roles' privileges for the specified Department. All jobs have a Department, the default value is **General**.

:::tip Learn More

- [Managing Departments](../managing-departments.md)
- [Managing Functional Privileges to Departments](../privileges.md)
:::


### Access Codes

Access Codes are an assignable label to a job that gives administrators finer control over who can interact with what within the system. Users must belong to a role with privileges to the relevant Access Code to interact with a job that has that Access Code applied. All jobs have an Access Code, the default value is **<None\>**.

:::tip Learn More

- [Managing Access Codes](../managing-access-codes.md)
- [Managing Privileges to Access Codes](../privileges.md)
:::

## Authentication Options

OpCon provides several options for managing your users.

### Single Sign-On

### OpCon-Managed Users

### LDAP 

## External Tokens

Some users will require the ability to programmatically interact with the OpCon environment. Programmatic access is granted by **External Tokens**, the non-interactive method for authenticating a user. 

:::tip
Best practice is to create users specifically for programmatic access and only granting those users the required access to the system.
:::

By default, External Tokens are disabled for all new users. To enable an External Token access for a user, see [Modifying User Settings](../managing-users.md#settings-section). Revoking this access will generate authentication errors for any work that uses this user's External Token. The token value remains unchanged when toggling this setting, however, and if access is once again enabled the old token value will resume working.

Once access to External Tokens are enabled, the user must generate their own External Token in their profile page. See **insert link here** for instructions.

:::warning
Each user may only have a single active External Token. Resetting a user's External Token will invalidate the previous token value and any work relying on that token will immediately receive authentication errors. There is no ability to revert back to the old value.
:::
