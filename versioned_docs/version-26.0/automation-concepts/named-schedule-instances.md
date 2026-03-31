---
title: Named Schedule Instances
description: "Named Schedule Instances reduce the maintenance burden on repeatable workflows by allowing a single definition rule to be designated for unlimited use or job runs."
product_area: Automation Concepts
audience: Automation Engineer, Business Analyst
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Business Analyst
  - Jobs
last_updated: 2026-03-18
doc_type: conceptual
---

# Named Schedule Instances

**Theme:** Configure  
**Who Is It For?** Automation Engineer, Business Analyst

## What Is It?

Named Schedule Instances reduce the maintenance burden on repeatable workflows by allowing a single definition rule to be designated for unlimited use or job runs. This functionality expands multi-instance capabilities on schedules to include exception management and inter-instance dependency.

## When Would You Use It?

- Named Schedule Instances reduce the maintenance burden on repeatable workflows by allowing a single definition rule to be designated for unlimited use or job runs

## Why Would You Use It?

- **Operational value**: Reduce the maintenance burden on repeatable workflows by allowing a single definition r

## Property Association

Predefined properties can be associated with a named instance of a schedule. Refer to [Using Properties for Automation](../objects/using-properties.md) and [Schedule Instance Property Name Syntax](../objects/using-properties.md#schedule).

## Exception Management

Exception management associates exception definitions with named instances by applying execution rules to job patterns. The exceptions are applied during the schedule build.

:::note
If only the asterisk wildcard character (\*) is specified in the job pattern field, the exceptions apply to all jobs.
:::

The following fields define exception rules:

- **Job Field**: The job field in which to apply the exception rule
- **To Replace**: The value to replace in the job field
  - Accepted values:
    - An empty string ("")
    - A fixed string ("abc")
    - A string with instance properties (\[\[$this.Property\]\]) — may not be a property expression
  - \[\[\@name\]\] is a case-sensitive token referring to the current instance name
  - \[\[\@current\]\] is a case-sensitive token referring to the current value of the job field
  - $this is a case-sensitive placeholder for the instance property named in the instance definition
- **New Value**: The replacement value
  - Accepted values:
    - A fixed string ("abc")
    - A string with instance properties (\[\[$this.Property\]\])
    - A property expression (\[\[\@current\]\] + ToOaTime("02:00"))
- **Is Expression**: When enabled, specifies that the new value is a property expression

### Use Cases for Exception Rules

#### When to Use String Replacement

Use string replacement to change a string value such as a command line argument, machine name, or department name.

:::tip Example #1

To add an argument to the command line:

**Job Field**: (Windows) Command Line

**To Replace**: C:\\MyFolder\\MyApp.exe -arg1 firstArg -arg2 secondArg

**New Value**: C:\\MyFolder\\MyApp.exe -arg1 firstArg -arg2 secondArg -arg3 thirdArg

**Is Expression**: false
:::

:::tip Example #2

To append an argument to the current command line value:

**Job Field**: (Windows) Command Line

**To Replace**:

**New Value**: \[\[\@current\]\] -arg3 thirdArg

**Is Expression**: false
:::

:::tip Example #3

To change the machine from "MyMachine" to "My\<Property\>Machine":

**Job Field**: Primary Machine

**To Replace**: MyMachine

**New Value**: My\[\[$this.Property\]\]Machine

**Is Expression**: false
:::

:::tip Example #4

To append the instance name to the current department value:

**Job Field**: Department

**To Replace**:

**New Value**: \[\[\@current\]\]\[\[\@name\]\]

**Is Expression**: false
:::

### When to Use True Expressions

Use expressions to change numeric fields such as the job start offset.

:::tip Expression Example #1

To add 20 minutes to the current start offset:

**Job Field**: Start Offset

**To Replace**:

**New Value**: \[\[\@current\]\] + ToOaTime("00:20")

**Is Expression**: true
:::

:::tip Expression Example #2

To add 15% of the current offset to itself:

**Job Field**: Start Offset

**To Replace**:

**New Value**: \[\[\@current\]\] + (\[\[\@current\]\] \* 0.15)

**Is Expression**: true
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Job Field | The job field in which to apply the exception rule | — | — |
| To Replace | The value to replace in the job field | — | — |
| New Value | The replacement value | — | — |
| Is Expression | When enabled, specifies that the new value is a property expression | — | — |
## FAQs

**Q: What is the main benefit of Named Schedule Instances?**

Named Schedule Instances reduce maintenance on repeatable workflows by allowing a single schedule definition to be reused across unlimited instances, each with its own set of properties and exceptions applied during the schedule build.

**Q: What is exception management in Named Schedule Instances?**

Exception management associates exception rules with a named instance, applying substitution rules to specific job fields during the schedule build. This allows individual job parameters (such as command line arguments or start times) to be customized per instance without modifying the master definition.

**Q: Can a wildcard be used in the job pattern for exception rules?**

Yes. Using the asterisk (`*`) wildcard as the job pattern applies the exception rule to all jobs in the named schedule instance.

## Glossary

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
