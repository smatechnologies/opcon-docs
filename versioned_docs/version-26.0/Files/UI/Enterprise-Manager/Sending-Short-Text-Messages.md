# Sending Short Text Messages

The **Text** tab provides the following fields for defining a
notification to a pager, phone, or other SMS-capable device.

- **To** (Required): Defines the SMTP email address(es) or an
    address(es) for an SMS-capable device. Separate addresses with
    semicolons (;). The maximum for this field is 3,000 characters. Some
    examples of SMS-capable devices may include:
  - AT&T Wireless - phonenumber\@txt.att.net
  - T-Mobile - phonenumber\@tmomail.net
  - Verizon - phonenumber\@vtext.com
- **Message** (Required): Defines a user-defined message up to 160
    characters.

::note
Several carriers are in the process of deprecating email-to-text functionality on their networks. Best practice is to discontinue reliance on this functionality.
:::

:::note
The SMA Notify Handler will insert a Notification ID using the format ID=nnn before any other information in the message so users can look up the source of a notification. For more information, refer to [Looking up Notification Sources](Looking-up-Notification-Sources.md).
:::

The resulting message contains only the user-defined message.
