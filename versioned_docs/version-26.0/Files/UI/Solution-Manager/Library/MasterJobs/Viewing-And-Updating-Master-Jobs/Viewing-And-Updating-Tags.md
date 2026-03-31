---
title: Viewing and Updating Tags
description: "The Tags panel in Master Job Definition displays tags relating to the job and its frequencies."
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

# Viewing and Updating Tags

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Tags** panel in **Master Job Definition** displays tags relating to the job and its frequencies.

- Select the icon (![Full Screen Panel Icon](../../../../../../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon")) at the far right of the panel bar to enter or exit **Full Screen** mode
- When the panel contains defined properties, a blue circular indicator (![Job Properties Indicator](../../../../../../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator")) appears to the right of the panel name showing the count

## When Would You Use It?

- You need to inspect or audit and Updating Tags records in Solution Manager
- An audit, compliance review, or operational check requires inspection of current and Updating Tags state

## Why Would You Use It?

- **Improve operational visibility**: Inspecting and Updating Tags records in Solution Manager supports informed decision-making and provides an audit trail for compliance reviews
- Information in Solution Manager reflects the live database state, ensuring that the data reviewed is current at the time of inspection

## Adding or Updating Tags

To add or Updating Tags, complete the following steps:

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.
:::

1. See [Accessing Master Jobs](Accessing-Master-Jobs.md) to Go to the master job definition page
2. Expand the **Tags** panel
3. Enter the changes to the **Job** and/or **Frequency** frames
4. Select the **Save** button


## FAQs

**Q: How many steps does the Viewing and Updating Tags procedure involve?**

The Viewing and Updating Tags procedure involves 4 steps. Complete all steps in order and save your changes.

**Q: What does Viewing and Updating Tags cover?**

This page covers Adding or Updating Tags.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
