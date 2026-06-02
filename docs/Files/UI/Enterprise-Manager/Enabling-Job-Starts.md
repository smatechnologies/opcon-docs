---
title: Enabling Job Starts
description: "How to enable job starts on a machine that is in Limited status in Enterprise Manager."
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

# Enabling Job Starts

When a machine is in **Limited** status, OpCon accepts communication from the Agent but does not submit new jobs to it. Enabling job starts returns the machine's operational status to **Up**, allowing OpCon to resume submitting jobs to that machine.

You must have the **Maintain Machines** function privilege to perform this procedure.

## Enable job starts on a machine

To enable job starts on a machine in Limited status, complete the following steps:

1. In the **Operation** topic, select **Machines Status**.
2. Select the **Table** tab or the **Map** tab.
3. Right-click the machine that requires job starts to be enabled.
4. Select **Enable Job Starts** from the menu.

**Result:** The machine's operational status changes from **Limited** to **Up**, and OpCon resumes submitting jobs to the machine.
