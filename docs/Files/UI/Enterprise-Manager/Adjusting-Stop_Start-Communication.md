---
title: Adjusting Stop/Start Communication with Machines
description: "Stop/Start communication controls whether OpCon actively communicates with an Agent on a given machine. Use this procedure to start or stop communication from the Machines editor in Enterprise Manager."
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

# Adjusting Stop/Start Communication with Machines

Stop/Start communication controls whether OpCon actively communicates with an Agent on a given machine. Stopping communication prevents new jobs from starting on that machine. Starting communication resumes normal job submission.

You must have the **Maintain Machines** function privilege to start or stop communication.

## Stop or start communication on a machine

To stop or start communication on a machine, complete the following steps:

1. In Enterprise Manager, go to **Administration** and select **Machines**.
2. In the **Select Machine** list, select the machine.
3. In the **Communication Status** section, right-click the status graphic.
4. Select **Start Communication** or **Stop Communication** from the menu.
5. Select **Close** to close the **Machines** editor.

**Result:** OpCon updates the machine's operational status. When you select **Start Communication**, the machine status changes to **Up** and begins waiting for the Agent connection. When you select **Stop Communication**, the machine status changes to **Down** and OpCon stops sending jobs to that machine.
