---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Script Runners
description: "How to edit a script runner in the Enterprise Manager Script Runners editor."
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

# Editing Script Runners

A script runner defines the command template that an Agent uses to run an embedded script on a target machine. You can update the runner's name and command template after it is created. The **OS** and **Type of Script** fields are locked once a runner is saved, because jobs may already reference that runner.

:::note
You must have the **Maintain Embedded Script** function privilege to edit script runners. For more information, see [Privileges](../../../administration/privileges.md).
:::

## Edit a script runner

To edit a script runner, complete the following steps:

1. In the navigation pane, select **Runners** under the **Scripts** topic. The **Script Runners** screen opens.
2. Select the script runner you want to edit.
3. Select **Edit** on the toolbar. The **Edit Runner** dialog opens.
4. Update the **Name** field as needed.
5. Update the **Command Template** field as needed. Include the `$FILE` and `$ARGUMENTS` placeholders so the Agent receives the correct script path and parameters at runtime.
6. Select **Save**.

The **Script Runners** screen refreshes and displays the updated runner.

:::note
You cannot change the **OS** or **Type of Script** for an existing runner. To use a different OS or script type combination, add a new runner.
:::
