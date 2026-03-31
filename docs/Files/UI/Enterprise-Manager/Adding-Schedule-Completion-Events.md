---
title: Adding Schedule Completion Events
description: "Use this procedure to add Schedule Completion Events in the Enterprise Manager."
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

# Adding Schedule Completion Events

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Schedule Completion Events in the Enterprise Manager.

To add a new schedule completion event, complete the following steps:

1. Select on **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays
2. Select the **schedule** in the **Schedule** list
3. Select the **Events** tab in the **Schedule Details** frame
4. Select **Add**. The **Event Definition Wizard** displays
5. Select an **OpCon event template** from the **Event Template** list. For more information, refer to the [OpCon Events](../../../events/introduction.md) online help

:::tip Example

```shell
$JOB:ADD,<schedule date\>,<schedule name\>,<job name\>,<frequency name\>]
```

:::

6. In the **Event Parameters** text box, select a **\<syntax placeholder\>** (excluding surrounding commas) and replace it with valid OpCon event information
7. To replace a placeholder with a token:

   a. Select the syntax placeholder as described in Step 6.
   b. Select ![Insert Token button](../../../Resources/Images/EM/EMinserttoken.png "Insert Token button") **Insert token** or press **Ctrl+T** to list available global properties.
   c. Locate the global property by scrolling or using the search field. Windows wildcard characters are supported; filter by property name, value, or both (default).
   d. Select the **global property** (e.g., $SCHEDULE DATE).

:::note
Double brackets are automatically placed around the token placeholder.
:::

:::tip Example

```shell
$JOB:ADD,\[\[$SCHEDULE DATE\]\],Payroll,Emp1,15thofMonth
```

:::

8. Select **Reset** to restore original parameters, or select **Finish** to save changes. Select **Cancel** to discard changes
9. Select **Close ☒** (to the right of the **Schedule Master** tab) to close the **Schedule Master** screen

## When Would You Use It?

- You need to add Schedule Completion Events in Enterprise Manager
- The environment is expanding and requires additional Schedule Completion Events to support new automation workflows

## Why Would You Use It?

- **Extend automation scope**: Adding Schedule Completion Events to OpCon brings additional resources under centralized scheduling, monitoring, and event processing
- All additions are tracked in the OpCon audit log, recording who added the Schedule Completion Events and when


## FAQs

**Q: How do you save a new schedule completion events record?**

After completing the required fields, select the **Save** button on the toolbar to save the schedule completion events record.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
