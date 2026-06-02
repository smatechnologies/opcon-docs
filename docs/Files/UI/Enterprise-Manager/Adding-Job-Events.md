---
title: Adding Job Events
description: "Use this procedure to add job-related and frequency-related events to a job definition in Enterprise Manager."
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

# Adding Job Events

Job events are OpCon commands attached to a job definition that trigger automated actions — such as adding another job, sending a notification, or updating a property — when the job reaches a specific state. You can attach events at the job level (applied regardless of frequency) or at the frequency level (applied only when the job runs under a particular frequency).

## Setting Job-Related Events

To add a job-related event, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Events** tab in the **Job Properties** frame.
5. Select the **Job Related** option.
6. Select **Add**. The **Event Definition Wizard** displays.
7. On the **Event Trigger** screen, select one of the following options: **Job Status**, **Agent Feedback**, **Exit Description**, or **Job Completion Complex Expression**.
8. Select **Next** to proceed to the **Trigger Details** screen. Complete the fields based on your selection in the previous step:
   - **Job Status**: Select the job status in the **Job Status** list.
   - **Agent Feedback**: Select the feedback name in the **Agent Feedback** list, then enter a string in the **String to match** field. Use `%` as a wildcard to match zero or more characters, and `_` to match any single character.
   - **Exit Description**: Select the operator in the **Comparison Operator** list, enter a value in the **Value** field, and — if you selected the **Range** operator — enter the upper bound in the **End Value** field.
   - **Job Completion Complex Expression**: Enter the expression in the **Expression** text box. For more information, refer to [Property Expressions API Syntax](../../../reference/property-expressions-syntax.md).
9. Select **Next** to advance to the **Event Definition** screen.
10. Select an OpCon event template from the **Event Template** list. For more information, refer to [OpCon Events](../../../events/introduction.md).

    :::tip Example

    ```
    $JOB:ADD,<schedule date\>,<schedule name\>,<job name\>,<frequency name\>
    ```

    :::

11. In the **Event Parameters** text box, select a `<syntax placeholder>` (excluding the surrounding commas) and replace it with valid OpCon event information.
12. To use a token instead of a literal value:
    1. Select the syntax placeholder as described in the previous step.
    2. Select **Insert token** or press **Ctrl+T** to open the global properties selector.
    3. Locate the global property by scrolling or using the search field (Windows wildcards supported; you can filter by name, value, or both).
    4. Select the global property (for example, `$SCHEDULE DATE`). Double brackets are placed around the selected property automatically.

    :::tip Example
    `$JOB:ADD,[[$SCHEDULE DATE]],Payroll,Emp1,15thofMonth`
    :::

13. Select **Reset** to restore the parameters to their default template values, if needed.
14. Select **Finish** to save the event.

The event appears in the events list for the job.

## Setting Frequency-Related Events

To add a frequency-related event, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Events** tab in the **Job Properties** frame.
5. Select the **Frequency Related** option.
6. Select the frequency in the **Frequency** list to which the event applies.
7. Select **Add**. The **Event Definition Wizard** displays.
8. On the **Event Trigger** screen, select one of the following options: **Job Status**, **LSAM Feedback**, **Exit Description**, or **Job Completion Complex Expression**.
9. Select **Next** to proceed to the **Trigger Details** screen. Complete the fields based on your selection in the previous step:
   - **Job Status**: Select the job status in the **Job Status** list.
   - **LSAM Feedback**: Select the feedback name in the **LSAM Feedback** list, then enter a string in the **String to match** field. Use `%` as a wildcard to match zero or more characters, and `_` to match any single character.
   - **Exit Description**: Select the operator in the **Comparison Operator** list, enter a value in the **Value** field, and — if you selected the **Range** operator — enter the upper bound in the **End Value** field.
   - **Job Completion Complex Expression**: Enter the expression in the **Expression** text box. For more information, refer to [Property Expressions API Syntax](../../../reference/property-expressions-syntax.md).
10. Select **Next** to advance to the **Event Definition** screen.
11. Select an OpCon event template from the **Event Template** list. For more information, refer to [OpCon Events](../../../events/introduction.md).

    :::tip Example
    `$JOB:ADD,<schedule date\>,<schedule name\>,<job name\>,<frequency name\>`
    :::

12. In the **Event Parameters** text box, select a `<syntax placeholder>` (excluding the surrounding commas) and replace it with valid OpCon event information.
13. To use a token instead of a literal value:
    1. Select the syntax placeholder as described in the previous step.
    2. Select **Insert token** or press **Ctrl+T** to open the global properties selector.
    3. Select the global property (for example, `$SCHEDULE DATE`). Double brackets are placed around the selected property automatically.
14. Select **Reset** to restore the parameters to their default template values, if needed.
15. Select **Finish** to save the event.

The event appears in the events list for the selected frequency.
