---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Role Users
description: "The Users tab (_Library > Access Management > Roles_) lists the user accounts assigned to the selected role in Solution Manager."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Role Users

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Users** tab (_Library > Access Management > Roles_) lists every user account assigned to the selected role. Each entry shows the user's **Full Name**, **Login Name**, and **Email Address**. The email address is a link that opens a new message in your default email application.

Use the **Users** tab to confirm which user accounts inherit the privileges granted by a role before you change those privileges. Because a role groups privileges together and is then assigned to user accounts, reviewing the **Users** tab shows you the full set of accounts affected by any change you make to the role.

<!-- GAP: The Solution Manager source in this codebase snapshot (RoleView.java, PermissionsForm.java) defines the role edit form with a Name field, three inherit-all switches, and a PermissionsForm containing only Access Codes and Batch Users tabs. A Users tab with Full Name / Login Name / Email Address columns and a clickable email link was not found in this source. Confirm with an SME or current SM build which version introduced this tab, the exact column labels, and whether assignments are editable from this tab or read-only. -->

![Role Users](../../../../../../../Resources/Images/SM/Library/AccessManagement/roles-users-tab.png 'Role Users')

---

For more information see:

- [Managing Roles](../Managing-Roles-And-Privileges.md)

For conceptual help, see:

- [Privileges](../../../../../../../administration/privileges.md)
- [Roles](../../../../../../../administration/roles.md)
- [Users](../../../../../../../administration/user-accounts.md)

## Glossary

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.
