---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Calendars
description: "Learn how to deleting calendars in OpCon."
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

# Deleting Calendars

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

:::note
Continuous recommends deleting user-defined calendars that are no longer in use to control database table size. Holiday calendars are automatically deleted when the associated schedule is deleted.
:::

Calendars can only be deleted if not in use. To verify if a calendar is in use, select the calendar and select the **Edit** button, then select the **CALENDAR ASSOCIATIONS** tab to see the schedules, jobs, and frequencies using it.

To delete calendar(s), complete the following steps:

1. Select the calendar(s) to delete from the list
2. Select **Yes** to confirm deletion or **No** to cancel

## When Would You Use It?

- An existing Calendars in Solution Manager is no longer needed
- The Calendars has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Calendars definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Can a calendars record be recovered after deletion?**

No. Deleting a calendars record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: What should you check before deleting calendars?**

Verify the calendars is not currently in use or assigned to other records before deleting it, as deletion may affect dependent objects.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
