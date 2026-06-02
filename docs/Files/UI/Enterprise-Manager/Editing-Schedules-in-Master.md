---
title: Editing Schedules in Master Schedule Tables
description: "Use this procedure to edit Schedules in Master Schedule Tables in Enterprise Manager."
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

# Editing Schedules in Master Schedule Tables

Use this procedure to edit a Schedule definition in the Master Schedule tables using Enterprise Manager. Changes saved to Master tables apply to all future builds of that Schedule.

:::note
Changes made in the Master tables take effect the next time the Schedule is built. They do not affect the current day's Daily table instance.
:::

To edit a Schedule in the Master Schedule tables, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Select the **expand arrow** next to the date for the Schedule you want to edit.
3. Select the Schedule to edit.
4. Select **Edit Master** in the **Maintenance** frame. The **Schedule Master** screen displays.
5. *(Optional)* Select the **Schedule** tab and enter your changes.
6. Select **Save** on the **Schedule Master** toolbar.
7. *(Optional)* Select the **Frequency** tab. The **Frequency Definition Wizard** displays. Enter your changes, then select **Finish**.
8. *(Optional)* Select the **Events** tab. The **Event Definition Wizard** displays. Enter your changes, then select **Finish**.
9. Select **Close** to close the **Schedule Master** screen.
10. Select **Close** to close the **Daily Maintenance** screen.

**Result:** The Schedule definition is updated in the Master tables and the changes take effect the next time the Schedule is built.
