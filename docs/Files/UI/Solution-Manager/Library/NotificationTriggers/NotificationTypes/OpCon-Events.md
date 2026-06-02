---
title: OpCon Events
description: "Reference for the OpCon Events notification type in Solution Manager. Use this notification type to send one or more OpCon events when a notification trigger fires."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: reference
---

# OpCon Events

The **OpCon Events** notification type sends one or more OpCon events when a notification trigger fires. You configure the events using the **OpCon Events** dialog, which lists existing events for the trigger and provides options to add, edit, or delete them.

![OpCon Events](../../../../../../Resources/Images/SM/Library/NotificationTriggers/opcon-events-dialog.png "OpCon Events")

## OpCon Events dialog

The **OpCon Events** dialog displays the events currently associated with the notification trigger. From this dialog you can:

- Add a new event
- Edit an existing event
- Delete an existing event
- **Test** — sends a test for the activated notification of the trigger

## OpCon Event dialog

Selecting **Add** or editing an existing event opens the **OpCon Event** dialog.

![OpCon Event](../../../../../../Resources/Images/SM/Library/NotificationTriggers/opcon-event-dialog.png "OpCon Event")

### Event Template

Select an **Event Template** from the list to begin. The form updates dynamically based on the template you select, showing the required and optional parameter fields for that event type.

A preview of the complete event string displays below the **Event Template** field as you fill in the parameters.

### Add an OpCon event to a notification trigger

To add an OpCon event to a notification trigger, complete the following steps:

1. In the **OpCon Events** dialog, select **Add**.
2. In the **OpCon Event** dialog, select an **Event Template** from the list.
3. Fill in the required and optional parameter fields.
4. Select **Save** to save the event and return to the **OpCon Events** dialog.

**Result:** The new event appears in the events list and runs when the notification trigger fires.

### Edit an OpCon event

To edit an existing OpCon event, complete the following steps:

1. In the **OpCon Events** dialog, select the event you want to change.
2. Select the edit option to open the **OpCon Event** dialog.
3. Update the parameter fields as needed.
4. Select **Save** to apply the changes.

### Delete an OpCon event

To delete an OpCon event, complete the following steps:

1. In the **OpCon Events** dialog, select the event you want to remove.
2. Select the delete option.

**Result:** The event is removed from the list.

## Variables in events

You can insert variables into any part of an event definition using the notation `${variable}`. The same variable can appear multiple times in the same event or across events for the same Service Request; it is treated as a single user input, and the value you supply applies to every instance.

Variables are resolved before the event is sent to OpCon.

### System variables

The following system variables are available when OpCon events are used within a Service Request:

| Variable | Description |
|---|---|
| `${SM.USER.LOGIN}` | Login name of the OpCon user who selected the Service Request button |
| `${SM.USER.NAME}` | Full name of the OpCon user who selected the Service Request button |
| `${SM.USER.EMAIL}` | Email address of the OpCon user who selected the Service Request button |
| `${SM.USER.COMMENTS}` | Comments entered by the OpCon user who selected the Service Request button |
