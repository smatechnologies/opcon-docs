---
title: SMADDI Message Types
description: "Each input file must contain a <msgtype> element describing the type of SMADDI message."
product_area: Utilities
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - System Configuration
last_updated: 2026-03-18
doc_type: conceptual
---

# SMADDI Message Types

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Each input file must contain a `<msgtype>` element describing the type of SMADDI message. The SMADDI service and stored procedures support the following message types:

|Message Type|Description|
|--- |--- |
|add_caldate|Adds new date(s) to an OpCon calendar. For more information, refer to [add_caldate and del_caldate Element Structures](./Data-Input-Message-Elements.md#add_caldate-and-del_caldate-element-structures).|
|del_caldate|Deletes date(s) from an OpCon calendar. For more information, refer to [add_caldate and del_caldate Element Structures](./Data-Input-Message-Elements.md#add_caldate-and-del_caldate-element-structures).|
|new_schedule|Adds a new schedule to the Master tables of the OpCon database. For more information, refer to [new_schedule Element Structure](./Data-Input-Message-Elements.md#new_schedule-element-structure).|
|new_token|Adds a new global property to the Master tables of the OpCon database. For more information, refer to [new_token and update_token Element Structures](./Data-Input-Message-Elements.md#new_token-and-update_token-element-structures).|
|new_variable|Adds a new threshold or resource to the Master tables of the OpCon database. For more information, refer to [new_variable and update_variable Element Structures](./Data-Input-Message-Elements.md#new_variable-and-update_variable-element-structures).|
|update_token|Updates a global property value in the Master tables of the OpCon database. For more information, refer to [new_token and update_token Element Structures](./Data-Input-Message-Elements.md#new_token-and-update_token-element-structures).|
|update_variable|Updates a threshold/resource in the Master tables of the OpCon database. For more information, refer to [new_variable and update_variable Element Structures](./Data-Input-Message-Elements.md#new_variable-and-update_variable-element-structures).|
|new_daily|Adds a new job to the Daily Tables of the OpCon database. For more information, refer to [new_daily Element Structure](./Data-Input-Message-Elements.md#new_daily-element-structure).|
|new_master|Adds a new job to the Master tables of the OpCon database. For more information, refer to [new_master Element Structure](./Data-Input-Message-Elements.md#new_master-element-structure).|
|add_frequency|Adds one or more frequencies to a schedule or job. For more information, refer to [add_frequency Element Structure](./Data-Input-Message-Elements.md#add_frequency-element-structure).|
|add_dependency|Adds a new job, threshold, or resource dependency to a job. If a schedule date is specified, the dependency applies to the daily tables. If no schedule date is specified, the dependency applies to the master and can be associated with a frequency. For more information, refer to [add_dependency Element Structure](./Data-Input-Message-Elements.md#add_dependency-element-structure).|
|add_documentation|Adds documentation for a schedule or job. For more information, refer to [add_documentation Element Structure](./Data-Input-Message-Elements.md#add_documentation-element-structure).|

## When Would You Use It?

- Each input file must contain a `<msgtype>` element describing the type of SMADDI message

## Why Would You Use It?

- **SMADDI Message**: Each input file must contain a `<msgtype>` element describing the type of SMADDI message

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What is the purpose of the `<msgtype>` element in a SMADDI input file?**

The `<msgtype>` element identifies the type of SMADDI message in each `<msg>` transaction. The SMADDI service and stored procedures use it to determine which data elements are expected and which database tables to update.

**Q: What is the difference between new_master and new_daily message types?**

`new_master` adds a new job to the Master tables of the OpCon database, making it a permanent part of the schedule definition. `new_daily` adds a new job to the Daily Tables, meaning it applies only to a specific schedule date's automation.

**Q: How do you update an existing global property value using SMADDI?**

Use the `update_token` message type to update a global property value in the Master tables. To add a new global property, use `new_token` instead.

## Glossary

**SMADDI (SMA Dynamic Data Input)**: An optional OpCon component that dynamically updates the OpCon database using XML text files placed in monitored input directories. SMADDI uses a Windows service and stored procedures to validate and commit the data.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Master Tables**: The OpCon database tables that hold the permanent definitions of schedules and jobs. Changes to master tables affect all future schedule builds.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.
