---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Adding User Accounts
description: "Use this procedure to add User Accounts in the Enterprise Manager."
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

#  Adding User Accounts

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add User Accounts in the Enterprise Manager.

To add a user account, complete the following steps:

1.  Select on **User Accounts** under the **Security** topic. The **User Accounts** screen displays
2.  Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the **User Accounts** toolbar
3.  Enter the *new user* in the **Name** text box
4.  Enter the new user's *full name* in the **Full User Name** text box
5.  *(Optional)* Add *notes*, *comments*, and *email address* details
6.  *(Optional)* Select the **Password never expires** option
7.  Select the **Self-Service** option to set the user as a Self Service user. The user must also be granted the **View Service Request** privilege at minimum to view Self Service
8.  Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **User Accounts** toolbar
9.  Select **Close ☒** to close the **User Accounts** screen

## When Would You Use It?

- You need to add User Accounts in Enterprise Manager
- The environment is expanding and requires additional User Accounts to support new automation workflows

## Why Would You Use It?

- **Extend automation scope**: Adding User Accounts to OpCon brings additional resources under centralized scheduling, monitoring, and event processing
- All additions are tracked in the OpCon audit log, recording who added the User Accounts and when


## FAQs

**Q: What information is required to add user accounts?**

The required fields include **Name**. Select **Save** on the toolbar to save the new record.

**Q: Is documentation required when adding user accounts?**

No. The Documentation field is optional. You can enter notes about the user accounts to track its purpose, but it is not required to save the record.

## Glossary

**Service Request**: A Solution Manager feature that lets operators trigger predefined automation workflows using a simple form. Service Requests encapsulate schedule builds, job submissions, or events without requiring direct access to schedule definitions.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.
