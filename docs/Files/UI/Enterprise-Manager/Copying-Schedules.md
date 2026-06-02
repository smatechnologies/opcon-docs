---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying Schedules
description: "Copy an existing Schedule in Enterprise Manager to reuse its configuration as the starting point for a new Schedule."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-06-02
doc_type: procedural
---

# Copying Schedules

Copying a Schedule duplicates all settings from the original — including jobs and Schedule privileges — into a new Schedule with a unique name. Use this approach when a new Schedule shares most of its configuration with an existing one.

To copy a Schedule, complete the following steps:

1. Go to **Administration** and select **Schedule Master**. The **Schedule Master** screen opens.
2. Select a Schedule from the **Schedule** list, or select **Find** to locate the Schedule.
3. Select **Copy Schedule** on the **Schedule Master** toolbar. The **Copy Schedule** dialog opens.
4. In the **New Schedule Name** field, enter a unique name for the new Schedule. The name can be up to 40 characters.
5. If you do not want to copy jobs from the original Schedule, clear the **Copy Jobs** option. This option is selected by default.
6. If you do not want to copy Schedule privileges to the new Schedule, clear the **Copy Schedule Privileges** option. This option is selected by default.
7. Select **OK**.

**Result:** The new Schedule appears in the Schedule list with the name you entered. If the name is already in use, Enterprise Manager displays an error and returns focus to the name field.
