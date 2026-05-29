---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: User General
description: "Modify a user's general information on the General tab in Solution Manager Access Management."
product_area: Solution Manager
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

# User General

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The General tab displays general information about a selected user and lets you edit that information and reset the user's password. To open it, go to **Library > Access Management > Users**, select a user, and select the **General** tab.

The General tab includes the following fields and options:

| Field or option | Description |
|---|---|
| **Full Name** | The user's full name. |
| **First Name** | The user's first name. |
| **Last Name** | The user's last name. |
| **Username** | The login name the user enters to sign in. |
| **Email** | The user's email address. |
| **Phone** | The user's phone number. |
| **Comments** | Free-text comments about the user. |
| **Notes** | Free-text notes about the user. |
| **Enable user** | Enables or disables the user account. |
| **Force user to change password at next login** | Requires the user to set a new password the next time they sign in. |
| **Reset User Password** | Resets the user's password and lets you copy the new password to the clipboard. |

:::note
Email is required if the **Ask User to Enter a Recovery Email Address Upon Login** option is enabled on the Server Options security page.
:::

![User General](../../../../../../../Resources/Images/SM/Library/AccessManagement/users-general-tab.png "User General")

## Modify a user's general information

To modify a user's general information, complete the following steps:

1. Go to **Library > Access Management > Users**.
2. Select the user you want to modify.
3. Select the **General** tab.
4. Edit the fields you want to change.
5. Select **Save**.

**Result:** Solution Manager saves the updated information for the user.

## Reset a user's password

To reset a user's password, complete the following steps:

1. Go to **Library > Access Management > Users**.
2. Select the user you want to modify.
3. Select the **General** tab.
4. Select **Reset User Password**.
5. When prompted, select whether to copy the new password to the clipboard.

**Result:** Solution Manager changes the user's password and, if you chose to copy it, places the new password on the clipboard.

## FAQs

**Q: Where can you find User General in OpCon?**

Access User General in Solution Manager or Enterprise Manager.

## Related Topics

- [Managing Users](../Managing-Users.md)
- [Users](../../../../../../../administration/user-accounts.md)

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
