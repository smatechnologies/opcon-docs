---
title: Disabling User Logins
description: "Use this procedure to disable User Logins in the Enterprise Manager."
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

# Disabling User Logins

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to disable User Logins in the Enterprise Manager.

To disable a user login, complete the following steps:

1. Select on **User Accounts** under the **Security** topic
2. Select a **role** in the **Select Role** list, or use **Find** (Ctrl+F) to search
3. Select the **Login disabled** option
4. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **User Accounts** toolbar
5. Select **Close ☒** to close the **User Accounts** screen

:::note
Manually disabling a user login releases any Self Service license(s) associated with that user.
:::

## When Would You Use It?

- A User Logins feature needs to be suspended in Enterprise Manager
- Maintenance or troubleshooting requires suspending User Logins temporarily without losing the definition

## Why Would You Use It?

- **Prevent unintended execution**: Disabling User Logins suspends activity without deleting the definition, making it simple to re-enable when ready
- The suspension is recorded in the OpCon audit log, providing an audit trail for change management purposes

## FAQs

**Q: How many steps does the Disabling User Logins procedure involve?**

The Disabling User Logins procedure involves 5 steps. Complete all steps in order and save your changes.

**Q: What happens to a user's Self Service license when their login is manually disabled?**

Manually disabling a user login releases any Self Service license(s) associated with that user. This frees up the license for assignment to another user.

**Q: Is the act of disabling a user login recorded anywhere in OpCon?**

Yes. Disabling a user login is recorded in the OpCon audit log, providing an audit trail for change management purposes.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.
