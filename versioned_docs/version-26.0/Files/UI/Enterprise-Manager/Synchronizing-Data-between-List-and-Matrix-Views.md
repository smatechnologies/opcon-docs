---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Synchronizing Data between List and Matrix Views
description: "Use this procedure to synchronize Data between List and Matrix Views in the Enterprise Manager."
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

#  Synchronizing Data between List and Matrix Views

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to synchronize Data between List and Matrix Views in the Enterprise Manager.

To synchronize the data between views, complete the following steps:

1.  Select on **List** under the **Operation** topic. The **Daily list** screen displays
2.  Select on **Matrix** under the **Operation** topic. The **Matrix** screen displays
3.  Select and drag the **Matrix** tab to the right side of the screen
4.  When the mouse changes to an **arrow symbol** pointing right, release the **Matrix** tab
5.  Select to activate the ![Listen for Selection icon](../../../Resources/Images/EM/EMlistenforchanges.png "Listen for Selection icon") **Listen for selection changes in other views** button on the **Matrix** toolbar
6.  Select to activate the ![Send Current Selection icon](../../../Resources/Images/EM/EMsendchanges.png "Send for Current Selection icon") **Send the current selection change to other views** button on the **Daily list** toolbar
7.  Select on a **date**, or select on a **date** then a **schedule**, to view
8.  View the schedule and related job information in the **Matrix** view
9.  Select to deactivate the **Listen for selection changes in other views** button on the **Matrix** toolbar
:::

 

## When Would You Use It?

- A Data between List and Matrix Views needs to be kept in sync with an external system

## Why Would You Use It?

- **Keep data consistent**: Synchronizing Data between List and Matrix Views ensures OpCon reflects the current state of external systems, preventing stale data from causing errors

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Synchronizing Data between List and Matrix Views procedure involve?**

The Synchronizing Data between List and Matrix Views procedure involves 9 steps. Complete all steps in order and save your changes.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
