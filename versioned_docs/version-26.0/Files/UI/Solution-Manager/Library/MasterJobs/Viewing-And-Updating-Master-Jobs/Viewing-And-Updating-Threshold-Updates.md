---
title: Viewing and Updating Threshold Updates
description: "The Threshold Update panel in Master Job Definition displays the Threshold Updates relating to the job."
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

# Viewing and Updating Threshold Updates

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Threshold Update** panel in **Master Job Definition** displays the Threshold Updates relating to the job.

- Select the icon (![Full Screen Panel Icon](../../../../../../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon")) at the far right of the panel bar to enter or exit **Full Screen** mode
- When the panel contains defined properties, a blue circular indicator (![Job Properties Indicator](../../../../../../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator")) appears to the right of the panel name showing the count

## Adding or Updating Threshold Updates

To add or Updating Threshold Updates, complete the following steps:

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.
:::

1. See [Accessing Master Jobs](Accessing-Master-Jobs.md) to Go to the master job definition page
2. Expand the **Threshold Update** panel
3. Update existing **Threshold Updates** and/or add new ones using the green plus button
4. Fill out the threshold update dialog form
5. Select the **Save** button on the dialog
6. Select the **Save** button on the Master Job Definition page


## FAQs

**Q: How many steps does the Viewing and Updating Threshold Updates procedure involve?**

The Viewing and Updating Threshold Updates procedure involves 6 steps. Complete all steps in order and save your changes.

**Q: What does Viewing and Updating Threshold Updates cover?**

This page covers Adding or Updating Threshold Updates.

## Glossary

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
