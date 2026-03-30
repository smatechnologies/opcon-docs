---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Starting Intercepted Jobs ASAP
description: "Starting an intercepted SAP job ASAP releases it to run immediately rather than waiting for its normal scheduled time."
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

#  Starting Intercepted Jobs ASAP

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Intercepted SAP jobs are held in a queue after being captured by the SAP machine intercept function. Starting an intercepted job ASAP releases it to run immediately rather than waiting for its normal scheduled time.

To start an intercepted job, complete the following steps:

1.  Select on **Machines Status** under the **Operation** topic
2.  Right-click on the preferred **SAP R/3 and CRM** **machine name**
3.  Hover over **SAP Machine** in the right-click menu and select on **Intercept SAP Jobs**. The **View Intercepted SAP Jobs** dialog displays
4.  Select on the preferred **SAP Job** to start A.S.A.P
5.  Select the **Start ASAP** button
:::

 

## When Would You Use It?

- To start an intercepted job:

## Why Would You Use It?

- **Starting Intercepted**: To start an intercepted job:

## FAQs

**Q: How many steps does the Starting Intercepted Jobs ASAP procedure involve?**

The Starting Intercepted Jobs ASAP procedure involves 5 steps. Complete all steps in order and save your changes.

## Glossary

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
