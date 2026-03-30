---
title: Adding Departments
description: "Use this procedure to add Departments in the Enterprise Manager."
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

# Adding Departments

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Departments in the Enterprise Manager.

To add a department, complete the following steps:

1. Select **Departments** under the **Security** topic. The **Departments** screen displays
2. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the **Departments** toolbar
3. Enter the *department name* in the **Name** text box
4. *(Optional)* Enter any documentation relating to the department in the **Documentation** text box
5. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Departments** toolbar
6. Select **Close ☒** (to the right of the **Departments** tab) to close the screen

## When Would You Use It?

- You need to add Departments in Enterprise Manager
- The environment is expanding and requires additional Departments to support new automation workflows

## Why Would You Use It?

- **Extend automation scope**: Adding Departments to OpCon brings additional resources under centralized scheduling, monitoring, and event processing
- All additions are tracked in the OpCon audit log, recording who added the Departments and when

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Where do you access Departments in the Enterprise Manager?**

Select **Departments** under the **Security** topic in the Enterprise Manager navigation pane.

**Q: What information is required to add departments?**

The required fields include **Name**. Select **Save** on the toolbar to save the new record.

**Q: Is documentation required when adding departments?**

No. The Documentation field is optional. You can enter notes about the departments to track its purpose, but it is not required to save the record.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.
