---
title: Adding Daily Schedule Events
description: "Add an OpCon event to a daily schedule in Enterprise Manager using the Event Definition Wizard."
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
doc_type: procedural
  - Enterprise Manager
---

# Adding Daily Schedule Events

Use this procedure to attach an OpCon event to a daily schedule in Enterprise Manager. Events trigger automated actions — such as adding a job, updating a property, or changing a schedule status — at schedule run time.

## Add an event to a daily schedule

To add an event to a daily schedule, complete the following steps:

1. In the Enterprise Manager navigation pane, select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Select the expand arrow next to the date that contains the schedule you want to modify.
3. Select the **schedule**.
4. In the **Maintenance** frame, select **Edit Daily**. The **Schedule Daily** screen displays.
5. Select the **Events** tab.
6. In the **Events** frame, select **Add**. The **Event Definition Wizard** displays.
7. From the **Event Template** list, select an OpCon event template. For a full list of available templates and syntax, see [OpCon Events](../../../events/introduction.md).

   :::tip Example
   `$JOB:ADD,<schedule date>,<schedule name>,<job name>,<frequency name>`
   :::

8. In the **Event Parameters** field, place the cursor at the beginning of a `<syntax placeholder>`, then drag to select the entire placeholder, excluding the surrounding commas — for example, `,<schedule name>,`.
9. Replace the selected placeholder with the appropriate value.

   **Result:** The placeholder is replaced with the value you typed.

To replace a placeholder with a token (global property), complete the following steps:

1. Select the syntax placeholder as described in step 8 above.
2. Select the **Insert token** button or press **Ctrl+T**. A list of available global properties displays.
3. Locate the global property by scrolling, or use the search field. You can use Windows wildcard characters to filter by property name, property value, or both.
4. Select the **global property** to insert it.

   :::note
   Double brackets are automatically placed around the inserted token.
   :::

   :::tip Example
   `$JOB:ADD,[[$SCHEDULE DATE]],Payroll,Emp1,15thofMonth`
   :::

5. To discard your placeholder replacements and restore the original parameter syntax, select **Reset**.
6. Select **Finish** to save the event, or **Cancel** to discard changes.

   **Result:** The event is saved to the daily schedule.

7. Select **Close** to close the **Schedule Daily** screen.
8. Select **Close** to close the **Daily Maintenance** screen.
