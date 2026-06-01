---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Using Agent Status
description: "Open the Agent Status page in Solution Manager directly from Enterprise Manager to view and update communication status for Agents."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Using Agent Status

The **Agent Status** link in Enterprise Manager opens the **Agents** page in Solution Manager. From that page, you can view each Agent's current communication state and change it to Enable Full Comm. (Job Start Enabled), Enable Limited Comm. (Job Start Disabled), or Disable Communication.

## Open Agent Status

To open Agent Status from Enterprise Manager, complete the following steps:

1. In the Enterprise Manager navigation pane, expand **Operation**.
2. Select **Agent Status**.

**Result:** Solution Manager opens in an embedded browser view and displays the **Agents** page. The page lists all defined Agents with columns for **Status**, **Name**, **Platform**, **Lastupdate**, **Running Jobs**, **Groups**, **Version**, **Socket**, and **TLS (Scheduling)**.

:::note
If Enterprise Manager cannot reach Solution Manager, an error message appears: "Could not access Solution Manager Server Option URL." Verify that the Solution Manager URL is configured correctly in the OpCon Server Options.
:::

## Next steps

For full instructions on filtering Agents, selecting one or more Agents, and applying a communication status change, see [Performing Agent Status Updates](../Solution-Manager/Performing-Agent-Status-Updates.md).
