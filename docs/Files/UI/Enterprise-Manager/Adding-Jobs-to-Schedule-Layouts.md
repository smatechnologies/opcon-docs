---
title: Adding Jobs to Schedule Layouts
description: "Use this procedure to add Jobs to Schedule Layouts in the Enterprise Manager."
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

# Adding Jobs to Schedule Layouts

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Jobs to Schedule Layouts in the Enterprise Manager.

To add a job to the schedule layout:

1. Select on **Workflow Designer** under the **Administration** topic
2. Select a **schedule** in the **Select Schedule** tree view or expand a **schedule** to refer to its SubSchedule(s). Use the **filter** text box to filter to a specific **schedule** or **SubSchedule**
3. Select, drag, and drop the **Add Job** icon in the **Tools** frame to the schedule diagram
4. Enter the *job information*
5. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar
6. Select **Close ☒** (to the right of the **Job Master** tab) to close the **Job Master** screen

## Add a Job Dependency

:::note
If you do not have the privileges to "Modify Jobs in Job Master" in at least one department or "All Administration Functions" or "All Functions," the **Add Dependency** tool is disabled.
:::

Establish the dependency link using one of these methods:

**Method 1:**
1. Select **Add Dependency** in the **Tools** frame

2. Select the **job** that is the object of the dependency
3. Select the **job** in which to create the dependency

**Method 2:**
1. Select **Select**
2. Press **Ctrl** and select the **job** that is the object of the dependency
3. Drag the line across to the **job** in which to create the dependency

In the **Add Dependency** dialog:

4. Select the **Instance Name** for the Predecessor Job

:::note
The Instance Name list is only available for Multi-Instance Schedules.
:::

To add a Job Dependency, complete the following steps:

5. Select the **Dependency Type** option
6. Select the **Dependency Options**
7. Select the **Frequency** for the Successor Job
8. Select **OK** to save the dependency

:::note
Dependencies display linking the respective jobs in different colors and styles depending on type (e.g., Requires, After, Excludes, or Conflict). Refer to [Workflow Designer Dependency Lines](Workflow-Designer-Dependency-Lines.md).
:::

## Edit a Job

1. Select **Select** in the **Tools** frame
2. Right-click the **job** to change
3. Select **Edit**
4. Enter the *job information changes*
5. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar
6. Select **Close ☒** (to the right of the **Job Master** tab) to close the **Job Master** screen

## Edit a Job Dependency

1. Right-click the **Job dependency** link (line) to change

:::note
When selecting the job dependency link line, the line thickens and becomes bold.
:::

2. Select **Edit**. The **Edit Dependency** dialog displays

3. Select the **Instance Name** for the Predecessor Job

:::note
The Instance Name list is only available for Multi-Instance Schedules.
:::

To edit a Job Dependency, complete the following steps:

4. Select the **Dependency Type** option
5. Select the **Dependency Options**
6. Select the **Frequency** for the Successor Job
7. Select **OK** to save the changes

## Delete a Job

:::note
If you do not have the privileges to "Delete Jobs in Job Master" in at least one department or "All Administration Functions" or "All Functions," the **Delete** option is disabled.
:::

1. Select **Select** in the **Tools** frame
2. Right-click the **job** to delete
3. Select **Delete**
4. Select **Yes** to confirm or **No** to cancel

## Delete a Dependency

:::note
If you do not have the privileges to "Modify Jobs in Job Master" in at least one department or "All Administration Functions" or "All Functions," the **Delete** option is disabled.
:::

1. Select **Select** in the **Tools** frame
2. Right-click the **Dependency** link (line) to delete

:::note
When selecting the dependency link line, the line thickens and becomes bold.
:::

3. Select **Delete**

4. Select **Yes** to confirm or **No** to cancel
5. Select **Close ☒** (to the right of the **Workflow Designer** tab) to close the **Workflow Designer** screen


## FAQs

**Q: How do you save a new jobs to schedule layouts record?**

After completing the required fields, select the **Save** button on the toolbar to save the jobs to schedule layouts record.

**Q: Can you add jobs to schedule layouts for multiple platforms?**

Yes. This page covers jobs to schedule layouts for multiple platforms or contexts: Add a Job Dependency, Edit a Job, Edit a Job Dependency.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
