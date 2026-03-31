---
title: Adding Access Codes
description: "Use this procedure to add Access Codes in the Enterprise Manager."
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

# Adding Access Codes

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Access Codes in the Enterprise Manager.

To add an access code, complete the following steps:

1. Select **Access Codes** under the **Security** topic. The **Access Codes** screen displays
2. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the **Access Codes** toolbar
3. Enter the *access code name* in the **Name** text box
4. *(Optional)* Enter any documentation relating to the access code in the **Documentation** text box
5. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Access Codes** toolbar
6. Select **Close ☒** (to the right of the **Access Codes** tab) to close the screen

## When Would You Use It?

- You need to add Access Codes in Enterprise Manager
- The environment is expanding and requires additional Access Codes to support new automation workflows

## Why Would You Use It?

- **Extend automation scope**: Adding Access Codes to OpCon brings additional resources under centralized scheduling, monitoring, and event processing
- All additions are tracked in the OpCon audit log, recording who added the Access Codes and when


## FAQs

**Q: Where do you access Access Codes in the Enterprise Manager?**

Select **Access Codes** under the **Security** topic in the Enterprise Manager navigation pane.

**Q: What information is required to add access codes?**

The required fields include **Name**. Select **Save** on the toolbar to save the new record.

**Q: Is documentation required when adding access codes?**

No. The Documentation field is optional. You can enter notes about the access codes to track its purpose, but it is not required to save the record.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Access Code**: A security label applied to jobs and schedules in OpCon. Users must have the matching access code privilege to view or manage items with that label.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.
