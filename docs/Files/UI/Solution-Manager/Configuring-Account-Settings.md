---
title: Configuring Account Settings
description: "Use this procedure to configure Account Settings in Solution Manager."
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

# Configuring Account Settings

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to configure Account Settings in Solution Manager.

To configure account settings, complete the following steps:

1. Log into the Solution Manager
2. Select the **user profile** button in the **Navigation** menu

   ![User Profile Button](../../../Resources/Images/SM/User-Profile-Button.png "User Profile Button")

3. The **Profile** page displays with the **Account** tab in focus
4. Modify any of the following fields:
   - **Full User Name** (required)
   - **Notes**
   - **Comments**
   - **User Password**
   - **Confirm User Password**

   :::note
   The **E-mail** field is disabled on this page for security purposes.
   :::

   :::note
   For conceptual information about these fields, refer to [User Accounts](../../../administration/user-accounts.md) in the **Concepts** online help.
   :::

5. Select **Save** to save changes to the database

## FAQs

**Q: What does configuring account settings control?**

Configuring account settings defines the settings that determine how OpCon behaves for this feature. Review the available options and set values appropriate for your environment.

**Q: How many steps are required to configure account settings?**

The configuration procedure involves 5 steps. Complete all steps in order and select **Save** to apply the changes.

## Glossary

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
