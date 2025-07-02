# Event Notifcation

Event Notification in OpCon is a process in which Machine, Schedule, and Job status change events generate (i.e., trigger) notifications. For critical notifications, administrators can also apply escalation rules to provide higher visibility.

The basic types of notifications include Windows Event Log, Email (SMTP), Network Message, SNMP Trap, Unisys Single Point of Operations (SPO) AL and CO Reports, Text Messages (SMS), OpCon Events, and Command. With OpCon, notifications can be created in several ways.

## Components

The Event Notification system in OpCon consists of the following components:

- **SMA Notify Handler**: Reads the OpCon database and writes the message according to notification type. For additional information, refer to [SMA Notify Handler](../server-programs/notify-handler.md).
- **Notification Manager**: Used to create groups and define notifications based on Machine, Schedule, and Job status change events in OpCon. For more information, including how to create Notification Groups and Triggers, refer to [Using Notification Manager](../Files/UI/Enterprise-Manager/Using-Notification-Manager.md).
  - **Notification Groups**: User-defined groups of either machines, schedules, or jobs. The items in these groups should be selected based on which common triggers and notifications should execute for that group of items.
  - **Notification Triggers**: When Machine, Schedule, and Job status change events occur; database triggers execute based on conditions defined in Notification Manager. Notification details that are defined in Notification Manager are sent to the SMA Notify Handler by way of the database.
- **Escalation Manager**: Used to configure notification escalation groups and rules. For more information, refer to [Using Escalation Manager](../Files/UI/Enterprise-Manager/Using-Escalation-Manager.md).
- **Escalation Acknowledgment**: Used to view escalations and to acknowledge them. For more information, refer to [Using Escalation Acknowledgment](../Files/UI/Enterprise-Manager/Using-Escalation-Acknowlegement.md).
