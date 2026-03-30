---
title: Adding Machine Groups to Job Details
description: "Use this procedure to add Machine Groups to Job Details in the Enterprise Manager."
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

# Adding Machine Groups to Job Details

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Machine Groups to Job Details in the Enterprise Manager.

To add machine group to details, complete the following steps:

1. Select on **Job Master** under the **Administration** topic
2. Select the **Schedule** in the **Schedule** list
3. Select the **job** in the **Job** list
4. Select a **machine group** in the **Group** list
5. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar
6. Repeat steps 3–5 for each job requiring the machine group
7. Select **Close ☒** (to the right of the **Job Master** tab) to close the **Job Master** screen

## When Would You Use It?

- You need to add Machine Groups to Job Details in Enterprise Manager
- The environment is expanding and requires additional Machine Groups to Job Details to support new automation workflows

## Why Would You Use It?

- **Extend automation scope**: Adding Machine Groups to Job Details to OpCon brings additional resources under centralized scheduling, monitoring, and event processing
- All additions are tracked in the OpCon audit log, recording who added the Machine Groups to Job Details and when

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: How do you save a new machine groups to job details record?**

After completing the required fields, select the **Save** button on the toolbar to save the machine groups to job details record.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
