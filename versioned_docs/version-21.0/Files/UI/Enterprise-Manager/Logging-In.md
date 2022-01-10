# Logging In/Out

When signing in to the Enterprise Manager (EM), a dual login takes place. First, the EM must establish a connection to the SQL Server with a valid user for the database. Next, the OpCon Role privileges are checked in the OpCon tables to verify access to OpCon functions.

Upon initial installation of OpCon, the only valid user is **ocadm** who is the full administrative user. The OpCon administrator should log in as **ocadm** and [create individual accounts](Working-with-Security.md#chapter_4_-_security_3886353224_useraccounts) for all users in the environment.

## Log in to the Enterprise Manager

To log in to the application:

1. Launch the Enterprise Manager application (e.g., use menu path: **Start \> Programs \> OpConxps \> Enterprise Manager**).
2. In the **Username** text box:
   - For manual login, enter a case-sensitive User Login ID (e.g., ocadm)
   - For first-time automatic login, do not enter a username in this field. The Enterprise Manager will get your network login and pass it through to the database.

:::note
For procedures on creating OpCon user accounts, refer to [Managing User Accounts](Managing-User-Accounts.md#chapter_4_-_security_3886353224_useraccounts).
:::

In the **Password** text box:
a.  For manual login, enter the case-sensitive password for the user **- or -**
b.  For first-time automatic login, do not enter a password in this field.

:::note
For automatic login, Enterprise Manager remembers your profile and automatically logs in the next time you start the program.
:::

**For a first-time user logging in, and a Profile is not defined:**

Click the **Add** button to create a profile. For more information on creating or editing existing
profiles, refer to [Managing Connection Profiles](Managing-Connection-Profiles.md).

**For a user logging in who has an existing Profile:**

Select the **profile** in the **Profile** drop-down list.

:::note
The profile list is sorted. Entering the first letter of the profile will take you to that first profile in the list.
:::

Click the **Login** button to log in to the Enterprise Manager.

:::note
Signing on with a Network Account will make the EM sign on automatically the next time it is opened.
:::

:::note
As a security measure, some users may be presented with a Security message after each manual login. Those users must Accept or Decline this message. If accepted, then the user may proceed as normal to access the features and data in the application. If declined, then the application is closed.

If this security measure is in place for users who are configured for automatic login, then those users will be presented with a Security message whenever the application is opened. These users must Accept or Decline this message. If accepted, then the user may proceed as normal to access the features and data in the application. If declined, then the application is closed.

The Security message is configured under the Generals tab of the Server Options editor in the Enterprise Manager. For more information about security message configuration, refer to the [Login Security Message](../../../administration/server-options.md#general) parameter in the Concepts online help.
:::

## Log out of the Enterprise Manager

Select **EnterpriseManager \> Logout** at the top of the application to disconnect from the current database.
