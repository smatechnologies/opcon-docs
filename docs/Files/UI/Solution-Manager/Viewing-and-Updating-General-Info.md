---
title: Viewing and Updating General Info
description: "The Daily Job Definition page displays general job details at the top: - Scheduled Date (read-only) - Schedule Path (read-only) - Schedule Name (read-only) - Job Name (read-only) - Department -."
product_area: Solution Manager
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

# Viewing and Updating General Info

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Daily Job Definition** page displays general job details at the top:

- Scheduled Date (read-only)
- Schedule Path (read-only)
- Schedule Name (read-only)
- Job Name (read-only)
- Department
- Access Code
- Tags

Read-only properties cannot be changed. Department, access code, and tags can be updated in **Admin** mode.

## When Would You Use It?

- You need to inspect or audit and Updating General Info records in Solution Manager
- An audit, compliance review, or operational check requires inspection of current and Updating General Info state

## Why Would You Use It?

- **Improve operational visibility**: Inspecting and Updating General Info records in Solution Manager supports informed decision-making and provides an audit trail for compliance reviews
- Information in Solution Manager reflects the live database state, ensuring that the data reviewed is current at the time of inspection

## Updating General Information

:::note
Only users with the appropriate permissions can access the **Lock** button and update job properties. For details, refer to [Required Privileges](Accessing-Daily-Job-Definition.md#Required) in the **Accessing Daily Job Definition** topic.
:::

:::note
Changes to job properties in the **Daily Job Definition** take effect immediately. If the job has already run, changes apply the next time the job runs.
:::

### Navigating to the Daily Job Definition page

Complete steps 1-8 before performing any general info update:

1. Select the **Processes** button at the top-right of the **Operations Summary** page
2. Enable both the **Date** and **Schedule** toggle switches. Each switch appears green when enabled
3. Select the desired **date(s)** to display the associated schedules
4. Select one or more **schedules** in the list
5. Select one **job** in the list. Your selection appears as a breadcrumb trail in the [status bar](SM-UI-Layout.md#Status)
6. Select the job record (e.g., 1 job(s)) in the status bar to open the **Selection** panel
7. Select the **Daily Job Definition** button ![Daily Job Definition Button](../../../Resources/Images/SM/Daily-Job-Definition-Button.png "Daily Job Definition Button") at the top-left of the panel. The page opens in **Read-only** mode by default
8. Select the **Lock** button ![Daily Job Definition Read-only Button](../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Daily Job Definition Read-only Button") at the top-right to enter **Admin** mode. The button changes to a white unlocked lock on a green background ![Daily Job Definition Admin Switch](../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Daily Job Definition Admin Switch")

### Updating Departments

For conceptual information, refer to [Departments](../../../objects/departments.md) in the **Concepts** online help.

1. Complete steps 1-8 above
2. Select another **department** from the **Department** combo box. If needed, select the **Search** button ![Daily Job Definition Search Button](../../../Resources/Images/SM/Daily-Job-Definition-Search-Button.png "Daily Job Definition Search Button"), enter search criteria to filter the list, make your selection, then select **OK**
3. Select the **Save** button

### Updating Access Codes

For conceptual information, refer to [Access Codes](../../../objects/access-codes.md) in the **Concepts** online help.

1. Complete steps 1-8 above
2. Select another **access code** from the **Access Code** combo box. If needed, select the **Search** button ![Daily Job Definition Search Button](../../../Resources/Images/SM/Daily-Job-Definition-Search-Button.png "Daily Job Definition Search Button"), enter search criteria to filter the list, make your selection, then select **OK**
3. Select the **Save** button

### Adding Tags

For conceptual information, refer to [Tags](../../../job-components/tags.md) in the **Concepts** online help.

1. Complete steps 1-8 above
2. Enter the *tag name* in the **Tag** field and press **Enter**. Repeat to add more tags
3. Select the **Save** button

### Removing Tags

For conceptual information, refer to [Tags](../../../job-components/tags.md) in the **Concepts** online help.

1. Complete steps 1-8 above
2. Select the **x** next to the tag name to delete it
3. Select the **Save** button

:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: How many steps does the Viewing and Updating General Info procedure involve?**

The Viewing and Updating General Info procedure involves 20 steps. Complete all steps in order and save your changes.

**Q: What does Viewing and Updating General Info cover?**

This page covers Updating General Information.

## Glossary

**Access Code**: A security label applied to jobs and schedules in OpCon. Users must have the matching access code privilege to view or manage items with that label.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
