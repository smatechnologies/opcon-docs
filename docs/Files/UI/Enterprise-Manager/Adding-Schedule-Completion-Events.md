---
title: Adding Schedule Completion Events
description: "Use this procedure to add a schedule completion event in Enterprise Manager."
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

# Adding Schedule Completion Events

A schedule completion event is an OpCon event that runs automatically when a schedule finishes for the day. Use this procedure to add a completion event to a schedule in Enterprise Manager.

To add a schedule completion event, complete the following steps:

1. Select **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays.
2. Select the schedule in the **Schedule Selection** list.
3. Select the **Events** tab in the **Schedule Details** frame.
4. Select **Add**. The **Event Definition Wizard** displays.
5. Select an OpCon event template from the **Event Template** list. For more information, refer to [OpCon Events](../../../events/introduction.md).

   :::tip Example
   ```
   $JOB:ADD,<schedule date>,<schedule name>,<job name>,<frequency name>
   ```
   :::

6. In the **Event Parameters** field, select a `<syntax placeholder>` (excluding surrounding commas) and replace it with valid OpCon event information.
7. To replace a placeholder with a token, complete the following steps:

   a. Select the syntax placeholder as described in step 6.

   b. Select **Insert token** or press **Ctrl+T** to list available global properties.

   c. Locate the global property by scrolling or using the search field. Windows wildcard characters are supported; you can filter by property name, value, or both (default).

   d. Select the global property (for example, `$SCHEDULE DATE`).

   :::note
   Double brackets are automatically placed around the token placeholder.
   :::

   :::tip Example
   ```
   $JOB:ADD,[[$SCHEDULE DATE]],Payroll,Emp1,15thofMonth
   ```
   :::

8. Select **Reset** to restore the original parameters, or select **Finish** to save the event.
9. Select **Close** (to the right of the **Schedule Master** tab) to close the **Schedule Master** screen.

The new event appears in the **Schedule Completion Events** list on the **Events** tab.
