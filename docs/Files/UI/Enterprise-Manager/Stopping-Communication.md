---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Stopping Communication
description: "Stop communication with an Agent from the Machines Status view in Enterprise Manager when the Agent status is Up or Limited."
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

# Stopping Communication

Use this procedure to stop communication between OpCon and an Agent. The **Stop Communication** option is available only when the Agent's current status is **Up** or **Limited**. After you stop communication, the Agent status changes to **Down**.

You must have the **Maintain Machines** function privilege to perform this procedure.

To stop communication with an Agent, complete the following steps:

1. In Enterprise Manager, go to **Operation** and select **Machines Status**.
2. Select the **Table** tab or the **Map** tab.
3. Right-click the Agent whose communication you want to stop.
4. Select **Stop Communication** from the context menu.

**Result:** The Agent's status changes to **Down**, and OpCon stops sending job requests to that Agent.
