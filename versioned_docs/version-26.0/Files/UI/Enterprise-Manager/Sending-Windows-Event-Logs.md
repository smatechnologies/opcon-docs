# Sending Windows Event Logs

The **Event Log** tab provides the following fields for defining a
Windows Event Log notification:

- **Event ID** (Optional): Defines a user-defined ID that can be a
    part of the search criteria in the notification filter for a
    third-party tool. The maximum for this field is 64 characters.
  - The SMA Notify Handler places this ID in the message with the
        format: "EventID=<space\>XXXXXX".
  - All characters are allowed, except for the following: ~ (Tilde)
        , \# (Pound), % (Percent), ! (Exclamation), @ (At), $ (Dollar),
        ^ (Carat)
- **Severity**: Defines the choices for the message's severity level.
    The choices are: Information, Warning, or Error.
- **Custom Event Source**(Optional): Displays the **Event Source**
    text field when selected. The **Event Source** text field defines a
    custom Source ID for OpCon to use when writing to the Windows Event
    Log. The maximum for this field is 64 characters.
  - The SMA Notify Handler attaches a "OPCON:" prefix to the event
        source to prevent conflicts and duplications.
  - The following characters are allowed: a-Z and 0-9
        (Alphanumeric), - (Dash), \_ (Underscore), " " (Space), ","
        (Comma), "." (Period), "=" (Equal Sign), "(" & ")"
        (Parentheses).
- **Message**: Defines a user-defined message up to 3,000 characters.
    In addition to the user-defined text, the message includes the
    default trigger information: Event ID, trigger type, and triggering
    status change event.

When the message appears in the Windows Event Log, any notification
product able to read this log can send notifications.

:::note
This notification type is disabled on Linux. Notifications defined prior to Release 20.0.0 will be disabled.
:::
