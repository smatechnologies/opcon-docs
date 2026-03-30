---
title: User Accounts
description: "User Accounts are required for authentication to OpCon."
product_area: Administration
audience: System Administrator
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - System Configuration
last_updated: 2026-03-18
doc_type: conceptual
---

# User Accounts

**Theme:** Configure  
**Who Is It For?** System Administrator

## What Is It?

User Accounts are required for authentication to OpCon. Once authenticated, a user account inherits privileges through its roles.

A user must be a member of a role with All Administrative Functions, All Function Privileges, or must be in the ocadm role to manage User Accounts.

- **User Account Name**: A unique name for logging into OpCon
  - For manual login: enter any unique name. The user types this name and password in all OpCon graphical interfaces to log in
  - For automatic login: enter the User Login ID matching the user's network account name (e.g., Domain\\User or Machine\\User). The user logs in to the machine with their network account; security passes through the graphical interface for OpCon authentication
    - Optionally, enable the SMA LDAP Monitor service to integrate network security with automatic OpCon logins. For more information, refer to [SMA LDAP Monitor](../server-programs/optional.md#sma) in the **Server Programs** online help
  - **User Password**: OpCon generates a random password when a new user is created. Manual login users should change their password on first login. Automatic login users only need the password when signing in on a machine where another network account is active
    - Passwords must be no more than 12 characters and conform to [Password Requirements](./server-options.md#password-requirements) in the Global Options
    - When reset, the password is randomly generated and emailed to the user if an email address is defined
- **Full User Name**: The full name of the person using the User Login ID (maximum 60 characters). Required
- **Notes**: Optional notes about the user
- **E-mail Address**: An SMTP email address for the User Login ID
- **Comments**: Optional additional information about the user
- **Role Assignment**: The roles assigned to the User Login ID. A User Account must have at least one role to log in. If assigned to multiple roles, the combined privileges of all roles apply. For more information, refer to [Roles](./roles.md)
- **Force User to Change Password at Next Log On**: Requires the user to change their password at next login
- **Login Disabled**: Disables the user's login across all OpCon applications
  - If signing in with an OpCon User Login ID and password, the application notifies the user the account is disabled and returns to the login screen
  - If signing in automatically via a network account name (e.g., Domain\\User), the application notifies the user the account is disabled and shuts down. No alternate sign-on is offered
- **External Token Disabled**: Prevents the user from defining external events. Available to users with administrative permissions only; selected by default. If unselected, the Generate External Token option is enabled at **EnterpriseManager > Password Update**
- **Password Never Expires**: When password expiration is enabled in [Password Requirements](./server-options.md#password-requirements), this setting exempts the user from expiration. Ignored if expiration is disabled
- **Self-Service**: Determines if the user can access Self Service
  - Only users with this flag set can use Self Service
  - The number of users who can have this flag enabled depends on the license agreement:
    - Unlimited licenses: all users are checked by default and cannot be unchecked
    - No licenses: all users are unchecked and cannot be checked
    - At least one license: ocadm is always checked; others may be set up to the license limit

## When Would You Use It?

- User Accounts are required for authentication to OpCon

## Why Would You Use It?

- **User Accounts**: User Accounts are required for authentication to OpCon

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| User Account Name | A unique name for logging into OpCon | — | maximum 60 characters). Required. - **Notes**: Optional note |
| Full User Name | The full name of the person using the User Login ID (maximum 60 characters). | — | maximum 60 characters). Required. - **Notes**: Optional note |
| Notes | Optional notes about the user | — | — |
| E-mail Address | An SMTP email address for the User Login ID | — | — |
| Comments | Optional additional information about the user | — | — |
| Role Assignment | The roles assigned to the User Login ID. | — | — |
| Force User to Change Password at Next Log On | Requires the user to change their password at next login | — | — |
| Login Disabled | Disables the user's login across all OpCon applications | and cannot be unchecked | — |
| External Token Disabled | Prevents the user from defining external events. | and cannot be unchecked | — |
| Password Never Expires | When password expiration is enabled in Password Requirements, this setting exempts the user from expiration. | and cannot be unchecked | — |
| Self-Service | Determines if the user can access Self Service | and cannot be unchecked | — |
## Security Considerations

### Authentication

User Accounts are required for authentication to OpCon. Manual login users enter a case-sensitive User Login ID and password. Automatic login users authenticate through their network account name (e.g., Domain\\User), with security passing through the graphical interface. The SMA LDAP Monitor service can optionally be enabled to integrate network security with automatic OpCon logins.

When a new user is created, OpCon generates a random password. Manual login users should change this password on first login. When a password is reset, a new random password is generated and emailed to the user if an email address is defined. Passwords must be no more than 12 characters and must conform to the Password Requirements defined in Global Options.

External tokens, which allow users to define external events, are disabled by default. Enabling the External Token is available only to users with administrative permissions.

### Authorization

Managing User Accounts requires membership in a role with All Administrative Functions, All Function Privileges, or membership in the ocadm role. A User Account must have at least one assigned role to log in.

The Login Disabled flag prevents the user from logging in to any OpCon application. If the user is configured for automatic login via a network account, the application shuts down when the account is disabled without offering an alternate sign-on.

The Password Never Expires flag exempts a user from the global password expiration policy configured in Password Requirements. This flag is intended for accounts used in batch processing.

Access to Self Service is licensed and individually controlled per user account by the Self-Service flag.

### Sensitive Data

SMTP email addresses are stored on user accounts and used when resetting passwords. The Force User to Change Password at Next Log On flag should be used when distributing newly created or reset credentials.

## Operations

### Monitoring

- A user account with **Login Disabled** set cannot log in to any OpCon application. For automatic login accounts (Domain\User), the application shuts down without offering an alternate sign-on; there is no fallback.
- **Password Never Expires** exempts a user from the global password expiration policy. Enable this flag on all accounts used for batch processing before activating password expiration in Server Options > Password Requirements.
- Access to Self Service is individually controlled per user by the **Self-Service** flag and is limited by the license agreement. Verify the available license count before enabling Self Service for additional users.

### Common Tasks

- When a new user is created, OpCon generates a random password. Manual login users should change it at first login; use **Force User to Change Password at Next Log On** to enforce this.
- When a password is reset, a new random password is generated and emailed to the user if an email address (`E-mail Address`) is defined on the account.
- To integrate network security with automatic OpCon logins, enable the SMA LDAP Monitor service and configure it with the appropriate LDAP group-to-role mappings.

## Exception Handling

**User account with no assigned role cannot log in to OpCon** — A User Account must have at least one role assigned to log in; without a role, authentication fails regardless of credentials — Assign the appropriate role to the user account before attempting login; contact an administrator with All Administrative Functions or ocadm membership to make the assignment.

**Automatic login with a disabled account shuts down the application without offering an alternate sign-on** — When Login Disabled is set and the user is configured for automatic login via a network account (Domain\\User), the application notifies the user that the account is disabled and shuts down; no alternate credential prompt is offered — Re-enable the account or provide the user with an alternate manual-login account if continued access is needed.

**Batch processing accounts expire when password expiration is enabled without setting Password Never Expires** — When Number of days a password is valid is configured in Server Options, any account that does not have Password Never Expires set will be subject to expiration; jobs running under expired batch user accounts fail — Set Password Never Expires on all accounts used for batch processing to prevent automated job failures on password expiration.

## FAQs

**Q: Does a user account require a role to log in?**

Yes. A user account must have at least one assigned role to log in to OpCon. If a user account has no roles assigned, login will not succeed.

**Q: How does automatic login work for User Accounts?**

For automatic login, the User Account Name must match the user's network account login ID (for example, Domain\\User or Machine\\User). The user logs in to their machine with their network account and security passes through the OpCon graphical interface automatically. Optionally, the SMA LDAP Monitor service can be enabled to integrate network security with automatic OpCon logins.

**Q: What happens when Login Disabled is selected?**

The user cannot log in to any OpCon application. If logging in with a username and password, the application notifies the user that the account is disabled. If logging in automatically via a network account, the application notifies the user and shuts down without offering an alternate sign-on.

## Glossary

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
