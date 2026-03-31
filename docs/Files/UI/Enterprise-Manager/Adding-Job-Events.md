---
title: Adding Job Events
description: "Use this procedure to add Job Events in the Enterprise Manager."
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

# Adding Job Events

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Job Events in the Enterprise Manager.

## Setting Job-Related Events

To add a new job event:

1. Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2. Select the **schedule** in the **Schedule** list
3. Select the **job** in the **Job** list
4. Select the **Events** tab in the **Job Properties** frame
5. Select the **Job Related** radio button

6. Select the **Add** button. The **Event Definition Wizard** displays
7. On the **Event Trigger** screen, select one of the following radio buttons: **Job Status**, **LSAM Feedback**, **Exit Description**, or **Job Completion Complex Expression**
8. Select **Next** to proceed to the **Trigger Details** screen. Complete the fields based on your selection in step 7:
   - **Job Status**: Select the **job status** in the **Job Status** list
   - **LSAM Feedback**: Select the **Feedback name**, then enter a *string to match* in the **String to match** field
   - **Exit Description**: Select the **Operator** in the **Comparison Operator** list, enter a value in the **Value** field, and enter the range end in the **End Value** field
   - **Job Completion Complex Expression**: Enter the *expression* in the **Expression** text box. For more information, refer to [Property Expressions API Syntax](../../../reference/property-expressions-syntax.md)
9. Select **Next** to advance to the **Event Definition** screen
10. Select an **OpCon event template** from the **Event Template** list. For more information, refer to [OpCon Events](../../../events/introduction.md)

    :::tip Example

    ```shell
    $JOB:ADD,<schedule date\>,<schedule name\>,<job name\>,<frequency name\>
    ```

    :::

To set Job-Related Events, complete the following steps:

11. In the **Event Parameters** text box, select a **\<syntax placeholder\>** (excluding surrounding commas) and replace it with valid OpCon event information
12. To use a token instead of a literal value:
    a. Select the syntax placeholder as described in step 11.
    b. Select **Insert token** or press **Ctrl/t** to list available global properties.
    c. Locate the global property by scrolling or using the search field (Windows wildcards supported; filter by name, value, or both).
    d. Select the **global property** (e.g., `$SCHEDULE DATE`).

    :::note
    Double brackets are automatically placed around the token placeholder.
    :::

    :::tip Example
    $JOB:ADD,\[\[$SCHEDULE DATE\]\],Payroll,Emp1,15thofMonth
    :::


13. Select **Reset** to reset parameters to their original states, if needed
14. Select **Finish** to save the job event, or **Cancel** to discard
15. Select **Close ☒** to close the **Job Master** screen

## Setting Frequency-Related Events

To add a new job event:

1. Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2. Select the **schedule** in the **Schedule** list
3. Select the **job** in the **Job** list
4. Select the **Events** tab in the **Job Properties** frame
5. Select the **Frequency Related** radio button

6. Select the **frequency** in the **Frequency list** to apply the event
7. Select the **Add** button. The **Event Definition Wizard** displays
8. On the **Event Trigger** screen, select one of the following radio buttons: **Job Status**, **LSAM Feedback**, **Exit Description**, or **Job Completion Complex Expression**
9. Select **Next** to proceed to the **Trigger Details** screen. Complete the fields based on your selection in step 8:
   - **Job Status**: Select the **job status** in the **Job Status** list
   - **LSAM Feedback**: Select the **Feedback name**, then enter a *string to match* in the **String to match** field
   - **Exit Description**: Select the **Operator** in the **Comparison Operator** list, enter a value in the **Value** field, and enter the range end in the **End Value** field
   - **Job Completion Complex Expression**: Enter the *expression* in the **Expression** text box. For more information, refer to [Property Expressions API Syntax](../../../reference/property-expressions-syntax.md)
10. Select **Next** to advance to the **Event Definition** screen
11. Select an **OpCon event template** from the **Event Template** list. For more information, refer to [OpCon Events](../../../events/introduction.md)

    :::tip Example
    $JOB:ADD,<schedule date\>,<schedule name\>,<job name\>,<frequency name\>
    :::

12. In the **Event Parameters** text box, select a **\<syntax placeholder\>** (excluding surrounding commas) and replace it with valid OpCon event information

13. To use a token instead of a literal value:
    a. Select the syntax placeholder as described in step 12.
    b. Select **Insert token** or press **Ctrl/t** to list available global properties.
    c. Scroll down and select the **Global Property** (e.g., `$SCHEDULE DATE`).
14. Select **Reset** to reset parameters to their original states, if needed
15. Select **Finish** to save the job event, or **Cancel** to discard
16. Select **Close ☒** to close the **Job Master** screen


## FAQs

**Q: What information is required to add job events?**

The required fields include **Expression**, **Expression**. Select **Save** on the toolbar to save the new record.

**Q: Can you add job events for multiple platforms?**

Yes. This page covers job events for multiple platforms or contexts: Setting Job-Related Events, Setting Frequency-Related Events.

## Glossary

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
