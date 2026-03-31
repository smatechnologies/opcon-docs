---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Using Workload Chart View
description: "The Workload Chart view shows at a glance whether schedules have overrun their estimated runtime."
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

#  Using Workload Chart View

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Workload Chart** view shows at a glance whether schedules have overrun their estimated runtime. For preferences related to this view, refer to [Setting Preferences for Charts](Preferences-for-Charts.md).

The view displays estimated and actual run times for completed jobs, with a progress bar indicating how many jobs have finished versus those still waiting or running. The Schedule Name or Date appears above the chart. To display schedule and job information, activate the **Listen for selection changes in other views** button on the **Workload Chart** toolbar. The **Send the current selection to other views** button must also be activated in another view (e.g., **List** and/or **Matrix**).

## When Would You Use It?

- The **Workload Chart** view shows at a glance whether schedules have overrun their estimated runtime

## Why Would You Use It?

- **Using Workload**: The **Workload Chart** view shows at a glance whether schedules have overrun their estimated runtime

## Workload Chart Toolbar

![Workload Chart toolbar](../../../Resources/Images/EM/EMworkloadcharttoolbar.png "Workload Chart toolbar")

## Creating and Saving Custom Diagrams

To create and Saving Custom Diagrams, complete the following steps:

1.  Select on **List** under the **Operation** topic
2.  Select on **Workload Chart** under the **Operation** topic
3.  Drag the **Workload Chart** tab to the right side of the screen. Release when the cursor changes to an arrow pointing right
4.  Activate **Listen for selection changes in other views** on the **Workload Chart** toolbar
5.  Activate **Send the current selection change to other views** on the **Daily list** toolbar
6.  Select a **date**, or a **date** then a **schedule**, to view
7.  Select **View Menu** (arrow pointing down) on the **Workload Chart** toolbar
8.  Select **Take Screenshot**. The **Image Preview** dialog displays
9.  Select **Save** to save the image, or **OK** to close the dialog

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What can you do with Workload Chart View?**

Workload Chart View allows you to workload chart toolbar, creating and saving custom diagrams.

**Q: Who has access to Workload Chart View?**

Access to Workload Chart View is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
