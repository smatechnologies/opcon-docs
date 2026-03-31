---
title: Viewing and Updating Job Dependencies
description: "The Job Dependency panel in Master Job Definition displays job dependencies for the job."
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

# Viewing and Updating Job Dependencies

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Job Dependency** panel in **Master Job Definition** displays job dependencies for the job.

- Select the full-screen icon (![Full Screen Panel Icon](../../../../../../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon")) on the far-right of the panel bar to enter or exit **Full Screen** mode
- A blue circular indicator (![Job Properties Indicator](../../../../../../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator")) appears to the right of the panel name showing the count of defined properties

## Adding or Updating Job Dependencies

In **Admin** mode, job dependencies can be updated. For conceptual information, refer to [Job Dependencies](../../../../../../job-components/job-dependencies.md) in the **Concepts** online help.

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.

:::

To perform this procedure, complete the following steps:

1. See [Accessing Master Jobs](Accessing-Master-Jobs.md) to Go to the master job definition page
2. Expand the **Job Dependency** panel to expose its content
3. Enter changes to existing **Job Dependencies** and/or add new ones with the green plus icon button
4. Fill out the job dependency dialog form
5. Select the **Save** button on the dialog
6. Select the **Save** button on the Master Job Definition page


## FAQs

**Q: How many steps does the Viewing and Updating Job Dependencies procedure involve?**

The Viewing and Updating Job Dependencies procedure involves 6 steps. Complete all steps in order and save your changes.

**Q: What does Viewing and Updating Job Dependencies cover?**

This page covers Adding or Updating Job Dependencies.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
