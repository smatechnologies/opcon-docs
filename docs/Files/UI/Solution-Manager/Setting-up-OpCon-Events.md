---
title: Setting up OpCon Events
description: Add and configure OpCon events on a Service Request in Solution Manager, including variable syntax and system variables.
product_area: Solution Manager
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

# Setting up OpCon Events

An OpCon event is a command sent to OpCon that triggers an automated action, such as adding a job to a Schedule, updating a property value, sending a notification, or changing a job or Schedule status. You can attach one or more events to a Service Request so that OpCon carries out those actions when a user submits the request.

## Add an event to a Service Request

To add an OpCon event to a Service Request, complete the following steps:

1. Open the **New Service Request** page in Solution Manager.
2. Under the **Events** label, select the **Add** button.

   ![Events toolbar with Add button](../../../Resources/Images/SM/Setting-Up-OpCon-Events.png "Events toolbar with Add button")

   The **Create New Event** window opens.

   ![Create New Event Screen](../../../Resources/Images/SM/Setting-Up-OpCon-Events_1.png "Create New Event Screen")

3. In the **Event Template** field, select the event template you want to use.

   :::note
   The **Event Template** list includes Administrative Events for advanced operations. For more information, refer to [Administrative Events](../../../events/types.md#Administ) in the **OpCon Events** online help.
   :::

   After you select a template:
   - The form updates dynamically to display the fields for that event type.
   - A preview of the fully defined event appears below the **Event Template** field in the dark area.
   - Variables in the event are resolved before the event is sent to OpCon.

4. Complete the event definition fields.

   :::note
   To define or edit an event manually instead of using the template form, select the **Manual Edit** button.

   ![Manual Edit](../../../Resources/Images/SM/Setting-Up-OpCon-Events_3.png "Manual Edit")
   :::

5. Select **OK** to save the event and return to the Service Request definition, or select **Cancel** to discard your changes.

**Result:** The event appears in the **Events** list on the Service Request definition page and runs when a user submits the request.

## Use variables in events

You can include variables in event definitions to pass dynamic values at run time.

- Use the syntax `${variable name}` to specify a variable anywhere in the event definition.
- You can use the same variable multiple times within a single event or across multiple events on the same Service Request. Each reuse maps to the same User Input, so the value the user supplies applies to every instance.

### System variables

Solution Manager provides the following system variables that resolve automatically when a user submits a Service Request. You do not need to define User Inputs for these variables.

| Variable | Resolves to |
|---|---|
| `${SM.USER.LOGIN}` | The login name of the OpCon user who submitted the Service Request |
| `${SM.USER.NAME}` | The full name of the OpCon user who submitted the Service Request |
| `${SM.USER.EMAIL}` | The email address of the OpCon user who submitted the Service Request |
| `${SM.USER.COMMENTS}` | The comments field defined on the OpCon user account of the user who submitted the Service Request |
