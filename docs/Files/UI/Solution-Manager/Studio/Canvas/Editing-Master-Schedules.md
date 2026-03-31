---
title: Editing Master Schedules
description: "Use this procedure to edit Master Schedules in Solution Manager."
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

# Editing Master Schedules

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Master Schedules in Solution Manager.

## When Would You Use It?

- An existing Master Schedules in Solution Manager requires changes
- A change in process, system, or business requirement makes the current Master Schedules definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating Master Schedules in Solution Manager ensures changes apply to future builds without disrupting currently running schedules
- Changes to Master Schedules are recorded in the OpCon audit log, providing a complete modification history

## Administration

### Required Privileges

n/a

## Editing a Schedule

To edit a Master Schedule, go to **Studio**.

Select a schedule and select **Edit**. The Create Master Schedule page opens with form values populated from the selected schedule.

Make edits as needed, then select **Save** to save changes or **Back** to cancel.


## FAQs

**Q: Do edits to master schedules take effect immediately?**

Changes saved to master schedules in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
