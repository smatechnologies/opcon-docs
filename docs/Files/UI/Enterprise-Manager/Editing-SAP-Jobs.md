---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing SAP Jobs
description: "Use this procedure to edit SAP Jobs in the Enterprise Manager."
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

#  Editing SAP Jobs

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit SAP Jobs in the Enterprise Manager.

To edit an SAP job, complete the following steps:

1.  Select on **Machines Status** under the **Operation** topic
2.  Right-click on the preferred **SAP R/3 and CRM machine name**
3.  Hover over **SAP Machine** in the right-click menu and select **SAP Jobs**. The **View SAP Jobs** dialog displays
4.  Enter a *job name* or a *name with a wildcard*
5.  *(Optional)* Enter a *date range* for the job's creation date
6.  *(Optional)* Enter an *event* in the **Event ID** list
7.  Select the **Scheduled** status box and clear all other status boxes
8.  Select the **Search SAP** button
9.  Select the **SAP job** in the list
10. Select the **Edit Job** button. The **Editing SAP Job** dialog displays
11. Edit the *information*
12. Select the **Save** button

## When Would You Use It?

- An existing SAP Jobs in Enterprise Manager requires changes
- A change in process, system, or business requirement makes the current SAP Jobs definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating SAP Jobs in Enterprise Manager ensures changes apply to future builds without disrupting currently running schedules
- Changes to SAP Jobs are recorded in the OpCon audit log, providing a complete modification history

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Do edits to sap jobs take effect immediately?**

Changes saved to sap jobs in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
