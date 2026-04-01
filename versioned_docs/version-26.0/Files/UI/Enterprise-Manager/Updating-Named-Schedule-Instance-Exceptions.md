---
title: Updating Named Schedule Instance Exceptions
description: "Use this procedure to update Named Schedule Instance Exceptions in the Enterprise Manager."
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

# Updating Named Schedule Instance Exceptions

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to update Named Schedule Instance Exceptions in the Enterprise Manager.

## Updating Job Patterns

To update a job pattern, complete the following steps:

1. Select on **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays
2. Select the **schedule** in the **Schedule Selection** list
3. Select the **Instance Definition** tab in the **Schedule Details** frame
4. Select the **instance name** associated with the job pattern to update
5. Select the **job pattern** to update
6. Select the **Edit** button. The **Edit Job Pattern** dialog displays
7. Edit the *job pattern* in the field
8. Select **OK** to save, or **Cancel** to discard
9. Repeat Steps 5 - 8 to edit additional job patterns for the selected instance name
10. Select ![Green circle with white checkmark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar
11. Select **Close ☒** (to the right of the **Schedule Master** tab) to close the **Schedule Master** screen

## Updating Exception Rules

To update an exception rule, complete the following steps:

1. Select on **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays
2. Select the **schedule** in the **Schedule Selection** list
3. Select the **Instance Definition** tab in the **Schedule Details** frame
4. Select the **instance name** associated with the job pattern to update
5. Select the **job pattern** associated with the exception rule to update
6. Select the **exception rule** to update
7. Select the **Edit** button. The **Edit Exception Rule** dialog displays
8. Make the necessary updates in the dialog
9. Select **OK** to save, or **Cancel** to discard
10. Repeat Steps 6 - 9 to edit additional exception rules for the job pattern
11. Select ![Green circle with white checkmark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar
12. Select **Close ☒** (to the right of the **Schedule Master** tab) to close the **Schedule Master** screen


## FAQs

**Q: How many steps does the Updating Named Schedule Instance Exceptions procedure involve?**

The Updating Named Schedule Instance Exceptions procedure involves 23 steps. Complete all steps in order and save your changes.

**Q: What does Updating Named Schedule Instance Exceptions cover?**

This page covers Updating Job Patterns, Updating Exception Rules.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
