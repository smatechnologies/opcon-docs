---
title: Changing Focus of Days in Calendars
description: "Use this procedure to change Focus of Days in Calendars in the Enterprise Manager."
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

# Changing Focus of Days in Calendars

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to change Focus of Days in Calendars in the Enterprise Manager.

To change the focus of a day, complete the following steps:

1. Select on **Matrix** under the **Operation** topic
2. Use the navigation buttons to change focus:
   - **First** — moves focus to the first day in the Daily tables
   - **Today** — moves focus to the current date
   - **Last** — moves focus to the last day with schedules in the Daily tables
3. Select a **date** with a green background
4. Select the **schedule** to view its information in the Daily tables

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Changing Focus of Days in Calendars procedure involve?**

The Changing Focus of Days in Calendars procedure involves 4 steps. Complete all steps in order and save your changes.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
