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

Properties store named values in the OpCon database. Jobs and events reference those values using token syntax (`[[PropertyName]]`). OpCon resolves the token to the stored value when submitting a job or processing an event.

OpCon supports four property scopes:

- **OpCon Instance (Global)** — available across all schedules and jobs
- **Machine Instance** — scoped to a specific Agent
- **Schedule Instance** — scoped to a specific Schedule build
- **Job Instance** — scoped to a specific Job in the daily schedule

## Field Reference

### Name

The property name used in token references.

| Scope | Requirement |
|---|---|
| Global (OpCon Instance) | Must not exceed 64 characters and must be unique across all global properties |
| Machine, Schedule, and Job Instance | No length restriction; should be unique per instance |

:::note
If duplicate property names exist for Machine, Schedule, or Job Instance properties, OpCon resolves tokens to the value of the first matching property found.
:::

**Restricted characters** — avoid these characters in property names because they cause problems with event processing and token resolution:

| Character | Symbol |
|---|---|
| Single quote | `'` |
| Double quote | `"` |
| Parentheses | `( )` |
| Backslash | `\` |
| Comma | `,` |
| Equals | `=` |
| Semicolon | `;` |
| Pipe | `\|` |

Additional naming rules:

- Do not use a leading `$` — this prefix is reserved for System Properties.
- The `@` symbol cannot be the first or last character and cannot appear consecutively more than once.
- If the database uses binary sort order, property names are case-sensitive.

### Documentation

A free-text field for descriptions and notes. Available for Global Properties only.

### Encrypted

When selected, OpCon encrypts the property value before saving it. Once saved, the value cannot be decrypted within OpCon. Encrypted tokens can only be decrypted by an Agent that receives the value in a job command line.

:::note
After you save a property with **Encrypted** selected, you cannot change it back to unencrypted.
:::

### Value

The value that OpCon substitutes when resolving the token.

- Must not exceed 4000 characters.
- [Property Expressions](../reference/property-expressions-syntax.md) are supported.
- Leading and trailing spaces are removed automatically.
- Do not enclose the value in quotation marks — quotes are treated as part of the value.
- Avoid `,` (comma), `=` (equals), `;` (semicolon), and `\|` (pipe) — these characters cause problems with event processing and token resolution.

:::tip Handling commas in values
Commas are event delimiters. To pass a value that contains a comma as a job parameter, split the value across multiple properties and place the comma in the job definition itself.

**Scenario**: Pass two parameters where the second contains a comma — `DAILY` and `TEST,JOB`.

**Incorrect** — comma inside an event parameter:

```
Job Details tokens: [[JI.PARAM1]],[[JI.PARAM2]]
Event: $JOB:ADD,$DATE,SCHEDULE,JOB,FREQCODE,PARAM1=DAILY;PARAM2=TEST,JOB
```

Result: OpCon treats the comma as an event delimiter and resolves incorrectly.

**Correct** — split the value across three properties:

```
Job Details tokens: [[JI.PARAM1]],[[JI.PARAM2]],[[JI.PARAM3]]
Event: $JOB:ADD,$DATE,SCHEDULE,JOB,FREQCODE,PARAM1=DAILY;PARAM2=TEST;PARAM3=JOB
```

Result: Tokens resolve to `DAILY,TEST,JOB`.
:::

## Methods for Defining Properties

:::note
Property names and values cannot begin or end with a space.
:::

From some locations, you can define multiple properties at once using the following syntax:

```
PropertyName1=value;PropertyName2=value...
```

### Enterprise Manager

To define properties in Enterprise Manager, use the locations below:

- **Global Properties** — Go to [Properties](./properties.md). See [Managing Global Properties](../Files/UI/Enterprise-Manager/Managing-Global-Properties.md).
- **Schedule Instance Properties** — Use the [Schedule Instance Definition](../Files/UI/Enterprise-Manager/Schedule-Instance-Definition.md) frame.
- **Job Instance Properties** — Use the [Job Instance Definition](../Files/UI/Enterprise-Manager/Job-Instance-Definition.md) frame.
- **Schedule Build** — Define Schedule Instance properties when building a schedule. OpCon automatically associates them with the schedule. See [Managing Schedules](../Files/UI/Enterprise-Manager/Managing-Schedules.md).
- **Daily Maintenance** — Define Job Instance properties when adding a job. OpCon automatically associates them with the job. See [Adding Jobs from Job Master to Daily Schedule](../Files/UI/Enterprise-Manager/Adding-Jobs-from-Job-Master-to-Daily-Schedule.md).

### OpCon Events

The following events maintain user-defined properties for any scope (OpCon Instance, Machine Instance, Schedule Instance, Job Instance):

- [`$PROPERTY:ADD`, `$PROPERTY:SET`, and `$PROPERTY:DELETE`](../events/types.md#property) — add, update, or remove a property.
- [`$SCHEDULE:BUILD`](../events/types.md#$SCHEDULE:BUILD,%3Cschedule_date%3E,_%3Cschedule_name%3E,%3Clog_file_name%3E,_%3Coverwrite_flag%3E,_%5BSchedule_Instance_Property_Definitions%5D) — includes an optional parameter for Schedule Instance properties. OpCon automatically associates them with the schedule, which builds in a released state.
- [`$JOB:ADD`](../events/types.md#$JOB:ADD) — includes an optional parameter for Job Instance properties. OpCon automatically associates them with the added job.

### SMADDI

SMADDI (SMA Dynamic Data Input) provides XML-based messages to update the OpCon database programmatically:

- `new_token` — adds a new OpCon Instance property value to the master tables.
- `update_token` — updates an existing OpCon Instance property value in the master tables.

See [new_token and update_token Element Structures](../utilities/SMA-Dynamic-Data-Input/Data-Input-Message-Elements.md#new_token_and_update_token_Element_Structures).

## Required Privilege

To create, update, or delete global properties via the REST API, a user role must have the **Maintain Global Properties** function privilege.
