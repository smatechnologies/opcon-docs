---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying Jobs
description: "Use this procedure to copy Jobs in the Enterprise Manager."
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

#  Copying Jobs

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to copy Jobs in the Enterprise Manager.

To copy a job, complete the following steps:

1.  Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2.  Select a **schedule** in the **Schedule** list
3.  Select the **job** in the **Job** list
4.  Select the **Copy** button on the **Job Master** toolbar. The **Copy** dialog displays
5.  *(Optional)* Enter the *Job Name*
6.  Select the destination **schedule** in the **Schedule** list
7.  Select **OK** to run the copy, or select **Cancel** to discard
8.  Select **Close ☒** (to the right of the **Job Master** tab) to close the **Job Master** screen

## FAQs

**Q: Why would you copy jobs instead of creating a new one?**

Copying jobs is useful when you want to reuse an existing configuration as a starting point. All settings from the original are duplicated, and you can then modify the copy as needed.

**Q: Does copying jobs require a new unique name?**

Yes. The copy must be saved with a new unique name to distinguish it from the original jobs record.

## Glossary

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
