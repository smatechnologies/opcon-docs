---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying Schedules
description: "Use this procedure to copy Schedules in the Enterprise Manager."
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

#  Copying Schedules

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to copy Schedules in the Enterprise Manager.

To copy a schedule, complete the following steps:

1.  Select on **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays
2.  Select a **schedule** in the **Schedule** list, or select **Find** to locate the schedule
3.  Select **Copy Schedule** on the **Schedule Master** toolbar. The **Copy Schedule** dialog displays
4.  Enter the *New Schedule Name*
5.  Clear the **Copy Jobs** option if jobs from the current schedule should not be copied (selected by default)
6.  Clear the **Copy Schedule Privileges** option if schedule privileges are not required on the new schedule (selected by default)
7.  Select **OK**
8.  Select **Close ☒** (to the right of the **Schedule Master** tab) to close the **Schedule Master** screen
:::

## FAQs

**Q: Why would you copy schedules instead of creating a new one?**

Copying schedules is useful when you want to reuse an existing configuration as a starting point. All settings from the original are duplicated, and you can then modify the copy as needed.

**Q: Does copying schedules require a new unique name?**

Yes. The copy must be saved with a new unique name to distinguish it from the original schedules record.

## Glossary

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
