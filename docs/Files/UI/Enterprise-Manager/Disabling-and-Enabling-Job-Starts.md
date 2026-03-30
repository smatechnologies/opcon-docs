---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Disabling/Enabling Job Starts for Machines
description: "Disabling or enabling job starts on a machine controls whether OpCon submits new jobs to that agent."
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

#  Disabling/Enabling Job Starts for Machines

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Disabling or enabling job starts on a machine controls whether OpCon submits new jobs to that agent. Disabling job starts stops new job submissions while allowing currently running jobs to complete; enabling resumes normal job submission.

To disable or enable job starts for a machine, complete the following steps:

1.  Select on **Machines** under the **Administration** topic
2.  Select the **machine** in the **Select Machine** list
3.  Right-click the graphic in the **Communication Status** frame
4.  Select **Enable Job Starts** or **Disable Job Starts**
5.  Select **Close ☒** to close the **Machines** screen

## When Would You Use It?

- You need to enable job starts for a machine: using To disable or

## Why Would You Use It?

- **Operational value**: Enable job starts for a machine:

## FAQs

**Q: How many steps does the Disabling/Enabling Job Starts for Machines procedure involve?**

The Disabling/Enabling Job Starts for Machines procedure involves 5 steps. Complete all steps in order and save your changes.

## Glossary

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
