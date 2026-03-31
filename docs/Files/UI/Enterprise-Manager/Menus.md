---
title: Menus
description: "The menu bar at the top of the Enterprise Manager screen is always available when working with editors or views."
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

# Menus

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The menu bar at the top of the Enterprise Manager screen is always available when working with [editors](Navigation-Editors.md) or [views](Navigation-Views.md). It has two options: Enterprise Manager and Help.

## Enterprise Manager

The Enterprise Manager menu includes the following options:

| Option | Description |
|--- |--- |
| Refresh (F5) | Refreshes all active windows. |
| Pause Refresh (Ctrl+P) | Pauses the automatic refresh process. |
| Logout (Ctrl+L) | Disconnects the user from the database without exiting Enterprise Manager. |
| Password Update | Change your password, generate an external token, or encrypt a password. |
| Preferences (Ctrl+Alt+P) | Set preferences for various views. |
| Exit (Ctrl+Q) | Closes Enterprise Manager. |

The **Logout**, **Refresh**, and **Pause Refresh** toolbar icons also display beneath the menu bar.

### Encrypting Passwords

Use the Enterprise Manager encryption tool when an OpCon configuration value requires an encrypted password.

1. Log in to the Enterprise Manager
2. Go to **EnterpriseManager > Password Update > Password Encryption Tool**. The **Password encryption tool** dialog displays
3. *(Optional)* Select the **Visible** option to show the password characters
4. Enter the password in the **Password** field
5. Select **Encrypt**
6. Select **Copy to clipboard** to copy the encrypted password
7. Select **Close**
8. Paste the encrypted password to the desired location

### Generating External Tokens

1. Log in to the Enterprise Manager
2. Go to **EnterpriseManager > Password Update > Generate External Token**. The **External Token Set** dialog displays
3. Select **Yes** to copy the external token to the clipboard, or **No** to close the dialog
4. Paste the external token to the desired location

## Help

The **Help** menu includes the following options:

- **Enterprise Manager (F1)**: Opens contextual help for the current location. From the main screen, opens the first topic of the Enterprise Manager online help
- **Documentation**: Provides links to all OpCon online product help
- **Show Key Assist**: Lists functions and their keyboard shortcut keys
- **Check for Updates**: Checks for a new version of Enterprise Manager (also runs at startup if configured). For more information, refer to [Setting Preferences](Setting-Preferences.md)
- **Legend**: Opens the legend window explaining colors and icons for jobs, schedules, and dependencies in the views
- **About OpCon Enterprise Manager**: Displays Continuous contact information, product version details, and the option to Report a Problem. Also shows OpCon License information for users with granted privileges. Refer to [Reporting Problems](Reporting-Problems.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Documentation | Provides links to all OpCon online product help | — | — |
| Show Key Assist | Lists functions and their keyboard shortcut keys | — | — |
| Check for Updates | Checks for a new version of Enterprise Manager (also runs at startup if configured). | — | — |
| Legend | Opens the legend window explaining colors and icons for jobs, schedules, and dependencies in the views | — | — |
| About OpCon Enterprise Manager | Displays Continuous contact information, product version details, and the option to Report a Problem. | — | — |
## FAQs

**Q: How many steps does the Menus procedure involve?**

The Menus procedure involves 12 steps. Complete all steps in order and save your changes.

**Q: What does Menus cover?**

This page covers Enterprise Manager, Help.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
