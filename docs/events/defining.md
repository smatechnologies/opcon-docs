---
title: Defining Events
description: "Use this procedure to define Events in OpCon."
product_area: Events
audience: Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - Automation Engineer
  - Events
last_updated: 2026-03-18
doc_type: procedural
---

# Defining Events

**Theme:** Configure  
**Who Is It For?** Automation Engineer

## What Is It?

Use this procedure to define Events in OpCon.

## When Would You Use It?

- A new Events definition needs to be established in OpCon Events

## Why Would You Use It?

- **Establish reusable definitions**: Defining Events in OpCon creates a reusable reference that schedules, jobs, and events can share

## Internal Events

An internal event is any OpCon event entered in the database in association with a specific job or schedule.

## External Events

An external event is any OpCon event not entered in the database in association with a specific job or schedule. As of release 20.0, new users have the ability to submit external events disabled by default. An external event requires a valid OpCon User Login ID and event password. External events can be passed to the SAM by several methods:

- The SAM searches the MSGIN directory
- An agent passes an event to the SAM based on an event placed in a MSGIN directory on the agent machine
- An agent passes an event to the SAM with a specific command
- If property definitions are specified with an external event, the list of property definitions is followed by a comma, then the user name and external password

### Create an External Event

To create an External Event, complete the following steps:

