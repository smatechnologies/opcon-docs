---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Starting Communication
description: "Start communication on an agent machine that is not currently enabled or limited, using the Machines Status view in Enterprise Manager."
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

# Starting Communication

Use the **Start Communication** action to bring an agent machine from a stopped state into communication with OpCon. This action is available only when the machine is not already enabled or in a limited state.

**Required privilege:** Maintain Machines

## Start communication on an agent machine

To start communication on an agent machine, complete the following steps:

1. In the **Operation** section of the navigation pane, select **Machines Status**.
2. Select the **Table** tab or the **Map** tab.
3. Right-click the machine that requires communication to be started.
4. Select **Start Communication** from the context menu.

**Result:** OpCon sets the machine's operational status to Up and its network status to Waiting. The machine attempts to establish communication with its agent.
