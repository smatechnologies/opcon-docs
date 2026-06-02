---
title: Editing Job Automation Components in Job Daily
description: "How to edit job details, frequencies, events, dependencies, threshold/resource updates, instance properties, and documentation for a daily job in Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Editing Job Automation Components in Job Daily

Editing job automation components in the **Job Daily** editor works the same way as editing job automation components in the **Job Master** editor. For detailed information on Job Master maintenance, refer to [Using Job Master](./Using-Job-Master.md).

:::note
Changes saved to job properties in Job Daily take effect immediately. If the job has already run, the changes take effect the next time the job runs.
:::

## Editing Job Details

To edit job details for a daily job, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Expand the **date** that contains the schedule to edit.
3. Expand the **schedule** that contains the job to edit.
4. Select the **job** to edit.
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays.
6. *(Optional)* Select the **Job Details** tab and enter the changes.
7. For platform-specific job details, refer to the relevant Job Type Details page.
8. Select **Save** on the **Job Daily** toolbar.
9. Select **Close** to close the **Job Daily** screen, then **Close** to close the **Daily Maintenance** screen.

**Result:** The updated job details are saved for the current daily instance.

## Adding Properties to Daily Job Instances

To add instance properties to a daily job, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Expand the **date** that contains the schedule to edit.
3. Expand the **schedule** that contains the job to edit.
4. Select the **job** to edit.
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays.
6. Select the **Instance Definition** tab.
7. Enter the property definition (for example, `PropertyName=value`) in the **Define Property** field.
8. Select **Add**.
9. Repeat steps 7 and 8 to add additional properties.
10. Select **Save** on the **Job Daily** toolbar.

**Result:** The new instance properties are saved to the daily job.

## Editing Daily Job Instance Properties

To edit existing instance properties on a daily job, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Expand the **date** that contains the schedule to edit.
3. Expand the **schedule** that contains the job to edit.
4. Select the **job** to edit.
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays.
6. Select the **Instance Definition** tab.
7. Select the property name in the **Available Properties** table.
8. Make the required changes to the property definition.
9. Select **Update**.
10. Select **Save** on the **Job Daily** toolbar.

**Result:** The updated instance property is saved to the daily job.

## Removing Daily Job Instance Properties

To remove an instance property from a daily job, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Expand the **date** that contains the schedule to edit.
3. Expand the **schedule** that contains the job to edit.
4. Select the **job** to edit.
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays.
6. Select the **Instance Definition** tab.
7. Select the property definition in the **Available Properties** table.
8. Select **Remove**.
9. Select **Save** on the **Job Daily** toolbar to confirm, or select **Cancel** to cancel.

**Result:** The selected instance property is removed from the daily job.

## Editing Job Frequencies

Editing frequency details in the **Job Daily** editor lets you change the time-related settings for a job.

