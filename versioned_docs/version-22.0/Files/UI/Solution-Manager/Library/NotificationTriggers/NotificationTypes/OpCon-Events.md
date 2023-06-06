
# OpCon Events

![OpCon Events](../../../../../../Resources/Images/SM/Library/NotificationTriggers/opcon-events-dialog.png "OpCon Events")

The **OpCon Events** dialog provides the a list of existing events, in this dialog the user has the options for editing or deleting existing events or adding a new event

- **Test**: Sends a test for the activated notification of the
    trigger.



The **OpCon Event** dialog provides fields for defining an event

Select the **event** in the **Event Template** drop-down list.
![OpCon Event](../../../../../../Resources/Images/SM/Library/NotificationTriggers/opcon-event-dialog.png "OpCon Event")

Select an OpCon **Event Template** to start
defining event details. Once you choose a template, the screen
dynamically changes to provide UI assistance for filling out the event
details.

Insert *variable(s)* into any part of the Event using the following
notation: **${variable}**

- You can use the same variable multiple times in the same Event, as
    well as in other Events for the same Service Request. If you do
    this, the variable will appear as only one User Input. This means
    that the one value the user supplies will be used for every instance
    of that variable.

- You have the option to use the following system     variables specifically in Solution Manager:

  - **${SM.USER.LOGIN}** - Resolves to the Name defined for the
        OpCon user who clicked the Service
        Request button.
  - **${SM.USER.NAME}** - Resolves to the Full User Name defined
        for the OpCon user who clicked the
        Service Request button.
  - **${SM.USER.EMAIL}** - Resolves to the Email Address defined
        for the OpCon user who clicked the
        Service Request button.
  - **${SM.USER.COMMENTS}** - Resolves to the Comments defined for
        the OpCon user who clicked the
        Service Request button.

The variable(s) will be resolved before the Event is sent to
OpCon.

- A preview of the defined Event displays below the **Event Template**
    drop-down list, as shown in the example graphic.

Complete the *Event definition*.

Click the **OK** button to apply your changes and return to the
**OpCon Events** page. You can also select the **Cancel**
button to discard the Event changes.

