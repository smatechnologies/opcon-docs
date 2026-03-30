---
title: Adding Departments to Job Details
description: "After creating a department, apply it to each job that uses it."
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

# Adding Departments to Job Details

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

After creating a department, apply it to each job that uses it.

To add a department to job details, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays
2. Select a **schedule** in the **Schedule** list
3. Select a **job** in the **Job** list
4. In the **Job details** frame, select the **department** in the **Department** list
5. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar
6. Repeat Steps 3–5 for each job that needs the department applied
7. Select **Close ☒** to close the **Job Master** screen

## When Would You Use It?

- You need to add Departments to Job Details in Enterprise Manager
- The environment is expanding and requires additional Departments to Job Details to support new automation workflows

## Why Would You Use It?

- **Extend automation scope**: Adding Departments to Job Details to OpCon brings additional resources under centralized scheduling, monitoring, and event processing
- All additions are tracked in the OpCon audit log, recording who added the Departments to Job Details and when

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Where do you access Departments to Job Details in the Enterprise Manager?**

Select **Job Master** under the **Administration** topic in the Enterprise Manager navigation pane.

**Q: How do you save a new departments to job details record?**

After completing the required fields, select the **Save** button on the toolbar to save the departments to job details record.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
