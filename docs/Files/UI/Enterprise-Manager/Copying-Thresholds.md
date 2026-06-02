---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying Thresholds
description: "How to copy a threshold in Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-06-02
doc_type: procedural
---

# Copying Thresholds

Copying a threshold creates a new threshold that starts with the same value, style, and documentation as the original. Use this approach when a new threshold requires a configuration similar to an existing one.

To copy a threshold, complete the following steps:

1. Go to **Administration** in Enterprise Manager, then select **Thresholds**. The **Thresholds** screen opens.
2. In the **Select Threshold** list, select the threshold you want to copy. To find a specific threshold, select **Find**.
3. On the **Thresholds** toolbar, select **Copy**. The **Copy Threshold** dialog opens with the original threshold name pre-filled.
4. In the name field, enter a unique name for the new threshold. The name must be no longer than 20 characters and must not match any existing threshold name.
5. Select **OK**.

The new threshold appears in the **Select Threshold** list and is selected automatically.

:::note
The **Copy** button is available only when you have selected a threshold and have no unsaved changes in the editor. Save or discard any pending changes before copying.
:::
