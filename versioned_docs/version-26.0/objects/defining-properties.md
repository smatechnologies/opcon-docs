---
title: Defining Properties
description: "Use this procedure to define Properties in OpCon."
product_area: Core Concepts
audience: Automation Engineer, Application Owner
version_introduced: "[see release notes]"
tags:
  - Procedural
  - Automation Engineer
  - Application Owner
  - Getting Started
last_updated: 2026-03-18
doc_type: procedural
---

# Defining Properties

**Theme:** Configure  
**Who Is It For?** Automation Engineer, Application Owner

## What Is It?

Use this procedure to define Properties in OpCon.

- **Name**: The property name
  - For Global Properties (OI properties): must not exceed 64 characters and must be unique
  - For Machine, Schedule, and Job Instance properties: no length restriction; should be unique per instance
    :::note
    If duplicate property names exist for Machine, Schedule, or Job Instance properties, OpCon resolves tokens to the value of the first matching property found.
    :::
  - Avoid these characters in names (they cause problems with event processing and token resolution): ' (single quote), " (double quote), ( ) (parentheses), \\ (backslash), , (comma), = (equals), ; (semi-colon), \| (pipe)
    - Do not use a leading $ — reserved for System Properties
    - The @ symbol cannot be the first or last character, and cannot appear consecutively more than once
  - If the database uses binary sort order, property names are case-sensitive
- **Documentation**: For Global Properties (OI properties), an area for descriptions and notes
- **Encrypted**: Encrypts the value. Once saved, the value cannot be decrypted
- **Value**: The property value. OpCon resolves tokens referencing this property to this value when submitting jobs or processing events
  - The value must be usable by the job or event at processing time
  - [Property Expressions](../reference/property-expressions-syntax.md) are supported
  - Avoid: , (comma), = (equals), ; (semi-colon), \| (pipe) — these cause problems with event processing and token resolution
  - Do **not** enclose in quotes; quotes will be treated as part of the value
  - Must not exceed 4000 characters
  - Leading and trailing spaces are removed

:::tip Example
To pass a value containing a comma (,) as a job parameter via an OpCon event, split the value across multiple properties and place the comma in the job definition.

**Scenario**: Parameter 1 = `DAILY`, Parameter 2 = `TEST,JOB`

**Incorrect approach** — using a comma inside an event parameter:

    Job Details tokens: [[JI.PARAM1]],[[JI.PARAM2]]
    Event: $JOB:ADD,$DATE,SCHEDULE,JOB,FREQCODE,PARAM1=DAILY;PARAM2=TEST,JOB

**Result**: Fails — OpCon treats the comma as an event delimiter, resolving to `DAILY,TEST` instead of `DAILY,TEST,JOB`.

**Correct approach** — splitting the value into three properties:

    Job Details tokens: [[JI.PARAM1]],[[JI.PARAM2]],[[JI.PARAM3]]
    Event: $JOB:ADD,$DATE,SCHEDULE,JOB,FREQCODE,PARAM1=DAILY;PARAM2=TEST;PARAM3=JOB

**Result**: Tokens resolve to `DAILY,TEST,JOB`
:::

## Methods for Defining Properties

:::note
Properties and values may not begin or end with a space.
:::

From some locations, multiple properties can be defined at once using this syntax:

```shell
PropertyName1=value;PropertyName2=value...
```

### Enterprise Manager

- OI properties are maintained in [Properties](./properties.md). Refer to [Managing Global Properties](../Files/UI/Enterprise-Manager/Managing-Global-Properties.md)
- Define Schedule Instance Properties from the [Schedule Instance Definition](../Files/UI/Enterprise-Manager/Schedule-Instance-Definition.md) frame
- Define Job Instance Properties from the [Job Instance Definition](../Files/UI/Enterprise-Manager/Job-Instance-Definition.md) frame
- From Schedule Build, define Schedule Instance properties when building a schedule; they are automatically associated with the schedule. Refer to [Managing Schedules](../Files/UI/Enterprise-Manager/Managing-Schedules.md)
- From Daily Maintenance, define Job Instance properties when adding a job; they are automatically associated with the job. Refer to [Adding Jobs from Job Master to Daily Schedule](../Files/UI/Enterprise-Manager/Adding-Jobs-from-Job-Master-to-Daily-Schedule.md)

### OpCon Events

- [Property-Related Events](../events/types.md#property) ($PROPERTY:ADD, SET, and DELETE) maintain user-defined properties for any object type (OpCon Instance, Machine Instance, Schedule Instance, Job Instance)
- [$SCHEDULE:BUILD](../events/types.md#$SCHEDULE:BUILD,%3Cschedule_date%3E,_%3Cschedule_name%3E,%3Clog_file_name%3E,_%3Coverwrite_flag%3E,_%5BSchedule_Instance_Property_Definitions%5D) includes an optional parameter for Schedule Instance properties; they are automatically associated with the schedule, which builds in a released state
- [$JOB:ADD](../events/types.md#$JOB:ADD) includes an optional parameter for Job Instance properties; they are automatically associated with the job added to the daily schedule

### SMADDI

- The `new_token` message type adds a new OpCon Instance user property value to the Master tables. Refer to [new_token and update_token Element Structures](../utilities/SMA-Dynamic-Data-Input/Data-Input-Message-Elements.md#new_token_and_update_token_Element_Structures)
- The `update_token` message type updates an existing OpCon Instance user property value in the Master tables. Refer to [new_token and update_token Element Structures](../utilities/SMA-Dynamic-Data-Input/Data-Input-Message-Elements.md#new_token_and_update_token_Element_Structures)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Name | The property name | — | must be unique.   - For Machine, Schedule, and Job Instance properties: no length restri |
| Documentation | For Global Properties (OI properties), an area for descriptions and notes | — | must be usable by the job or event at processing time.   - [Property Expressions](../ref |
| Encrypted | Encrypts the value. | — | must be usable by the job or event at processing time.   - [Property Expressions](../ref |
| Value | The property value. | — | must be usable by the job or event at processing time.   - [Property Expressions](../ref |
| Scenario | Parameter 1 = `DAILY`, Parameter 2 = `TEST,JOB` | — | — |
| Incorrect approach | using a comma inside an event parameter: | — | — |
| Result | Fails — OpCon treats the comma as an event delimiter, resolving to `DAILY,TEST` instead of `DAILY,TEST,JOB` | — | — |
| Correct approach | splitting the value into three properties: | — | — |
## FAQs

**Q: What characters should be avoided in property names?**

Avoid single quotes, double quotes, parentheses, backslash, comma, equals, semicolon, and pipe characters. Do not use a leading `$` (reserved for system properties). The `@` symbol cannot be the first or last character and cannot appear consecutively more than once.

**Q: Can an encrypted property value be decrypted later?**

No. Once a property is saved with the **Encrypted** option, the value cannot be decrypted within OpCon. Encrypted tokens can only be decrypted by an agent receiving the value in a job command line.

**Q: How can multiple properties be defined at once using events or SMADDI?**

Use the syntax `PropertyName1=value;PropertyName2=value...` to define multiple properties in a single operation. This is supported from events and SMADDI message types that accept property definitions.

## Glossary

**SMADDI (SMA Dynamic Data Input)**: An optional OpCon component that dynamically updates the OpCon database using XML text files placed in monitored input directories. SMADDI uses a Windows service and stored procedures to validate and commit the data.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Master Tables**: The OpCon database tables that hold the permanent definitions of schedules and jobs. Changes to master tables affect all future schedule builds.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
