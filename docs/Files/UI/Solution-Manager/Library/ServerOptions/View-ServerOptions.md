---
title: Viewing Server Options
description: "Use this procedure to view Server Options in Solution Manager."
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

# Viewing Server Options

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Server Options** page in Solution Manager is the central location for viewing the
system-wide configuration settings that control OpCon behavior. The settings are organized
into categories, each shown on its own tab, including General, Security, Logging,
Notification, SMTP, Time, Vision, and SSO.

Use this procedure to open the **Server Options** page and view the current settings. To
change a setting, see the related procedure for the category you want to manage.

## Required Privileges

To view the **Server Options** page, you must have one of the following:

- **Role**: `Role_ocadm`
- **Function Privilege**: **View Server Options** or **Maintain Server Options**

The **Maintain Server Options** privilege also allows you to change settings. With only the
**View Server Options** privilege, you can see the settings but cannot save changes.

## Viewing Server Options

To view Server Options, complete the following steps:

1. Sign in to Solution Manager.
2. Go to **Library** > **Server Options**.
3. Select the tab for the category whose settings you want to view, such as **General**,
   **Security**, or **Logging**.

**Result:** The **Server Options** page displays the current settings for the selected
category.

## FAQs

**Q: What categories of settings appear on the Server Options page?**

The settings are grouped into categories shown as separate tabs, including General,
Security, Logging, Notification, SMTP, Time, Vision, and SSO. See the related procedures
for details on each category.

**Q: Why can I see settings but not change them?**

The **View Server Options** privilege allows you to view settings only. To change and save
settings, you need the **Maintain Server Options** privilege or the `Role_ocadm` role.
Contact your OpCon system administrator if you need additional access.

## Related Topics

- [Managing General Settings](./Managing-General-Settings.md)
- [Managing Security Settings](./Managing-Security-Settings.md)
- [Managing Logging Settings](./Managing-Logging-Settings.md)
- [Managing Notification Settings](./Managing-Notification-Settings.md)
- [Managing SMTP Settings](./Managing-SMTP-Settings.md)
- [Managing Time Settings](./Managing-Time-Settings.md)
- [Managing Vision Settings](./Managing-Vision-Settings.md)
- [Managing SSO Configurations](./Managing-SSO-Configurations.md)
- [Resetting Server Options Settings](./Reset-Settings.md)

## Glossary

**Role**: A named security profile in OpCon that groups privileges together. Roles are
assigned to user accounts to control which features, schedules, jobs, machines, and
administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a
feature, function, or object type. Privileges are organized into categories such as Function
Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation
data, performing operational actions, and administering the system.