1. Choose an OpCon event. For details, refer to [Event Types](./types.md)
2. Create an ASCII text file in MS Notepad and place the event on the first line using external event syntax. For details, refer to [External OpCon Events Basic Syntax](#External2)
3. Copy the text file to the MSGIN directory on the SAM machine. For details, refer to [MSGIN](#MSGIN)
4. Verify processing by reviewing the SAM.log from `<Output Directory>\SAM\Log\`. If the event did not process, review the Critical.log in the same directory for errors
5. If errors are found, correct the text file and repeat steps 3 and 4

**Result:** The external event is processed by the SAM and the corresponding OpCon action (such as building a schedule or updating a property) is executed.

### MSGIN

MSGIN is the directory the SAM monitors for external events, located at `<Configuration Directory>\SAM\MSGIN\` on the SAM machine. Any external program can generate an ASCII file to be placed in this directory. Files must contain a valid OpCon event, User Login ID, and event password for the SAM to process the event.

:::note
The Output Directory was configured during installation. For more information, refer to [File Locations](../file-locations.md) in the **Concepts** online help.
:::

### Security

Continuous recommends creating dedicated OpCon users for external events with very limited database privileges (e.g., only the Function Privilege to "Maintain Thresholds").

- A valid OpCon User Login ID and external event password are required
- The external event password is stored separately in the database and is not the same as the graphical interface login password

## OpCon Event Syntax

Each OpCon event has a specific syntax. If the syntax is not followed or a field contains invalid data, the SAM cannot process the event and places an error message in the Critical log.

### Internal OpCon Events Basic Syntax

```shell
$EVENT:COMMAND,field-1,field-2,\...,field-n
```

### External OpCon Events Basic Syntax

#### Comma-separated Command Syntax

```shell
$EVENT:COMMAND,field-1,field-2,\...,field-n,username,external password
```

#### XML-formatted Command Syntax

```xml
<Event>
     <Event Elements>
</Event>
<Event>
     <Event Elements>
</Event>
```

:::note
For XML formatting examples, refer to [Event Types](./types.md) in the **Reference Information** section.
:::

- Maximum characters in the event string:
  - Internal Events: 738
  - External Events: 2000
- Commas can only be used as separators, not in text
- Asterisks (\*) and question marks (?) cannot be used in Schedule, Job, or Machine names; they are reserved as wild cards (if the Server Option for wild cards is enabled)
- In graphical interface event templates, the `<>` symbols define fields only. A finished event definition should not contain them
- Tokens can be used in any field if the token value is compatible with the field. For details, refer to [Tokens](../objects/using-properties.md#Tokens) in the **Concepts** online help
  - Internal OpCon events can include tokens for any property type
  - External OpCon events can include tokens for user-defined properties and the $TIME, $DATE, and $NOW Managed System Properties only
- Valid entries for the schedule date parameter:
  - A specific date in the format recognized by the regional settings of the user running SMA Service Manager (e.g., `1/9/2012` for US English)
  - Tokens for date-related Managed System Properties (e.g., `[[$DATE]]`). For details, refer to [System Properties](../objects/properties.md#System) in the **Concepts** online help
  - [Event Keywords](#Event)
  - Blank — commas must remain in place to delimit the parameter. For example:

    ```shell
    $SCHEDULE:CANCEL,,TestSched
    ```

    A blank schedule date defaults to the date the event is processed.
- To use the default *AdHoc* schedule, leave the schedule name parameter blank (commas must remain). For example:

  ```shell
  $SCHEDULE:BUILD,\[\[$DATE\]\],,SchedBuild.log,Y.
  ```

- By default, the SAM does not reopen completed schedules based on events. The schedule date and name must describe an active schedule in the Daily tables. To change this behavior, configure Allow Job Events to Restart Schedules. For details, refer to [OpCon Server Options](../administration/server-options.md) in the **Concepts** online help

## Event Keywords

:::note
Keywords are not tokens and do not need additional formatting.
:::

The following event keywords are valid entries for the schedule date:

|Keyword|Value|
|--- |--- |
|CURRENT|Today's date.|
|EARLIEST|Earliest date this schedule exists.|
|EARLIEST HELD|Earliest date this schedule exists in a held state.|
|EARLIEST ACTIVE|Earliest date this schedule exists in an active state.|
|EARLIEST NONCOMPLETE|Earliest date this schedule exists in a non-complete state.|
|EARLIEST WAITING|Earliest date this schedule exists in a waiting to start state.|
|EARLIEST COMPLETE|Earliest date this schedule exists in a complete state.|
|LATEST|Latest date this schedule exists.|
|LATEST HELD|Latest date this schedule exists in a held state.|
|LATEST ACTIVE|Latest date this schedule exists in an active state.|
|LATEST NONCOMPLETE|Latest date this schedule exists in a non-complete state.|
|LATEST WAITING|Latest date this schedule exists in a waiting to start state.|
|LATEST COMPLETE|Latest date this schedule exists in a complete state.|
|NEXT|The next schedule date following the calendar date on which the event runs.|
|NEXTREL|The next schedule date relative to the schedule date of the job or schedule that the event was found.|
|PREVIOUS|The previous schedule date before the calendar date on which the event runs.|
|PREVIOUSREL|The previous schedule date relative to the schedule date of the job or schedule that the event was found.|

:::tip Example
The following is an event with a keyword (do not place brackets around keywords):

```shell
$SCHEDULE:CANCEL,CURRENT,TestSched
```

:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## Exception Handling

**Invalid event syntax or invalid field data causes the SAM to log an error and not process the event** — If the syntax of an OpCon event is not followed exactly, or if any field contains invalid data, the SAM cannot process the event and places an error message in the Critical.log — Review the event syntax in the Event Types reference, correct the text file, and resubmit the event through the MSGIN directory.

**Commas used in text fields break event parsing** — Commas are reserved as field separators in OpCon event syntax; if a comma appears in any text field (such as a job name or property value), the SAM misparses the event and cannot process it correctly — Do not use commas within any field value in an OpCon event; use an alternative delimiter or reformat the content to avoid commas.

**Events targeting a completed schedule are logged as errors unless Allow Job Events to Restart Schedules is enabled** — By default, the SAM does not reopen completed schedules when it receives a $JOB:ADD, $JOB:RESTART, or $JOB:RESCHEDULE event; the event is logged as an error in the Critical.log — Enable Allow Job Events to Restart Schedules in Server Options if events must be able to reopen and reprocess completed schedules.

## FAQs

**Q: What is the difference between an internal and an external event?**

An internal event is stored in the OpCon database and associated with a specific job or schedule. An external event is submitted from outside OpCon, through the MSGIN directory or an agent command, and requires a valid User Login ID and event password.

**Q: Are external events enabled for new users by default?**

No. As of release 20.0, the ability to submit external events is disabled by default for new users. An administrator must enable it.

**Q: How does the SAM process events placed in the MSGIN directory?**

The SAM continuously monitors the MSGIN directory. When a valid ASCII text file containing an OpCon event, User Login ID, and event password is placed in that directory, the SAM reads and processes the event. If the event fails to process, check the SAM.log and Critical.log for errors.

## Glossary

**MSGIN**: A directory monitored by an agent for incoming OpCon event files. Placing a properly formatted event file in MSGIN causes the agent to forward it to SAM for processing.

**SMAServMan (SMA Service Manager)**: Manages the starting, stopping, and restarting of all OpCon server programs. Monitors configured applications and restarts them automatically if they fail unexpectedly.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.
