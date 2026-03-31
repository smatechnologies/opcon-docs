---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Calendars
description: "Use this procedure to edit Calendars in Solution Manager."
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

# Editing Calendars

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Calendars in Solution Manager.

To edit a calendar, complete the following steps:

1. Select the **Edit** button. The **Calendar** dialog displays
2. Make the desired changes. To remove all dates, select **Clear**
3. Select **Save** to save changes or **Cancel** to discard

## When Would You Use It?

- An existing Calendars in Solution Manager requires changes
- A change in process, system, or business requirement makes the current Calendars definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating Calendars in Solution Manager ensures changes apply to future builds without disrupting currently running schedules
- Changes to Calendars are recorded in the OpCon audit log, providing a complete modification history

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Do edits to calendars take effect immediately?**

Changes saved to calendars in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
