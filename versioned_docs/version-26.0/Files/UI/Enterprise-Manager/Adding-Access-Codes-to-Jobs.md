---
title: Adding Access Codes to Jobs
description: "After creating an access code, apply it to each job that uses it."
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

# Adding Access Codes to Jobs

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

After creating an access code, apply it to each job that uses it.

To add an access code to a job, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays
2. Select the **schedule** in the **Schedule** list
3. Select the **job** in the **Job** list
4. Select the **access code** in the **Access Code** list
5. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar
6. Repeat Steps 3–5 for each job that needs the access code applied
7. Select **Close ☒** to close the **Job Master** screen

## When Would You Use It?

- You need to add Access Codes to Jobs in Enterprise Manager
- The environment is expanding and requires additional Access Codes to Jobs to support new automation workflows

## Why Would You Use It?

- **Extend automation scope**: Adding Access Codes to Jobs to OpCon brings additional resources under centralized scheduling, monitoring, and event processing
- All additions are tracked in the OpCon audit log, recording who added the Access Codes to Jobs and when


## FAQs

**Q: Where do you access Access Codes to Jobs in the Enterprise Manager?**

Select **Job Master** under the **Administration** topic in the Enterprise Manager navigation pane.

**Q: How do you save a new access codes to jobs record?**

After completing the required fields, select the **Save** button on the toolbar to save the access codes to jobs record.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Access Code**: A security label applied to jobs and schedules in OpCon. Users must have the matching access code privilege to view or manage items with that label.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
