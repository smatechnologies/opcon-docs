---
title: Editing Job Automation Components in Job Daily
description: "Editing job automation components in the Daily editor is similar to editing job automation components in the Job Master editor."
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

# Editing Job Automation Components in Job Daily

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Editing job automation components in the **Daily** editor is similar to editing job automation components in the **Job Master** editor. For more detailed information on Job Master maintenance, refer to [Using Job Master](./Using-Job-Master.md).

:::note
Changes made to the job properties in the Job Daily take place immediately. If the job has already run, the changes take effect the next time the job runs.
:::

## When Would You Use It?

- An existing Job Automation Components in Job Daily in Enterprise Manager requires changes
- A change in process, system, or business requirement makes the current Job Automation Components in Job Daily definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating Job Automation Components in Job Daily in Enterprise Manager ensures changes apply to future builds without disrupting currently running schedules
- Changes to Job Automation Components in Job Daily are recorded in the OpCon audit log, providing a complete modification history

## Editing Job Details

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Expand the **date** that has the schedule to edit
3. Expand the **schedule** that has the job to edit
4. Select the **job** to edit
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays
6. *(Optional)* Select the **Job Details** tab and enter the changes
7. *(Optional)* Enter the changes. For platform-specific job details, refer to their Job Type Details
8. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Daily** toolbar
9. Select **Close ☒** to close the **Job Daily** screen, then **Close ☒** to close the **Daily Maintenance** screen

## Adding Properties to Daily Job Instances

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Expand the **date** that has the schedule to edit
3. Expand the **schedule** that has the job to edit
4. Select the **job** to edit
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays
6. Select the **Instance Definition** tab
7. Enter the *property definition* (e.g., PropertyName=value) in the **Define Property** text box
8. Select the **Add** button
9. Repeat steps 7 and 8 to add additional properties
10. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Daily** toolbar

## Editing Daily Job Instance Properties

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Expand the **date** that has the schedule to edit
3. Expand the **schedule** that has the job to edit
4. Select the **job** to edit
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays
6. Select the **Instance Definition** tab
7. Select the **property name** in the **Available Properties** table
8. Make the changes to the property definition
9. Select the **Update** button
10. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Daily** toolbar

## Removing Daily Job Instance Properties

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays

2. Expand the **date** that has the schedule to edit
3. Expand the **schedule** that has the job to edit
4. Select the **job** to edit
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays
6. Select the **Instance Definition** tab
7. Select the property definition in the **Available Properties** table
8. Select the **Remove** button
9. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Daily** toolbar to confirm the deletion, or select **Cancel** to cancel

## Editing Job Frequencies

Editing Frequency details in the **Daily** editor allows changes to the time-related information for a job.

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Expand the **date** for the schedule
3. Expand the **schedule**
4. Select the **job**
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays

