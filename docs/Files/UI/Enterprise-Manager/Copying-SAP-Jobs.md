---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying SAP Jobs
description: "Use this procedure to copy SAP Jobs in the Enterprise Manager."
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

#  Copying SAP Jobs

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to copy SAP Jobs in the Enterprise Manager.

To copy an SAP job, complete the following steps:

1.  Select on **Machines Status** under the **Operation** topic
2.  Right-click on the preferred **SAP R/3 and CRM machine name**
3.  Hover over **SAP Machine** in the right-click menu and select **SAP Jobs**. The **View SAP Jobs** dialog displays
4.  Enter a *job name* or a *name with a wildcard*
5.  *(Optional)* Enter a *date range* for the job's creation date
6.  *(Optional)* Enter an *event* in the **Event ID** list
7.  Select the **Scheduled** status box and clear all other status boxes
8.  Select **Search SAP**
9.  Select the **SAP job** in the list
10. Select **Copy Job**. The **New Job Name** dialog displays
11. Enter a *new job name*
12. Select **OK**
:::

## When Would You Use It?

- An existing SAP Jobs definition needs to be duplicated in Enterprise Manager
- A new SAP Jobs with similar settings to an existing one needs to be created quickly

## Why Would You Use It?

- **Save configuration time**: Duplicating an existing SAP Jobs eliminates redundant data entry and ensures the new definition inherits proven settings

## FAQs

**Q: Why would you copy sap jobs instead of creating a new one?**

Copying sap jobs is useful when you want to reuse an existing configuration as a starting point. All settings from the original are duplicated, and you can then modify the copy as needed.

**Q: Does copying sap jobs require a new unique name?**

Yes. The copy must be saved with a new unique name to distinguish it from the original sap jobs record.

## Glossary

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
