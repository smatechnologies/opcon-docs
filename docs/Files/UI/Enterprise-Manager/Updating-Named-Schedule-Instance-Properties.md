---
title: Updating Named Schedule Instance Properties
description: "Use this procedure to update Named Schedule Instance Properties in the Enterprise Manager."
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

# Updating Named Schedule Instance Properties

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to update Named Schedule Instance Properties in the Enterprise Manager.

To update a property, complete the following steps:

1. Select on **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays
2. Select the **schedule** in the **Schedule Selection** list
3. Select the **Instance Definition** tab in the **Schedule Details** frame
4. Select the **instance name** that has the property to update
5. Select the **property** to update
6. Edit the *property name* in the **Property Name** field
7. Edit the *property value* in the **Property Value** field
8. Select the **Update** button
9. Repeat Steps 5 - 8 to edit additional properties for the selected instance name
10. Select ![Green circle with white checkmark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar
11. Select **Close ☒** (to the right of the **Schedule Master** tab) to close the **Schedule Master** screen

## When Would You Use It?

- An existing Named Schedule Instance Properties in Enterprise Manager requires changes
- A process change or system update makes the current Named Schedule Instance Properties definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating Named Schedule Instance Properties in Enterprise Manager ensures changes apply to future builds without disrupting currently running schedules

## FAQs

**Q: How many steps does the Updating Named Schedule Instance Properties procedure involve?**

The Updating Named Schedule Instance Properties procedure involves 11 steps. Complete all steps in order and save your changes.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
