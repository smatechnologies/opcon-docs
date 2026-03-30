---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Applying Master Calendars to Schedules
description: "Use this procedure to apply Master Calendars to Schedules in the Enterprise Manager."
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

#  Applying Master Calendars to Schedules

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to apply Master Calendars to Schedules in the Enterprise Manager.

To apply a master calendar to a schedule, complete the following steps:

1.  Select on **Schedule Master** under the **Administration** topic
2.  Select the **schedule** in the **Schedule** list
3.  Select the **Use Master Holiday** option
4.  Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar
5.  Select the **x** to the right of the **Schedule Master** tab to close

## When Would You Use It?

- To apply a master calendar to a schedule:

## Why Would You Use It?

- **Applying Master**: To apply a master calendar to a schedule:

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Applying Master Calendars to Schedules procedure involve?**

The Applying Master Calendars to Schedules procedure involves 5 steps. Complete all steps in order and save your changes.

## Glossary

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
