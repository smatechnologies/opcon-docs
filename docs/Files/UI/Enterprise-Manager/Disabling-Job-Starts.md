---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Disabling Job Starts
description: "How to disable job starts on a machine in Enterprise Manager using the Machines Status view."
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

# Disabling Job Starts

Disabling job starts places a machine into a limited state, which prevents OpCon from sending new jobs to that machine while allowing it to remain connected. Use this procedure when you need to stop job activity on a specific machine without fully stopping it.

:::note
You must have the **Maintain Machines** function privilege to perform this procedure.
:::

## Disable job starts on a machine

To disable job starts on a machine, complete the following steps:

1. In Enterprise Manager, go to **Machines Status** under the **Operation** topic.
2. Select the **Table** tab or the **Map** tab.
3. Right-click the machine on which you want to disable job starts.
4. Select **Disable Job Starts** from the menu.

**Result:** The machine status changes to **Limited**. OpCon stops sending new jobs to the machine. Jobs already running on the machine continue until they finish.
