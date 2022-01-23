# User Accounts

User Accounts are required for authentication to OpCon. Once authenticated, a user account inherits privileges through their roles.

A user must be a member of a role with All Administrative Functions, All Function Privileges, or must be in the ocadm role to manage User Accounts.

The following information applies to User Account management:

- **User Account Name**: Defines a name for logging into
    OpCon. The name must be a unique entry.
  - For manual login accounts, enter any unique name. The user will
        have to type this name and the associated password in all
        OpCon graphical interfaces to log in.
  - For automatic login, enter the name of the User Login ID to
        match the user's network account name (e.g., Domain\\User or
        Machine\\User). In all OpCon
        interactive applications, the user will not supply a User Name
        or Password. They must log in to the machine with the network
        account, and the security will pass through the graphical
        interface for authentication in
        OpCon.
    - Optionally, you can enable the SMA LDAP Monitor service to
            integrate your network security for user accounts with the
            automatic logins to OpCon. For
            more information, refer to [SMA LDAP Monitor](../server-programs/optional.md#sma)
             in the **Server Programs** online help.
  - **User Password**: When a new user is created,
        OpCon generates a random password for
        the user. Users with manual login accounts should change their
        passwords the first time they log in. Users with automatic login
        accounts will not use the password unless they are signing in to
        OpCon on a machine where another
        network account is active.
    - When a user changes their password, it must be no more than
            12 characters and must conform to the rules defined in the
            [Password Requirements](./server-options.md#password-requirements)
             of the Global Options.
    - When a user's password is reset, it will be randomly
            generated and emailed to the user if an email address is
            defined.
- **Full User Name**: Defines the full name of the person using the
    User Login ID (maximum 60 characters). This is a required field.
- **Notes**: This field may contain notes about the user.
- **E-mail Address**: Defines an SMTP email address for the User Login
    ID.
- **Comments**: This field may contain additional information about
    the user.
- **Role Assignment**: Provides the Roles assigned to the User Login
    ID. A User Account must have at least one assigned role to be able
    to log in. If a user is assigned to multiple roles, the combined
    privileges for all of those roles are applied to the user. For more
    information, refer to [Roles](./roles.md).
- **Force User to Change Password at Next Log On**: Determines if the
    user must change their password during the next log on.
- **Login Disabled**: Determines if the user's login is disabled. If
    the user login is disabled, they cannot log into
    OpCon from any
    OpCon application. The applications
    behave differently depending on the way the user signs on:
  - If the user signs on with an OpCon User Login ID and
        password, the applications will inform them that the account is
        disabled and will present the login screen again. This allows
        the user to try to sign on with a different User Login ID and/or
        Data Source.
  - If the user has automatic sign on with their Network Account
        name (e.g., Domain\\User), the applications will inform them
        that the account is disabled and shut down the program. Because
        their Network Account name was integrated with
        OpCon for automatic sign on, the
        applications do not all alternate sign on opportunities.
- **External Token Disabled**: Determines if the user is disabled from
    defining external events. If the external token is disabled, they
    cannot create external events. This option is only available to
    users with administrative permissions and is selected by default. If
    this option is unselected, the Generate External Token option in the
    EnterpriseManager \> Password Update menu path will be enabled.
- **Password Never Expires**: If password expiration is turned on in
    the [Password Requirements](./server-options.md#password-requirements)
     of the Global Options, this setting determines if user's
    password should never expire. If password expiration is turned off,
    this setting is ignored.
- **Self-Service**: Determines if the user is a Self Service user.
  - Only users who have this flag set will be able to use Self
        Service.
  - The total number of users who can have this flag checked depends
        on the client's license agreement.
    - If the client has unlimited licenses for Self Service, then
            all users are checked by default and cannot be unchecked.
    - If client has no licenses, then all users are unchecked and
            cannot be checked.
    - If client has at least one license, then ocadm is always
            checked and others may be set as Self Service users up to
            the maximum number of the license's limit.
