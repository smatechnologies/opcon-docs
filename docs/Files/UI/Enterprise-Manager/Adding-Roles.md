---
title: Adding Roles
description: "Use this procedure to add Roles in the Enterprise Manager."
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

# Adding Roles

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Roles in the Enterprise Manager.

To add a role, complete the following steps:

1. Select on **Roles** under the **Security** topic. The **Roles** screen displays
2. Select ![Add button](../../../Resources/Images/EM/EMadd.png "Add button") **Add** on the **Roles** toolbar
3. Enter the new *role name* in the **Name** text box
4. Enter the *role description* in the **Documentation** text box
5. *(Optional)* Select any of the following options as needed. For information on the **Inherit Privileges for All Schedules** option, refer to [Roles](../../../administration/roles.md) in the **Concepts** online help
   - **Inherit Privileges for All Schedules**
   - **Inherit Privileges for All Machines**
   - **Inherit Privileges for All Machine Groups**
6. Assign users to the role using one of the following methods:
   - Select a **User Login ID** in the **Revoked** list to move it to the **Granted** list
   - Shift-select or Ctrl-select to select multiple **User Login IDs**, then select the **right arrow** to assign them
7. Select ![Save button](../../../Resources/Images/EM/EMsave.png "Save button") **Save** on the **Roles** toolbar
8. Select **Close ☒** (to the right of the **Roles** tab) to close the **Roles** screen

## When Would You Use It?

- You need to add Roles in Enterprise Manager
- The environment is expanding and requires additional Roles to support new automation workflows

## Why Would You Use It?

- **Extend automation scope**: Adding Roles to OpCon brings additional resources under centralized scheduling, monitoring, and event processing
- All additions are tracked in the OpCon audit log, recording who added the Roles and when

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: What information is required to add roles?**

The required fields include **Documentation**. Select **Save** on the toolbar to save the new record.

**Q: Is documentation required when adding roles?**

No. The Documentation field is optional. You can enter notes about the roles to track its purpose, but it is not required to save the record.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
