---
title: Managing Vision Settings
description: "Vision Settings allows you to create, edit, and delete cards and view the hierarchy of existing cards."
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

# Managing Vision Settings

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Vision Settings allows you to create, edit, and delete cards and view the hierarchy of existing cards.

The following fields apply:

**Parent Card**: Select the parent card for the tag. Group and tag cards can be defined at the root (/) level.

**Type**: Define the card as a group card or a tag card.

- **Group**: Creates a parent card at the root level or as the child of an existing group
- **Tag**: Creates a card for a tag (pattern) defined in the Enterprise Manager, at the root level or as a child of an existing group

**Name**: Define the card name.

**Instance**: Select a remote instance the card will monitor. Refer to [Managing Vision Remote Instances](Managing-Vision-Remote-Instances.md) for more information.

**Pattern**: Select which tag defined in the Enterprise Manager the card will monitor.

**Job Offset**: Specify an offset on the schedule date for Vision to look for jobs. Options range from **-5 Frequency Days** through **+5 Frequency Days**, including **Previous Frequency Day**, **Current Frequency Day**, and **Next Frequency Day**.

**Roles**: Assign roles to the tag.

- **All granted**: Select whether all roles are granted
- **Revoked**: Define which roles have revoked privileges
- **Granted**: Define which roles have granted privileges

**Thresholds**: Define the numerical range for QoS or SLA success rates.

- **QoS**: Measures how often jobs complete successfully. Set **Critical** and **Tolerable** threshold values
- **SLA**: Measures how often jobs complete within defined SLAs. Set **Critical** and **Tolerable** threshold values

**Frequency(ies)**: Select an existing frequency or define a new one. Refer to [Managing Vision Frequencies](Managing-Vision-Frequencies.md) for more information.

:::note
This field is optional for Group cards.
:::

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Creating Cards](Creating-Cards.md)
- [Editing Cards](Editing-Cards.md)
- [Deleting Cards](Deleting-Cards.md)

## When Would You Use It?

- You need to review or update Vision Settings settings in Solution Manager
- Vision Settings needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Vision Settings management in Solution Manager reduces the time needed to locate and update settings across the environment
- All Vision Settings changes are captured in the OpCon audit system, supporting change management and compliance processes

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Parent Card | Select the parent card for the tag. | — | — |
| Type | Define the card as a group card or a tag card | — | — |
| Group | Creates a parent card at the root level or as the child of an existing group | — | — |
| Tag | Creates a card for a tag (pattern) defined in the Enterprise Manager, at the root level or as a child of an existing group | — | — |
| Name | Define the card name | — | — |
| Instance | Select a remote instance the card will monitor. | — | — |
| Pattern | Select which tag defined in the Enterprise Manager the card will monitor | — | — |
| Job Offset | Specify an offset on the schedule date for Vision to look for jobs. | — | — |
| Roles | Assign roles to the tag | — | — |
| All granted | Select whether all roles are granted | — | — |
| Revoked | Define which roles have revoked privileges | — | — |
| Granted | Define which roles have granted privileges | — | — |
| Thresholds | Define the numerical range for QoS or SLA success rates | — | — |
| QoS | Measures how often jobs complete successfully. | — | — |
| SLA | Measures how often jobs complete within defined SLAs. | — | — |
| Frequency(ies) | Select an existing frequency or define a new one. | — | — |

## FAQs

**Q: What does managing vision settings involve?**

Managing vision settings includes adding, editing, and deleting records. Access vision settings through the Enterprise Manager navigation pane.

**Q: Who can manage vision settings in OpCon?**

Users with the appropriate privileges assigned through their role can manage vision settings. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
