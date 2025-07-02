# Sending SPO Event Reports

The **SPO** tab provides the following fields for defining an SPO AL
Report or a CO Report notification:

- **AL**: If enabled, defines the AL report fields.
- **Text**(Optional): Defines the user-defined message up to 250
    characters.
  - If no text is specified, the default information of <lsam_mach_name\> <schedule_date\> <schedule_name\><job_name\> is passed with the notification.
  - If text is specified, the resulting SPO message contains only
        the user-defined message.
- **Severity**: Defines the choices for the message's severity level.
    The choices are: Informational, Minor, Major, Warning, Critical,
    Indeterminate, or Unselect.
- **Alarmid**(Optional): Defines any valid AL alarmid attribute. If no
    user-defined alarmid is specified and the SPO Default Alarm ID is
    not set in the UI's Administration \> Options, the LSAM Machine
    name is sent with the event report. The maximum for this field is
    250 characters.
- **Alarmqual**(Optional): Defines any valid AL alarmqual attribute.
    If no user-defined alarmqual is specified, the Schedule and Job Name
    are sent with the event report. The maximum for this field is 250
    characters.
- **CO**: If enabled, presents the CO report fields.
- **Instance**(Required): Defines any valid CO instance attribute. The
    attribute defined in the SPO configuration is case-sensitive. The
    maximum for this field is 250 characters.
- **Command**(Optional): Defines any valid CO command attribute. The
    Command field requires any valid Command attribute. The maximum for
    this field is 250 characters.

The resulting SPO message contains only the user-defined message.

:::note
This notification type is disabled on Linux. Notifications defined prior to Release 20.0.0 will be disabled.
:::
