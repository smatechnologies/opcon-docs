---
title: Sending Notification Tests
description: "Send a test notification from Enterprise Manager to verify that notification definitions are configured correctly."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-06-01
doc_type: procedural
---

# Sending Notification Tests

Use this procedure to send a test notification from Enterprise Manager and verify that your notification definitions are working correctly. You can test all active notification definitions at once or test a single notification type individually.

## Send a Test of All Active Notifications

To send a test of all active notification definitions, complete the following steps:

1. In Enterprise Manager, select **Notification Manager** under the **Management** topic.

   The **Notification Manager** screen displays.

2. In the **Notification Triggers** panel, select the trigger whose notification definitions you want to test.

3. In the **Notification Definitions** panel, select the **General** tab.

4. Select **Test All**.

**Result:** Enterprise Manager sends a test message for each active notification definition associated with the selected trigger. The confirmation message "The test message has been sent." displays when the test completes successfully.

## Send a Test of a Single Notification Type

To send a test of a specific notification type, complete the following steps:

1. In Enterprise Manager, select **Notification Manager** under the **Management** topic.

   The **Notification Manager** screen displays.

2. In the **Notification Triggers** panel, select the trigger whose notification definition you want to test.

3. In the **Notification Definitions** panel, select the tab for the specific notification type you want to test (for example, **Send Email (SMTP)** or **Send Windows Event Log**).

4. Select **Test**.

**Result:** Enterprise Manager sends a test message for that notification type. The confirmation message "The test message has been sent." displays when the test completes successfully.

:::note
If the selected notification type is set to inactive, the test will not send and an error message displays instead.
:::

:::note
For both test types, the Event Trigger value is set to `Test Notification` when the test is sent.
:::
