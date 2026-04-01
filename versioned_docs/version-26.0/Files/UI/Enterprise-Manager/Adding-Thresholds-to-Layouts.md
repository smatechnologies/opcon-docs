---
title: Adding Thresholds to Layouts
description: "Use this procedure to add Thresholds to Layouts in the Enterprise Manager."
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

# Adding Thresholds to Layouts

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Thresholds to Layouts in the Enterprise Manager.

:::note
The **Select Threshold** tool is disabled without "Modify Jobs in Job Master" privileges in at least one department, or "All Administration Functions" or "All Functions."
:::

To add a threshold, complete the following steps:

1. Select **Workflow Designer** under the **Administration** topic
2. Select a **schedule** from the **Select Schedule** list
3. Drag and drop the **Select Threshold** icon from the **Tools** frame to the schedule diagram
4. Select the **threshold**
5. Select the **OK** button

## Add a Threshold Dependency

Establish the dependency link using one of these methods:

**Method 1:**

a. Select **Add Dependency** in the **Tools** frame.
b. Select the **threshold** that is the object of the dependency.
c. Select the **job** in which to create the dependency.
d. Proceed to step 7.

**Method 2:**

a. Select **Select**.
b. Press **Ctrl** and select the **threshold** that is the object of the dependency.
c. Drag the link line to the **job** in which to create the dependency.
d. Proceed to step 7.

7. Select the **Threshold** option information (e.g., Operator, Value, Frequency) in the **Threshold Dependency** dialog
8. Select **OK** to save the threshold

## Edit a Threshold Dependency

To edit a Threshold Dependency, complete the following steps:

1. Right-click the **threshold dependency** link line to change

:::note
The line thickens and becomes bold when selected.
:::

2. Select **Edit**. The **Editing Job Dependency** dialog displays

3. Change the Threshold Dependency options (e.g., Operator, Value, Frequency)
4. Select **OK** to save the changes

:::note
Refer to the [Delete a Dependency](Adding-Jobs-to-Schedule-Layouts.md#Delete_a_Dependency) procedure to delete threshold dependencies.
:::


## FAQs

**Q: Where do you access Thresholds to Layouts in the Enterprise Manager?**

Select **Workflow Designer** under the **Administration** topic in the Enterprise Manager navigation pane.

**Q: How do you save a new thresholds to layouts record?**

After completing the required fields, select the **Save** button on the toolbar to save the thresholds to layouts record.

**Q: Can you add thresholds to layouts for multiple platforms?**

Yes. This page covers thresholds to layouts for multiple platforms or contexts: Add a Threshold Dependency, Edit a Threshold Dependency.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
