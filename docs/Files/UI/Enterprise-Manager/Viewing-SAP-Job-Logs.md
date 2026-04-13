---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Viewing SAP Job Logs
description: "Use this procedure to view SAP Job Logs in the Enterprise Manager."
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

#  Viewing SAP Job Logs

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to view SAP Job Logs in the Enterprise Manager.

To view the logs, complete the following steps:

1.  Select on **Machines Status** under the **Operation** topic
2.  Right-click on the preferred **SAP R/3 and CRM machine name**
3.  Hover over **SAP Machine** in the menu and select **SAP Jobs**. The **View SAP Jobs** dialog displays
4.  Enter a *job name* or *name with a wildcard*
5.  *(Optional)* Enter a *date range* for the job's creation date
6.  *(Optional)* Enter an *event* in the **Event ID** text box
7.  Select the **Scheduled** status box and clear all other status boxes
8.  Select **Search SAP**
9.  Select the **SAP job** in the list
10. Select **Job Log**
:::

## FAQs

**Q: How many steps does the Viewing SAP Job Logs procedure involve?**

The Viewing SAP Job Logs procedure involves 10 steps. Complete all steps in order and save your changes.

## Glossary

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
