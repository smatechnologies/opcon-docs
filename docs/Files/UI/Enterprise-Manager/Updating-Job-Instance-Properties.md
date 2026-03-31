---
title: Updating Job Instance Properties
description: "Use this procedure to update Job Instance Properties in the Enterprise Manager."
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

# Updating Job Instance Properties

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to update Job Instance Properties in the Enterprise Manager.

To update a property, complete the following steps:

1. Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2. Select the **schedule** in the **Schedule** list
3. Select the **job** in the **Job** list
4. Select the **Instance Definition** tab in the **Job Properties** frame
5. Select the **property** to update
6. Edit the property string using the format **PropertyName=PropertyValue**. Separate each definition with a semicolon (**;**)
7. Select the **Update** button
8. Repeat Steps 5 - 7 to edit additional properties in the **Instances** table
9. Select ![Green circle with white checkmark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar
10. Select **Close ☒** (to the right of the **Job Master** tab) to close the **Job Master** screen

## When Would You Use It?

- An existing Job Instance Properties in Enterprise Manager requires changes
- A process change or system update makes the current Job Instance Properties definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating Job Instance Properties in Enterprise Manager ensures changes apply to future builds without disrupting currently running schedules


## FAQs

**Q: How many steps does the Updating Job Instance Properties procedure involve?**

The Updating Job Instance Properties procedure involves 10 steps. Complete all steps in order and save your changes.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
