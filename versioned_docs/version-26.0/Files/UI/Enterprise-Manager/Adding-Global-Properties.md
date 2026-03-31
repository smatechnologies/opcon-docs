---
title: Adding Global Properties
description: "Use this procedure to add Global Properties in the Enterprise Manager."
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

# Adding Global Properties

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Global Properties in the Enterprise Manager.

To add a global property, complete the following steps:

1. Select on **Global Properties** under the **Administration** topic. The **Global Properties** screen displays
2. Select **Add** on the **Global Properties** toolbar
3. Enter an alphanumeric *property name* in the **Name** text box
4. *(Optional)* Enter *documentation* in the **Documentation** text box
5. *(Optional)* Select the **Encrypted** option
6. Enter an alphanumeric *property value* in the **Value** text box
7. Select **Save** on the **Global Properties** toolbar
8. Select **Close ☒** to close the **Global Properties** screen

## When Would You Use It?

- You need to add Global Properties in Enterprise Manager
- The environment is expanding and requires additional Global Properties to support new automation workflows

## Why Would You Use It?

- **Extend automation scope**: Adding Global Properties to OpCon brings additional resources under centralized scheduling, monitoring, and event processing
- All additions are tracked in the OpCon audit log, recording who added the Global Properties and when

## FAQs

**Q: What information is required to add global properties?**

The required fields include **Documentation**. Select **Save** on the toolbar to save the new record.

**Q: Is documentation required when adding global properties?**

No. The Documentation field is optional. You can enter notes about the global properties to track its purpose, but it is not required to save the record.

## Glossary


**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using the [[PropertyName]] syntax to pass dynamic values at runtime.
