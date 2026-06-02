---
title: Defining Schedule Instances for Machines in Machine Groups
description: "Define schedule instances for machines in machine groups using Schedule Master in Enterprise Manager."
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

# Defining Schedule Instances for Machines in Machine Groups

When you configure a schedule as multi-instance and associate it with a machine group, OpCon builds one schedule instance per machine in that group each time the schedule runs. This lets you run the same automation across multiple machines simultaneously without duplicating schedule definitions.

To define a schedule instance for each machine in a machine group, complete the following steps:

1. Select **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays.
2. Select the schedule in the **Schedule Selection** list.
3. Select the **Schedule** tab in the **Schedule Details** frame.
4. Select the **Multi-Instance** option in the **Schedule Properties** frame.
5. Select the **Instance Definition** tab in the **Schedule Details** frame.
6. Select the **Build an instance for each machine in Machine Group** option.
7. Select a machine group in the **Machine Group** list.
8. Select ![Green circle with white checkmark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar.
9. Select **Close ☒** to close the **Schedule Master** screen.

**Result:** OpCon saves the schedule configuration. When the schedule is built, it creates one instance for each machine in the selected machine group.