6. Select the **Frequency** tab
7. Enter the changes. For individual fields, refer to [Other Job Details](../../../job-components/frequency.md#other-job-details) in the **Concepts** online help
8. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Daily** toolbar
9. Select **Close ☒** to close the **Job Daily** screen, then **Close ☒** to close the **Daily Maintenance** screen

## Editing Job Events

Editing Event details in the **Daily** editor allows changes to the job events set up to run on the date in the *Job Daily*. For conceptual information, refer to [Events](../../../job-components/events.md) in the **Concepts** online help.

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Expand the **date** for the schedule
3. Expand the **schedule**
4. Select the **job**
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays

6. Select the **Events** tab
7. Select the **event** to edit
8. Select the **Edit** button in the **Events** frame. The **Event Definition Wizard** displays
9. Enter the changes. For details, refer to [Editing Job Events](Editing-Job-Events.md)
10. Select the **OK** button to save the changes
11. Select **Close ☒** to close the **Job Daily** screen, then **Close ☒** to close the **Daily Maintenance** screen

## Adding Job Events

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Expand the **date** for the schedule
3. Expand the **schedule**

4. Select the **job**
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays
6. Select the **Events** tab
7. Select the **Add** button in the **Events** frame. The **Event Definition Wizard** displays
8. Select the **Job Status**, **LSAM Feedback**, **Exit Description**, or **Job Completion Complex Expression** radio button on the **Event Trigger** screen

9. Select the **Next** button to proceed to the **Trigger Details** screen
10. Do one of the following depending on your selection in step 8:
    - **(Job Status)** Select the **job status** in the **Job Status** list and proceed to step 11
    - **(LSAM Feedback)** Select the **Feedback name** in the **LSAM Feedback** list. Enter a *string to match* in the **String to match** field, then proceed to step 11
    - **(Exit Description)** Select the **Operator** in the **Comparison Operator** list. Enter the **Value** and **End Value** fields, then proceed to step 11
    - **(Job Completion Complex Expression)** Enter the *expression* in the **Expression** text box and proceed to step 11. For more information, refer to [Property Expressions API Syntax](../../../reference/property-expressions-syntax.md) in the **Concepts** online help
11. Select the **Next** button to advance to the **Event Definition** screen
12. Select an **OpCon event template** from the **Event Template** list. For more information, refer to the [OpCon Events](../../../events/introduction.md) online help

:::tip Example

```shell
$JOB:ADD,<schedule date\>,<schedule name\>,<job name\>,<frequency name\>
```

:::

To add Job Events, complete the following steps:

13. Place your cursor at the beginning of a **\<syntax placeholder\>** in the **Event Parameters** text box, then drag to select the entire placeholder, excluding surrounding commas. For example: ,\<schedule name\>,
14. Replace the selected placeholder with valid OpCon event information
15. To replace a placeholder with a token:
    - Follow step 13 to select the placeholder
    - Select the ![Insert Token button](../../../Resources/Images/EM/EMinserttoken.png "Insert Token button") **Insert token** button or press **Ctrl+T** to list available global properties
    - Locate the global property by scrolling or using the search field (Windows wildcards supported; filter by property name, value, or both)
    - Select on the **global property** (e.g., $SCHEDULE DATE)

:::note
Double brackets are automatically placed around the token placeholder.
:::

:::tip Example

```shell
$JOB:ADD,\[\[$SCHEDULE DATE\]\],Payroll,Emp1,15thofMonth
```

:::


16. Select the **Reset** button to reset parameters to their original states
17. Select **Finish** to save the job event, or select **Cancel** to discard changes
18. Select **Close ☒** to close the **Job Daily** screen, then **Close ☒** to close the **Daily Maintenance** screen

## Deleting Job Events

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Expand the **date** for the schedule
3. Expand the **schedule**

4. Select the **job**
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays
6. Select the **Events** tab
7. Select the **event** to delete
8. Select the **Remove** button in the **Events** frame
9. Select **Yes** to confirm the deletion, or **No** to cancel
10. Select **Close ☒** to close the **Job Daily** screen, then **Close ☒** to close the **Daily Maintenance** screen

## Editing Threshold/Resource Updates

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Expand the **date** for the schedule
3. Expand the **schedule**

4. Select the **job**
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays
6. Select the **Threshold/Resource Update** tab
7. Select the **Threshold/Resource Update** to edit
8. Select the **Edit** button in the **Threshold/Resource Updates** frame. The **Threshold/Resource Update** dialog displays
9. Enter the changes
10. Select the **OK** button to save the changes
11. Select **Close ☒** to close the **Job Daily** screen, then **Close ☒** to close the **Daily Maintenance** screen

## Adding Threshold/Resource Updates

For conceptual information, refer to [Threshold Updates](../../../job-components/threshold-resource-updates.md#threshold-updates) or [Resource Updates](../../../job-components/threshold-resource-updates.md#resource-updates) in the **Concepts** online help.

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Expand the **date** for the schedule
3. Expand the **schedule**
4. Select the **job**
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays

6. Select the **Threshold/Resource Update** tab
7. Select the **Add** button in the **Threshold/Resource Updates** frame. The **Threshold/Resource Update** dialog displays
8. Select a **threshold** or **resource** in the **Threshold/Resource** list
9. Select a **job status** in the **Job Status** list
10. Set the **value** in the **Value** box

11. Select the **OK** button to save the changes
12. Select **Close ☒** to close the **Job Daily** screen, then **Close ☒** to close the **Daily Maintenance** screen

## Deleting Threshold/Resource Updates

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Expand the **date** for the schedule
3. Expand the **schedule**

4. Select the **job**
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays
6. Select the **Threshold/Resource Update** tab
7. Select the **threshold** or **resource** to delete
8. Select the **Remove** button in the **Threshold/Resource Updates** frame
9. Select **Yes** to confirm the deletion, or **No** to cancel
10. Select **Close ☒** to close the **Job Daily** screen, then **Close ☒** to close the **Daily Maintenance** screen

## Editing Job Dependencies

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Expand the **date** for the schedule
3. Expand the **schedule**

4. Select the **job**
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays
6. Select the **Dependencies** tab
7. Select the **dependency** in the **Job Dependency** tab
8. Select the **Edit** button. The **Edit Dependency** dialog displays

9. Enter the changes
10. Select the **OK** button to save the changes
11. Select **Close ☒** to close the **Job Daily** screen, then **Close ☒** to close the **Daily Maintenance** screen

## Adding Job Dependencies

For conceptual information, refer to [Job Dependencies](../../../job-components/job-dependencies.md) in the **Concepts** online help.

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Expand the **date** for the schedule
3. Expand the **schedule**
4. Select the **job**
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays

6. Select the **Dependencies** tab
7. Select the **Add** button in the **Job Dependency** tab. The **Add Dependency** dialog displays
8. Select a **schedule** in the **Schedule** list
9. Select a **job** in the **Job** list
10. Select the **Dependency Type** radio button

11. *(Optional)* Select the **Options** options
12. Select the **OK** button to save the changes
13. Select **Close ☒** to close the **Job Daily** screen, then **Close ☒** to close the **Daily Maintenance** screen

## Deleting Job Dependencies

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Expand the **date** for the schedule
3. Expand the **schedule**

4. Select the **job**
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays
6. Select the **Dependencies** tab
7. Select the **dependency** in the **Job Dependency** tab
8. Select the **Remove** button

9. Select **Yes** to confirm the deletion, or **No** to cancel
10. Select **Close ☒** to close the **Job Daily** screen, then **Close ☒** to close the **Daily Maintenance** screen

## Editing Threshold/Resource Dependencies

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Expand the **date** for the schedule
3. Expand the **schedule**

4. Select the **job**
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays
6. Select the **Dependencies** tab
7. Select the **Threshold/Resource Dependency** tab
8. Select the **threshold/resource dependency** to edit
9. Select the **Edit** button in the **Threshold/Resource Dependency** frame. The **Edit Threshold/Resource Dependency** dialog displays
10. Enter the changes
11. Select the **OK** button to save the changes
12. Select **Close ☒** to close the **Job Daily** screen, then **Close ☒** to close the **Daily Maintenance** screen

## Adding Threshold/Resource Dependencies

For conceptual information, refer to [Threshold Dependencies](../../../job-components/threshold-resource-dependencies.md#threshold-dependencies) or [Resource Dependencies](../../../job-components/threshold-resource-dependencies.md#resource-dependencies) in the **Concepts** online help.

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Expand the **date** for the schedule
3. Expand the **schedule**
4. Select the **job**
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays

6. Select the **Dependencies** tab
7. Select the **Threshold/Resource Dependency** tab
8. Select the **Add** button. The **Threshold/Resource Dependency** dialog displays
9. Select a **threshold/resource** in the **Threshold Resource** list
10. Select an **operator** in the **Operator** list

11. Select a **value** in the **Value** box
12. Select the **OK** button to save the changes
13. Select **Close ☒** to close the **Job Daily** screen, then **Close ☒** to close the **Daily Maintenance** screen

## Deleting Threshold/Resource Dependencies

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Expand the **date** for the schedule
3. Expand the **schedule**

4. Select the **job**
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays
6. Select the **Dependencies** tab
7. Select the **Threshold/Resource Dependency** tab
8. Select the **threshold/resource dependency** to delete
9. Select the **Remove** button
10. Select **Yes** to confirm the deletion, or **No** to cancel
11. Select **Close ☒** to close the **Job Daily** screen, then **Close ☒** to close the **Daily Maintenance** screen

## Adding Documentation

For conceptual information, refer to [Documentation](../../../job-components/documentation.md) in the **Concepts** online help.

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Expand the **date** for the schedule
3. Expand the **schedule**
4. Select the **job**
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays

6. Select the **Documentation** tab
7. Enter the changes in the **Documentation** and/or **Frequency Documentation** frames
8. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Daily** toolbar
9. Select **Close ☒** to close the **Daily Maintenance** screen
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Do edits to job automation components in job daily take effect immediately?**

Changes saved to job automation components in job daily in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

**Q: What fields can be modified when editing job automation components in job daily?**

You can update fields such as **String to match**, **Expression** and other available settings for the job automation components in job daily record.

## Glossary

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
