---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Adding Users
description: "Use this procedure to add Users in Solution Manager."
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

# Adding Users

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Users in Solution Manager.

## When Would You Use It?

- You need to add Users in Solution Manager
- The environment is expanding and requires additional Users to support new automation workflows

## Why Would You Use It?

- **Extend automation scope**: Adding Users to OpCon brings additional resources under centralized scheduling, monitoring, and event processing
- All additions are tracked in the OpCon audit log, recording who added the Users and when

## Administration

### Required Privileges

To add a user, you must have at least one of the following privileges:

- System Administrator
- All Function Privileges
- All Administrative Functions

---

## Adding a User

The **Access Management** page is found in _Library > Access Management_.

:::note
Email is required if Server Options -> Security -> "Ask user to enter a recovery email address upon login" is enabled.
:::

To add a new user, complete the following steps:

1. Select the context menu button ![Context Menu Button](../../../../../../Resources/Images/SM/Library/AccessManagement/context-menu.png 'Context Menu Button')
2. Select **Create a new user**
3. Enter the user information in the **User Details** dialog
4. Select **Save** to add the user or **Cancel** to dismiss the dialog

![User Details](../../../../../../Resources/Images/SM/Library/AccessManagement/user-details.png 'User Details')

## FAQs

**Q: How do you save a new users record?**

After completing the required fields, select the **Save** button on the toolbar to save the users record.

**Q: Can you add users for multiple platforms?**

Yes. This page covers users for multiple platforms or contexts: Required Privileges, Adding a User.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.