To edit a job frequency in Job Daily, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Expand the **date** for the schedule.
3. Expand the **schedule**.
4. Select the **job**.
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays.
6. Select the **Frequency** tab.
7. Enter the changes. For individual field descriptions, refer to [Other Job Details](../../../job-components/frequency.md#other-job-details).
8. Select **Save** on the **Job Daily** toolbar.
9. Select **Close** to close the **Job Daily** screen, then **Close** to close the **Daily Maintenance** screen.

**Result:** The updated frequency settings are saved for the current daily job instance.

## Editing Job Events

Editing event details in the **Job Daily** editor lets you change the job events scheduled to run on the date in Job Daily. For conceptual information, refer to [Events](../../../job-components/events.md).

To edit a job event in Job Daily, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Expand the **date** for the schedule.
3. Expand the **schedule**.
4. Select the **job**.
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays.
6. Select the **Events** tab.
7. Select the event to edit.
8. Select the **Edit** button in the **Events** frame. The **Event Definition Wizard** displays.
9. Enter the changes. For details, refer to [Editing Job Events](Editing-Job-Events.md).
10. Select **OK** to save the changes.
11. Select **Close** to close the **Job Daily** screen, then **Close** to close the **Daily Maintenance** screen.

**Result:** The updated event is saved for the current daily job instance.

## Adding Job Events

To add a job event in Job Daily, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Expand the **date** for the schedule.
3. Expand the **schedule**.
4. Select the **job**.
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays.
6. Select the **Events** tab.
7. Select the **Add** button in the **Events** frame. The **Event Definition Wizard** displays.
8. Select the **Job Status**, **Agent Feedback**, **Exit Description**, or **Job Completion Complex Expression** option on the **Event Trigger** screen.
9. Select **Next** to proceed to the **Trigger Details** screen.
10. Complete the trigger details based on your selection in the previous step:
    - **(Job Status)** Select the job status in the **Job Status** list.
    - **(Agent Feedback)** Select the feedback name in the **Agent Feedback** list. Enter a string in the **String to match** field.
    - **(Exit Description)** Select an operator in the **Comparison Operator** list. Enter values in the **Value** and **End Value** fields.
    - **(Job Completion Complex Expression)** Enter the expression in the **Expression** field. For syntax, refer to [Property Expressions API Syntax](../../../reference/property-expressions-syntax.md).
11. Select **Next** to advance to the **Event Definition** screen.
12. Select an OpCon event template from the **Event Template** list. For available templates, refer to [OpCon Events](../../../events/introduction.md).

    :::tip Example
    ```
    $JOB:ADD,<schedule date>,<schedule name>,<job name>,<frequency name>
    ```
    :::

13. In the **Event Parameters** field, place your cursor at the beginning of a `<syntax placeholder>`, then drag to select the entire placeholder excluding surrounding commas. Replace the placeholder with valid OpCon event information.
14. To replace a placeholder with a token:
    a. Select the placeholder as described in step 13.
    b. Select the **Insert token** button or press **Ctrl+T** to list available global properties.
    c. Locate the global property by scrolling or using the search field. Windows wildcards are supported; you can filter by property name, value, or both.
    d. Select the global property (for example, `$SCHEDULE DATE`).

    :::note
    Double brackets are automatically placed around the token placeholder.
    :::

    :::tip Example
    ```
    $JOB:ADD,[[$SCHEDULE DATE]],Payroll,Emp1,15thofMonth
    ```
    :::

15. Select **Reset** to reset parameters to their original states, or select **Finish** to save the event.
16. Select **Close** to close the **Job Daily** screen, then **Close** to close the **Daily Maintenance** screen.

**Result:** The new event is added to the daily job instance.

## Deleting Job Events

To delete a job event from Job Daily, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Expand the **date** for the schedule.
3. Expand the **schedule**.
4. Select the **job**.
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays.
6. Select the **Events** tab.
7. Select the event to delete.
8. Select the **Remove** button in the **Events** frame.
9. Select **Yes** to confirm the deletion, or **No** to cancel.
10. Select **Close** to close the **Job Daily** screen, then **Close** to close the **Daily Maintenance** screen.

**Result:** The selected event is removed from the daily job instance.

## Editing Threshold/Resource Updates

To edit a threshold or resource update in Job Daily, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Expand the **date** for the schedule.
3. Expand the **schedule**.
4. Select the **job**.
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays.
6. Select the **Threshold/Resource Update** tab.
7. Select the threshold or resource update to edit.
8. Select the **Edit** button in the **Threshold/Resource Updates** frame. The **Threshold/Resource Update** dialog displays.
9. Enter the changes.
10. Select **OK** to save the changes.
11. Select **Close** to close the **Job Daily** screen, then **Close** to close the **Daily Maintenance** screen.

**Result:** The updated threshold or resource update is saved for the current daily job instance.

## Adding Threshold/Resource Updates

For conceptual information, refer to [Threshold Updates](../../../job-components/threshold-resource-updates.md#threshold-updates) or [Resource Updates](../../../job-components/threshold-resource-updates.md#resource-updates).

To add a threshold or resource update to a daily job, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Expand the **date** for the schedule.
3. Expand the **schedule**.
4. Select the **job**.
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays.
6. Select the **Threshold/Resource Update** tab.
7. Select the **Add** button in the **Threshold/Resource Updates** frame. The **Threshold/Resource Update** dialog displays.
8. Select a threshold or resource in the **Threshold/Resource** list.
9. Select a job status in the **Job Status** list.
10. Set the value in the **Value** field.
11. Select **OK** to save the changes.
12. Select **Close** to close the **Job Daily** screen, then **Close** to close the **Daily Maintenance** screen.

**Result:** The new threshold or resource update is added to the daily job instance.

## Deleting Threshold/Resource Updates

To delete a threshold or resource update from Job Daily, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Expand the **date** for the schedule.
3. Expand the **schedule**.
4. Select the **job**.
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays.
6. Select the **Threshold/Resource Update** tab.
7. Select the threshold or resource to delete.
8. Select the **Remove** button in the **Threshold/Resource Updates** frame.
9. Select **Yes** to confirm the deletion, or **No** to cancel.
10. Select **Close** to close the **Job Daily** screen, then **Close** to close the **Daily Maintenance** screen.

**Result:** The selected threshold or resource update is removed from the daily job instance.

## Editing Job Dependencies

To edit a job dependency in Job Daily, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Expand the **date** for the schedule.
3. Expand the **schedule**.
4. Select the **job**.
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays.
6. Select the **Dependencies** tab.
7. Select the dependency in the **Job Dependency** tab.
8. Select the **Edit** button. The **Edit Dependency** dialog displays.
9. Enter the changes.
10. Select **OK** to save the changes.
11. Select **Close** to close the **Job Daily** screen, then **Close** to close the **Daily Maintenance** screen.

**Result:** The updated job dependency is saved for the current daily job instance.

## Adding Job Dependencies

For conceptual information, refer to [Job Dependencies](../../../job-components/job-dependencies.md).

To add a job dependency to a daily job, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Expand the **date** for the schedule.
3. Expand the **schedule**.
4. Select the **job**.
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays.
6. Select the **Dependencies** tab.
7. Select the **Add** button in the **Job Dependency** tab. The **Add Dependency** dialog displays.
8. Select a schedule in the **Schedule** list.
9. Select a job in the **Job** list.
10. Select the dependency type option.
11. *(Optional)* Select the applicable options.
12. Select **OK** to save the changes.
13. Select **Close** to close the **Job Daily** screen, then **Close** to close the **Daily Maintenance** screen.

**Result:** The new job dependency is added to the daily job instance.

## Deleting Job Dependencies

To delete a job dependency from Job Daily, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Expand the **date** for the schedule.
3. Expand the **schedule**.
4. Select the **job**.
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays.
6. Select the **Dependencies** tab.
7. Select the dependency in the **Job Dependency** tab.
8. Select **Remove**.
9. Select **Yes** to confirm the deletion, or **No** to cancel.
10. Select **Close** to close the **Job Daily** screen, then **Close** to close the **Daily Maintenance** screen.

**Result:** The selected job dependency is removed from the daily job instance.

## Editing Threshold/Resource Dependencies

To edit a threshold or resource dependency in Job Daily, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Expand the **date** for the schedule.
3. Expand the **schedule**.
4. Select the **job**.
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays.
6. Select the **Dependencies** tab.
7. Select the **Threshold/Resource Dependency** tab.
8. Select the threshold or resource dependency to edit.
9. Select the **Edit** button in the **Threshold/Resource Dependency** frame. The **Edit Threshold/Resource Dependency** dialog displays.
10. Enter the changes.
11. Select **OK** to save the changes.
12. Select **Close** to close the **Job Daily** screen, then **Close** to close the **Daily Maintenance** screen.

**Result:** The updated threshold or resource dependency is saved for the current daily job instance.

## Adding Threshold/Resource Dependencies

For conceptual information, refer to [Threshold Dependencies](../../../job-components/threshold-resource-dependencies.md#threshold-dependencies) or [Resource Dependencies](../../../job-components/threshold-resource-dependencies.md#resource-dependencies).

To add a threshold or resource dependency to a daily job, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Expand the **date** for the schedule.
3. Expand the **schedule**.
4. Select the **job**.
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays.
6. Select the **Dependencies** tab.
7. Select the **Threshold/Resource Dependency** tab.
8. Select **Add**. The **Threshold/Resource Dependency** dialog displays.
9. Select a threshold or resource in the **Threshold Resource** list.
10. Select an operator in the **Operator** list.
11. Set the value in the **Value** field.
12. Select **OK** to save the changes.
13. Select **Close** to close the **Job Daily** screen, then **Close** to close the **Daily Maintenance** screen.

**Result:** The new threshold or resource dependency is added to the daily job instance.

## Deleting Threshold/Resource Dependencies

To delete a threshold or resource dependency from Job Daily, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Expand the **date** for the schedule.
3. Expand the **schedule**.
4. Select the **job**.
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays.
6. Select the **Dependencies** tab.
7. Select the **Threshold/Resource Dependency** tab.
8. Select the threshold or resource dependency to delete.
9. Select **Remove**.
10. Select **Yes** to confirm the deletion, or **No** to cancel.
11. Select **Close** to close the **Job Daily** screen, then **Close** to close the **Daily Maintenance** screen.

**Result:** The selected threshold or resource dependency is removed from the daily job instance.

## Adding Documentation

For conceptual information, refer to [Documentation](../../../job-components/documentation.md).

To add or edit documentation for a daily job, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Expand the **date** for the schedule.
3. Expand the **schedule**.
4. Select the **job**.
5. Select the **Edit Daily** button in the **Maintenance** frame. The **Job Daily** screen displays.
6. Select the **Documentation** tab.
7. Enter the changes in the **Documentation** and/or **Frequency Documentation** frames.
8. Select **Save** on the **Job Daily** toolbar.
9. Select **Close** to close the **Daily Maintenance** screen.

**Result:** The documentation is saved to the daily job instance.
