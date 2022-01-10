# Sending Network Messages

The **Network** tab provides the following fields for defining a Network
Pop-up Message notification:

:::caution
The SMANotifyHandler always attempts to use the **Msg.exe** program first. For a successful message, the Authentication User (UNC Access) and Authentication Password (UNC Access) must be defined in the Server Options. You must be an Administrator on the SAM application server and on every machine to which it will send messages. For more information, refer to **Authentication User (UNC Access)** and **[*Authentication Encrypted Password (UNC Access)** in [Server Options](../../../administration/server-options.md#smtp-server-settings)in the **Concepts** online help.
:::

- **Recipient Name(s)**(Required): Defines the machine host names,
    TCP/IP addresses, or Windows User Names separated by semicolons (;).
    The maximum for this field is 3,000 characters.
- **Message**: Defines a user-defined message up to 3,000 characters.
    In addition to the user-defined text, the message includes the
    default trigger information: trigger type and triggering status
    change event.

:::note
This notification type is disabled on Linux. Notifications defined prior to Release 20.0.0 will be disabled.
:::
