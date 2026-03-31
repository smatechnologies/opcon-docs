---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Frequency Definitions
description: "Use this procedure to edit Frequency Definitions in the Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

#  Editing Frequency Definitions

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Frequency Definitions in the Enterprise Manager.

To edit a frequency definition, complete the following steps:

1.  Select on **Frequency Manager** under the **Management** topic
2.  Type the *frequency name* in the **Type Filter** text box or select
    the **frequency name**.
3.  Select the **Edit a frequency definition** button on the **Frequency
    Manager** toolbar.
4.  Edit the *frequency definition* information
5.  Select the **Finish** button
6.  Select **Close ☒** (to the right of the **Frequency Manager** tab) to
    close the **Frequency Manager** screen.

## When Would You Use It?

- An existing Frequency Definitions in Enterprise Manager requires changes
- A change in process, system, or business requirement makes the current Frequency Definitions definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating Frequency Definitions in Enterprise Manager ensures changes apply to future builds without disrupting currently running schedules
- Changes to Frequency Definitions are recorded in the OpCon audit log, providing a complete modification history


## FAQs

**Q: Do edits to frequency definitions take effect immediately?**

Changes saved to frequency definitions in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
