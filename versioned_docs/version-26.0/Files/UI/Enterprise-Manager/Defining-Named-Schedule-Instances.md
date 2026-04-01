---
title: Defining Named Schedule Instances
description: "A multi-instance schedule may be associated with one or more instance names."
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

# Defining Named Schedule Instances

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

A multi-instance schedule may be associated with one or more instance names. Each named schedule instance can be associated with schedule instance properties and exceptions. For conceptual information, refer to [Named Schedule Instances](../../../automation-concepts/named-schedule-instances.md) in the **Concepts** online help.

To define a named schedule instance, complete the following steps:

1. Select on **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays
2. Select the **schedule** in the **Schedule Selection** list
3. Select the **Schedule** tab in the **Schedule Details** frame
4. Select the **Multi-Instance** option in the **Schedule Properties** frame
5. Select the **Instance Definition** tab in the **Schedule Details** frame
6. Select the **Named Instance** radio button
7. Select **Add** in the **Instances** frame. The **Select Instance** dialog displays
8. Do one of the following:
   - Select **Add New Schedule Instance**, enter the *instance name*, then select **OK**
   - Select an existing **instance name** from the **Instance** list, or use **Find** (Ctrl+F) to search
9. Select **OK** to save or **Cancel** to cancel

Define Properties

Associate schedule instance properties.

1. Enter a *property name* in the **Property Name** field
2. Enter an associated *property value* in the **Property Value** field
3. Select **Add**

Define Exceptions

Add exception rules to apply to an associated job pattern. These exceptions are applied during the schedule build.

:::note
Only users in the ocadm role can define exceptions.
:::

**In the Instance Details frame > Exceptions tab:**

1. Select **Add** in the **Job Patterns** frame. The **Job Pattern** dialog displays
2. Enter the *job pattern*. Wildcards (\*) are supported

:::note
Exceptions apply to all jobs matching the specified pattern. Using only \* applies exceptions to all jobs.
:::

3. Select **OK** to save the job pattern or **Cancel** to cancel
4. Select **Add** in the **Exception Rules** frame. The **Add Exception Rule** dialog displays

:::note
For fields supporting tokens, press **Ctrl+T** to open the **Global Property Selector** to access global properties and named instance properties. You can also type a token manually. For more on tokens, refer to [Tokens](../../../objects/using-properties.md#tokens) in the **Concepts** online help.
:::

5. In the **Job Field**, select the job field to modify

:::note
Fields that do not allow exceptions are handled during schedule build time.
:::

6. In the **To Replace** field, provide the existing string to replace, or leave blank to replace everything

:::note
Steps 6–8 apply to all predefined job fields except **Job Build Status**. For Job Build Status, select one of the following from the **New Value** list, then proceed to Step 9:

- Cancelled
- Disable Build
- On Hold
- Release
- To Be Skipped
:::

When defining the **To Replace** string:

- The value may be an empty string (`""`), a fixed string (`"abc"`), or a string with instance properties (`[[$this.Property]]`)
- The value may not be a property expression
- `[[@name]]` refers to the current instance name (case-sensitive)
- `[[@current]]` refers to the current value of the job field (case-sensitive)
- `$this` is a case-sensitive placeholder for the instance property named in the instance definition

7. In the **New Value** field, provide the replacement value

When defining the new value, the value may be:

- A fixed string (`"abc"`)
- A string with instance properties (`[[$this.Property]]`)
- A property expression (`[[@current]] + ToOaTime("02:00")`)

8. Select the **Is Expression** option if the new value is a property expression

:::tip Examples
**Scenario #1**: Add an argument to a command line.

**Job Field**: (Windows) Command Line
**To Replace**: C:\MyFolder\MyApp.exe -arg1 firstArg -arg2 secondArg
**New Value**: C:\MyFolder\MyApp.exe -arg1 firstArg -arg2 secondArg -arg3 thirdArg
**Is Expression**: false

**Scenario #2**: Change the primary machine using an instance property.

**Job Field**: Primary Machine
**To Replace**: MyMachine
**New Value**: My[[$this.Property]]Machine
**Is Expression**: false

**Scenario #3**: Append the instance name to the current department value.

**Job Field**: Department
**To Replace**:
**New Value**: [[@current]][[@name]]
**Is Expression**: false

**Scenario #4**: Add 10 minutes to the current start offset using an expression.

**Job Field**: Start Offset
**To Replace**:
**New Value**: [[@current]] + ToOaTime("00:10")
**Is Expression**: true
:::

9. Select **OK** to save the exception rule or **Cancel** to cancel
10. Repeat Steps 7–9 to define additional named instances
11. Select ![Green circle with white checkmark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar
12. Select **Close ☒** to close the **Schedule Master** screen

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Scenario #1 | Add an argument to a command line | — | — |
| Job Field | (Windows) Command Line | — | — |
| To Replace | C:\MyFolder\MyApp.exe -arg1 firstArg -arg2 secondArg | — | — |
| New Value | C:\MyFolder\MyApp.exe -arg1 firstArg -arg2 secondArg -arg3 thirdArg | — | — |
| Is Expression | false | — | — |
| Scenario #2 | Change the primary machine using an instance property | — | — |
| Scenario #3 | Append the instance name to the current department value | — | — |
| Scenario #4 | Add 10 minutes to the current start offset using an expression | — | — |
## FAQs

**Q: What is the purpose of defining named schedule instances?**

Defining named schedule instances establishes the configuration or properties that OpCon uses when processing the related job, schedule, or automation object.

**Q: What is required when defining named schedule instances?**

Required information includes **Property Name**. Complete all required fields before saving.

## Glossary

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
