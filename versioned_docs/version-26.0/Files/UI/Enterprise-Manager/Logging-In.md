---
title: Logging In/Out
description: "Logging in to the Enterprise Manager (EM) involves a dual login: the EM connects to SQL Server with a valid database user, then checks OpCon Role privileges to verify access to OpCon functions."
product_area: Enterprise Manager
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

# Logging In/Out

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Logging in to the Enterprise Manager (EM) involves a dual login: the EM connects to SQL Server with a valid database user, then checks OpCon Role privileges to verify access to OpCon functions.

Upon initial installation, the only valid user is **ocadm**, the full administrative user. The OpCon administrator should log in as **ocadm** and [create individual accounts](Working-with-Security.md#chapter_4_-_security_3886353224_useraccounts) for all users.

## Log in to the Enterprise Manager

1. Open the Enterprise Manager application (e.g., **Start \> Programs \> OpConxps \> Enterprise Manager**)
2. In the **Username** text box:
   - For manual login, enter a case-sensitive User Login ID (e.g., ocadm)
   - For first-time automatic login, leave this field blank. The EM retrieves your network login and passes it to the database

:::note
For procedures on creating OpCon user accounts, refer to [Managing User Accounts](Managing-User-Accounts.md#chapter_4_-_security_3886353224_useraccounts).
:::

3. In the **Password** text box:
   - For manual login, enter the case-sensitive password
   - For first-time automatic login, leave this field blank

:::note
For automatic login, Enterprise Manager remembers your profile and logs in automatically on the next open.
:::

To log in to the Enterprise Manager, complete the following steps:

4. Select a profile:
   - **No profile defined:** Select the **Add** button to create one. Refer to [Managing Connection Profiles](Managing-Connection-Profiles.md)
   - **Existing profile:** Select the **profile** in the **Profile** list

:::note
The profile list is sorted. Entering the first letter of a profile name jumps to the first matching entry.
:::

5. Select the **Login** button

:::note
As a security measure, some users are presented with a Security message after login. Select **Accept** to proceed or **Decline** to close the application. This applies to both manual and automatic login users. The Security message is configured under the Generals tab in the Server Options editor. Refer to the [Login Security Message](../../../administration/server-options.md#general) parameter in the Concepts online help.
:::

## Log out of the Enterprise Manager

Select **EnterpriseManager \> Logout** at the top of the application to disconnect from the current database.

## Security Considerations

### Authentication

Logging in to the Enterprise Manager involves a dual login: the EM connects to SQL Server with a valid database user, then checks OpCon Role privileges to verify access to OpCon functions. Manual login requires a case-sensitive User Login ID and password. Automatic login uses the user's network account; the EM retrieves the network login and passes it to the database automatically, remembering the profile for subsequent logins.

Upon initial installation, the only valid user is ocadm, the full administrative user. The OpCon administrator should log in as ocadm first and create individual accounts for all other users before granting shared access.

A configurable security message can be displayed to users after login. Users must select Accept to proceed or Decline to close the application. This message applies to both manual and automatic login users.

### Authorization

After successful database authentication, OpCon Role privileges are checked to determine which functions the user can access. Users with no role assigned cannot log in.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Logging In/Out procedure involve?**

The Logging In/Out procedure involves 5 steps. Complete all steps in order and save your changes.

**Q: What does Logging In/Out cover?**

This page covers Log in to the Enterprise Manager, Log out of the Enterprise Manager.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
