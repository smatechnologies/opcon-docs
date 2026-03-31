---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying Users
description: "Use this procedure to copy Users in Solution Manager."
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

# Copying Users

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to copy Users in Solution Manager.

## Administration

### Required Privileges

To copy a user, you must have at least one of the following privileges:

- System Administrator
- All Function Privileges
- All Administrative Functions

---

## Copying a User

The **Access Management** page is found in _Library > Access Management_.

:::note
Email is required if Server Options -> Security -> "Ask user to enter a recovery email address upon login" is enabled.
:::

To copy a user, complete the following steps:

1. Select the user to copy from the users list
2. Select the context menu button ![Context Menu Button](../../../../../../Resources/Images/SM/Library/AccessManagement/context-menu.png 'Context Menu Button')
3. Select **Create a new user**
4. Enter the user information in the **User Details** dialog
5. Select **Save** to add the user or **Cancel** to dismiss the dialog

![Copy User](../../../../../../Resources/Images/SM/Library/AccessManagement/copy-user.png 'Copy User')

## FAQs

**Q: Why would you copy users instead of creating a new one?**

Copying users is useful when you want to reuse an existing configuration as a starting point. All settings from the original are duplicated, and you can then modify the copy as needed.

**Q: Does copying users require a new unique name?**

Yes. The copy must be saved with a new unique name to distinguish it from the original users record.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.
