---
title: Using Job Master
description: "Reference for the Job Master editor in Enterprise Manager, including its tabs, toolbar actions, and required privileges."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: reference
---

# Using Job Master

The **Job Master** editor is the primary place in Enterprise Manager to define and maintain jobs. You access it by selecting **Job Master** under the **Administration** topic.

The editor displays a job list on the left and a properties panel on the right. The properties panel contains a set of tabs that expose every aspect of a job's definition.

## Required privileges

Access to Job Master is controlled by department-scoped function privileges assigned to your OpCon role:

| Privilege | Effect |
|---|---|
| **Add Jobs to Master Schedules** | Allows adding new jobs |
| **Modify Jobs in Master Schedules** | Allows editing existing job definitions |
| **Delete Jobs from Master Schedules** | Allows removing jobs |
| **View Jobs in Master Schedules** | Allows opening and reading job definitions |

Contact your system administrator if you need access.

## Job Master tabs

The properties panel contains the following tabs. Select a tab to view or edit that aspect of the selected job.

![Job Master tab bar](../../../Resources/Images/EM/EMjobmastertabs.png "Job Master tab bar")

| Tab | Purpose |
|---|---|
| **Job Details** | Defines the core job properties: job type, department, access code, machine assignment, and platform-specific run details |
| **Instance Definition** | Configures named instance properties for multi-instance jobs |
| **Frequency** | Sets the rules that determine when the job is eligible to run |
| **Events** | Defines OpCon events that fire based on job status changes |
| **Threshold/Resource Update** | Configures threshold and resource value updates that the job triggers at runtime |
| **Dependencies** | Specifies job and threshold/resource dependencies that must be satisfied before the job runs |
| **Documentation** | Stores free-text documentation for the job and for individual frequencies |
| **Tags** | Assigns tags to the job for grouping and filtering in views |
| **Notification Triggers** | Configures notifications sent when the job reaches specific statuses |

## Job Master toolbar

The **Job Master** toolbar provides actions for managing jobs.

![Job Master toolbar](../../../Resources/Images/EM/EMjobmastertoolbar.png "Job Master toolbar")

| Button | Description |
|---|---|
| **Add** | Creates a new job definition in the selected schedule |
| **Edit** | Puts the selected job into edit mode |
| **Save** | Saves changes to the current job definition |
| **Cancel** | Discards unsaved changes |
| **Delete** | Removes the selected job definition |
| **View Audit** | Opens the audit history for the selected job |
| **View Job History** | Opens run history for the selected job |
| **Copy** | Copies the selected job to another schedule or as a new job in the same schedule |
| **Move** | Moves the selected job to a different schedule |
| **Edit Master Schedule** | Opens the Schedule Master editor for the schedule that contains the selected job |
| **Reset Job Type** | Clears the job type assignment and all platform-specific settings, returning the job to a null-type state (available only when a job type is set) |

## Related topics

- [Adding Jobs](Adding-Jobs.md)
- [Copying Jobs](Copying-Jobs.md)
- [Moving Jobs](Moving-Jobs.md)
- [Deleting Jobs](Deleting-Jobs.md)
- [Viewing Additional Job Information](Viewing-Additional-Schedule-Info.md)
