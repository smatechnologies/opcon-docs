---
title: Adding Resources to Layouts
description: "Use this procedure to add Resources to Layouts in the Enterprise Manager."
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

# Adding Resources to Layouts

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Resources to Layouts in the Enterprise Manager.

:::note
If you do not have the privileges to "Modify Jobs in Job Master" in at least one department, or "All Administration Functions" or "All Functions," the **Select Threshold** tool is disabled.
:::

To add a resource, complete the following steps:

1. Select on **Workflow Designer** under the **Administration** topic
2. Select a **schedule** in the **Select Schedule** list
3. Select, drag, and drop the **Resource** icon in the **Tools** frame to the schedule diagram
4. Select the **resource** and select **OK**

Add a Resource Dependency

Establish the dependency link using one of the following procedures:

a.  Select **Add Dependency** in the **Tools** frame.
b.  Select the **resource** that is the object of the dependency.
c.  Select the **job** in which to create the dependency.
d.  Proceed to Step 7.

OR

a.  Select **Select**.
b.  Press **Ctrl** and select the **resource** that is the object of the dependency.
c.  Drag the line to the **job** in which to create the dependency.
d.  Proceed to Step 7.

5. Select the **Resource** option information (e.g., Value, Frequency) in the **Resource Dependency** dialog
6. Select **OK** to save the added resource

Edit a Resource Dependency

1. Right-click the **resource dependency** link (line) whose details need to be changed

:::note
When selecting the Resource Dependency link line, the line should thicken and become bold.
:::

2. Select **Edit**. The **Editing Job Dependency** dialog displays
3. Change the *Resource Dependency* option information (e.g., Value, Frequency)
4. Select **OK** to save the changes

:::note
Refer to the [Delete a Dependency](Adding-Jobs-to-Schedule-Layouts.md#Delete_a_Dependency) procedure to delete resource dependencies.
:::

## When Would You Use It?

- You need to add Resources to Layouts in Enterprise Manager
- The environment is expanding and requires additional Resources to Layouts to support new automation workflows

## Why Would You Use It?

- **Extend automation scope**: Adding Resources to Layouts to OpCon brings additional resources under centralized scheduling, monitoring, and event processing
- All additions are tracked in the OpCon audit log, recording who added the Resources to Layouts and when

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: How do you save a new resources to layouts record?**

After completing the required fields, select the **Save** button on the toolbar to save the resources to layouts record.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
