# Sending SNMP Traps

The **SNMP** tab provides the following fields for defining an SNMP trap
notification:

- **Event ID**(Optional): Defines a user-defined ID that can be a part
    of the search criteria in the notification filter for a third-party
    tool. The maximum for this field is 64 characters.
  - The SMA Notify Handler places this ID in the message with the
        format: "EventID=<space\>XXXXXX".
  - All characters are allowed except for the following: \~ (Tilde)
        , \# (Pound), % (Percent), ! (Exclamation), @ (At), $ (Dollar),
        \^ Carat
- **Severity**: Defines the choices for the message's severity level.
    The choices are: Information, Warning, or Error.
- **Message**: Defines a user-defined message up to 3,000 characters.
    In addition to the user-defined text, the message includes the
    default trigger information: Event ID, trigger type, and triggering
    status change event.

:::note
This notification type is disabled on Linux. Notifications defined prior to Release 20.0.0 will be disabled.
:::
