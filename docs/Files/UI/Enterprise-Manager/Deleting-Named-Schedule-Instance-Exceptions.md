---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Named Schedule Instance Exceptions
description: "Use this procedure to delete Named Schedule Instance Exceptions in the Enterprise Manager."
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

# Deleting Named Schedule Instance Exceptions

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Named Schedule Instance Exceptions in the Enterprise Manager.

## Delete Job Patterns

To delete a job pattern, complete the following steps:

1. Select on **Schedule Master** under the **Administration** topic
2. Select the **schedule** in the **Schedule Selection** list
3. Select the **Instance Definition** tab in the **Schedule Details** frame
4. Select the **instance name** associated with the job pattern to delete
5. Select the **job pattern** to delete
6. Select the **Remove** button
7. Select ![Green circle with white checkmark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar
8. Select **Close ☒** to close the **Schedule Master** screen

## Deleting Exception Rules

To delete an exception rule, complete the following steps:

1. Select on **Schedule Master** under the **Administration** topic
2. Select the **schedule** in the **Schedule Selection** list
3. Select the **Instance Definition** tab in the **Schedule Details** frame
4. Select the **instance name** associated with the exception rule to delete
5. Select the **job pattern** associated with the exception rule to delete
6. Select the **exception rule** to delete
7. Select the **Remove** button
8. Select ![Green circle with white checkmark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar
9. Select **Close ☒** to close the **Schedule Master** screen


## FAQs

**Q: Can a named schedule instance exceptions record be recovered after deletion?**

No. Deleting a named schedule instance exceptions record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: How many named schedule instance exceptions records can you delete at once?**

Select the specific named schedule instance exceptions record you want to delete, then select the **Delete** button on the toolbar. Confirm the deletion when prompted.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
