---
title: Updating Schedule Instance Properties
description: "Use this procedure to update Schedule Instance Properties in the Enterprise Manager."
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

# Updating Schedule Instance Properties

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to update Schedule Instance Properties in the Enterprise Manager.

To update a property, complete the following steps:

1. Select on **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays
2. Select the **schedule** in the **Schedule Selection** list
3. Select the **Instance Definition** tab in the **Schedule Details** frame
4. Select the **property** to update
5. Edit the property string using the format **PropertyName=PropertyValue**. Separate each definition with a semicolon (**;**)
6. Select the **Update** button
7. Repeat Steps 4 - 6 to edit additional properties in the **Instances** table
8. Select ![Green circle with white checkmark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar
9. Select **Close ☒** (to the right of the **Schedule Master** tab) to close the **Schedule Master** screen

## When Would You Use It?

- An existing Schedule Instance Properties in Enterprise Manager requires changes
- A process change or system update makes the current Schedule Instance Properties definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating Schedule Instance Properties in Enterprise Manager ensures changes apply to future builds without disrupting currently running schedules

## FAQs

**Q: How many steps does the Updating Schedule Instance Properties procedure involve?**

The Updating Schedule Instance Properties procedure involves 9 steps. Complete all steps in order and save your changes.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
