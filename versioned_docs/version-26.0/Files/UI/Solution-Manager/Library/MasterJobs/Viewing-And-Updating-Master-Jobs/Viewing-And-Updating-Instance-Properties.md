---
title: Viewing and Updating Instance Properties
description: "The Instance Properties panel in Master Job Definition displays instance properties for the job."
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

# Viewing and Updating Instance Properties

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Instance Properties** panel in **Master Job Definition** displays instance properties for the job.

- Select the full-screen icon (![Full Screen Panel Icon](../../../../../../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon")) on the far-right of the panel bar to enter or exit **Full Screen** mode
- A blue circular indicator (![Job Properties Indicator](../../../../../../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator")) appears to the right of the panel name showing the count of defined properties

## Adding or Updating Instance Properties

In **Admin** mode, instance properties can be updated.

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.

:::

To perform this procedure, complete the following steps:

1. See [Accessing Master Jobs](Accessing-Master-Jobs.md) to Go to the master job definition page
2. Expand the **Instance Properties** panel to expose its content
3. Enter changes to existing **Instance Properties** and/or add new ones with the green plus icon button
4. Fill out the **Name** and **Value** columns
5. Select the **Save** button


## FAQs

**Q: How many steps does the Viewing and Updating Instance Properties procedure involve?**

The Viewing and Updating Instance Properties procedure involves 5 steps. Complete all steps in order and save your changes.

**Q: What does Viewing and Updating Instance Properties cover?**

This page covers Adding or Updating Instance Properties.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
