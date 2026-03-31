---
title: Editing Daily Schedule Instance Properties
description: "To edit Daily Schedule Instance Properties in the Enterprise Manager, complete the following steps: 1."
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

# Editing Daily Schedule Instance Properties

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

To edit Daily Schedule Instance Properties in the Enterprise Manager, complete the following steps:

1. Select on **Daily Maintenance** under the **Operation** topic
2. Select on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)
    **arrow** to expand the specific **date** for the schedule.
3. Select on the **schedule**
4. Select on the **Edit Daily** button in the **Maintenance** frame
5. Select on the **Instance Definition** tab
6. Select the **property name** in the **Available Properties** table
7. Make the changes to the *property definition*
8. Select the **Update** button
9. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Schedule Daily** toolbar.

## When Would You Use It?

- An existing Daily Schedule Instance Properties in Enterprise Manager requires changes
- A change in process, system, or business requirement makes the current Daily Schedule Instance Properties definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating Daily Schedule Instance Properties in Enterprise Manager ensures changes apply to future builds without disrupting currently running schedules
- Changes to Daily Schedule Instance Properties are recorded in the OpCon audit log, providing a complete modification history


## FAQs

**Q: Do edits to daily schedule instance properties take effect immediately?**

Changes saved to daily schedule instance properties in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
