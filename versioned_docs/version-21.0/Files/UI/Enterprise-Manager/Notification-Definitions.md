# Notification Definitions

The **Notification Definitions** frame provides tabs for configuring
notification types.

:::note
ENS allows the insertion of any OpCon Property in all notification fields. For additional information, refer to [Defining Global Properties](Defining-Global-Properties.md).
:::

Initially, the frame will display only a **General** tab, which provides
information on the defined notifications for the selected trigger. The
tab has the following options:

**Description**: This option allows you to provide a description and
purpose for the notification triggers to be sent.

**Notification Types**: These options allow you to specify the
notification types by selecting the applicable checkboxes. Each
selection enables a tab for defining the notification details.

:::note
For the fields supporting Tokens, use the Global Property Selector by pressing the **Ctrl/t** keyboard shortcut to find and define Tokens for Global Properties easily. You may also type a Token manually. For more information on Tokens, refer to [Tokens](../../../objects/using-properties.md#tokens) in the **Concepts** online help.
:::

Click on any of the following quick links to access the instructions on
how to define and send that notification type:

- [Send Email (SMTP)](Sending-Emails.md)
- [Send Short Text Message](Sending-Short-Text-Messages.md)
- [Send OpCon Events](Sending-OpCon-Events.md)
- [Send Windows Event Log](Sending-Windows-Event-Logs.md)
- [Send Network Message](Sending-Network-Messages.md)
- [Send SNMP Trap](Sending-SNMP-Traps.md)
- [Send SPO Event Report](Sending-SPO-Event-Reports.md)
- [Run Command](Running-Commands.md)

- **[Active/Inactive Notification     Status](Activating_Inactivating-Notifications.md)**: The power
    symbol to the left of each checkbox indicates the *Active*(green) or
    *Inactive* (red) status for each type of notification. By default,
    the power symbols are gray. You can click the power symbol to toggle
    the status from *Active* to *Inactive*.

- **Include Internal Job Number in Job Name frame**: This option
    determines whether the job name included in the Prefix Information
    for the notification message will be unique each time a notification
    is processed. The unique job name comprises the original job name
    and a unique SAM-generated job number.

- **Escalation Rule**: This option specifies the optional
    escalation rule to apply to an     email notification. By default, this drop-down list and search
    function are disabled and only become active if the **Send Email
    (SMTP)** checkbox is selected.

- **Save**: This button saves changes to the defined notifications and
    applies to all defined notification tabs. This button is only active
    when:
  - New notification details are being defined
  - Changes have been made to the current selection

- **Cancel**: This button cancels all changes made on the screen
    without committing them to the database.

- **[**Test All**](Sending-Notification-Tests.md)**: This button
    will send a test for all active notifications.
  - On all the specific notification tabs, the third button beneath
        the tabs is **Test**. When you select
        **[Test](Sending-Notification-Tests.md)**, the notification
        for the current tab will send a test.
  - If the notification has "default information," the Event
        Trigger value will be set to *Test Notification*.

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Entering Notification Definition     Information](Entering-Notification-Definition-Info.md)
- [Deleting Notification Definition     Information](Deleting-Notification-Definition-Info.md)
:::
