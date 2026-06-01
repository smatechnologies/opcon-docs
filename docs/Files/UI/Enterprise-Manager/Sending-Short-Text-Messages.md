---
title: Sending Short Text Messages
description: "Field reference for the Text tab in Notification Manager, which defines SMS notifications sent to pagers, phones, or other email-to-SMS devices."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: reference
---

# Sending Short Text Messages

The **Text** tab in Notification Manager defines a short text message notification delivered to a pager, phone, or other SMS-capable device. OpCon sends the message through an SMTP relay using the carrier's email-to-SMS gateway address.

:::note
Several carriers are deprecating email-to-text functionality. Best practice is to discontinue reliance on this feature.
:::

## Text Tab Fields

| Field | Required | Description |
|---|---|---|
| **To** | Yes | One or more SMTP email addresses for SMS-capable devices, separated by semicolons or commas. Maximum 3,000 characters. |
| **Message** | Yes | The text body delivered to the recipient. Maximum 160 characters. |

### To Field — Carrier Gateway Examples

| Carrier | Gateway format |
|---|---|
| AT&T Wireless | `phonenumber@txt.att.net` |
| T-Mobile | `phonenumber@tmomail.net` |
| Verizon | `phonenumber@vtext.com` |

## Notification ID Prefix

For notifications triggered by external events, the SMA Notify Handler prepends a notification ID in the format `ID=nnn` before the message body, unless the notification is configured to exclude the ID. Use this ID to trace the notification back to its source trigger in the **Notification Lookup** dialog.

For more information, refer to [Looking up Notification Sources](Looking-up-Notification-Sources.md).
