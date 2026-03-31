---
title: Viewing and Updating Resource Updates
description: "The Resource Update panel in Master Job Definition displays resource updates for the job."
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

# Viewing and Updating Resource Updates

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Resource Update** panel in **Master Job Definition** displays resource updates for the job.

- Select the full-screen icon (![Full Screen Panel Icon](../../../../../../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon")) on the far-right of the panel bar to enter or exit **Full Screen** mode
- A blue circular indicator (![Job Properties Indicator](../../../../../../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator")) appears to the right of the panel name showing the count of defined properties

## When Would You Use It?

- You need to inspect or audit and Updating Resource Updates records in Solution Manager
- An audit, compliance review, or operational check requires inspection of current and Updating Resource Updates state

## Why Would You Use It?

- **Improve operational visibility**: Inspecting and Updating Resource Updates records in Solution Manager supports informed decision-making and provides an audit trail for compliance reviews
- Information in Solution Manager reflects the live database state, ensuring that the data reviewed is current at the time of inspection

## Adding or Updating Resource Updates

In **Admin** mode, resource updates can be updated. For conceptual information, refer to [Threshold/Resource Updates](../../../../../../job-components/threshold-resource-updates.md) in the **Concepts** online help.

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.

:::

To perform this procedure, complete the following steps:

1. See [Accessing Master Jobs](Accessing-Master-Jobs.md) to Go to the master job definition page
2. Expand the **Resource Update** panel to expose its content
3. Enter changes to existing **Resource Updates** and/or add new ones with the green plus icon button
4. Fill out the resource update dialog form
5. Select the **Save** button on the dialog
6. Select the **Save** button on the Master Job Definition page

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: How many steps does the Viewing and Updating Resource Updates procedure involve?**

The Viewing and Updating Resource Updates procedure involves 6 steps. Complete all steps in order and save your changes.

**Q: What does Viewing and Updating Resource Updates cover?**

This page covers Adding or Updating Resource Updates.

## Glossary

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
