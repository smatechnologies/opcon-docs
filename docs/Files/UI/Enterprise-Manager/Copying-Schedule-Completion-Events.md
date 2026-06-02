---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying Schedule Completion Events
description: "Use this procedure to copy a Schedule Completion Event from one schedule to another in Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Copying Schedule Completion Events

Use this procedure to copy a Schedule Completion Event from one schedule to another in Enterprise Manager. Copying an existing event is useful when you want to reuse a configuration as a starting point and then adjust individual parameters for the target schedule.

To copy a schedule completion event, complete the following steps:

1. Select **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays.
2. Select the source schedule in the **Schedule Selection** list.
3. Select the **Events** tab in the **Schedule Details** frame.
4. Right-click the event in the **Schedule Completion Events** list and select **Copy**.
5. Select the destination schedule in the **Schedule Selection** list.
6. Select the **Events** tab in the **Schedule Details** frame.
7. Right-click inside the **Schedule Completion Events** list and select **Paste**. The **Event Definition Wizard** displays with the **Event Parameters** field pre-populated from the copied event.
8. Make any necessary changes to the event parameters, then select **Finish**.
9. Select **Close** (to the right of the **Schedule Master** tab) to close the **Schedule Master** screen.

The copied event appears in the **Schedule Completion Events** list for the destination schedule.
