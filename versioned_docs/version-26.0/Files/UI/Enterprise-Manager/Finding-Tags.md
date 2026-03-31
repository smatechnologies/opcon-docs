---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Finding Tags
description: "Tags in Job Master can be searched using the Quick Search dialog to locate a tag by name when assigning it to a job."
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

#  Finding Tags

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Tags in Job Master can be searched using the Quick Search dialog, which lets engineers locate a specific tag by name when assigning it to a job without having to scroll through the full tag list.

To find a tag, complete the following steps:

1.  Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2.  Select the **schedule** in the **Schedule** list
3.  Select the **job** in the **Job** list
4.  Select the **Tags** tab in the **Job Properties** frame
5.  Select the ![Find icon](../../../Resources/Images/EM/EMfind.png "Find icon") **Find** button to the right of the **Choose Tag** text box. The **Quick search** dialog displays
6.  Type the tag name in the **Select an Item** text box
7.  Select **OK**
:::

## When Would You Use It?

- You need to configure or manage Finding Tags in OpCon

## Why Would You Use It?

- **Centralized control**: Managing Finding Tags through OpCon provides consistent oversight and a full audit trail for all changes

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Finding Tags procedure involve?**

The Finding Tags procedure involves 7 steps. Complete all steps in order and save your changes.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
