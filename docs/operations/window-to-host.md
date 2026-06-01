---
title: Open Window to Host
description: "The Window to Host feature opens a configured terminal emulator to connect directly to a machine defined in OpCon from Enterprise Manager Operation views."
product_area: Operations
audience: Operations Staff, System Administrator
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Operations Staff
  - System Administrator
  - Machine
last_updated: 2026-03-18
doc_type: conceptual
---

# Open Window to Host

The **Window to Host** feature opens a configured terminal emulator to connect directly to a machine defined in OpCon. The action is available from the context menu in Enterprise Manager Operation views, on both machines and jobs.

## How it works

When you right-select a machine or job in an Operation view and select **Window To Host**, Enterprise Manager runs the emulator command you configured for that machine's platform type. It substitutes machine-specific values into the command before running it.

If no command is configured for the selected platform, Enterprise Manager opens the **Window To Host** preferences dialog automatically so you can enter one before continuing.

The action is not available for Container jobs, Null jobs, or jobs with no machine assigned.

## Substitution variables

Use the following variables in the emulator command. Enterprise Manager replaces each variable with the corresponding value from the machine record at run time.

| Variable | Replaced with |
|---|---|
| `[[IP]]` | Machine's IP address |
| `[[HOSTNAME]]` | Machine's hostname (fully qualified domain name) |
| `[[GATEWAY]]` | Machine's gateway |
| `[[MACHNAME]]` | Machine's name as defined in OpCon |

## Configure Window to Host preferences

To configure the emulator command for each platform, complete the following steps:

1. Open Enterprise Manager.
2. Go to **Enterprise Manager > Preferences**. The **Preferences** dialog opens.
3. Select the expand arrow next to **Enterprise Manager** in the preferences tree.
4. Select **Window To Host**. The **Window To Host** settings appear on the right.
5. Select the platform from the **Platform** list.
6. Enter the emulator command in the **Command** field. Use substitution variables as needed (see [Substitution variables](#substitution-variables)).
7. Select **Apply**, then select **OK**.

**Result:** Enterprise Manager saves the command for the selected platform. The next time you select **Window To Host** for a machine of that platform type, it runs the configured command.

For more information, see [Setting Preferences for Window To Host](../Files/UI/Enterprise-Manager/Preferences-for-Windows-To-Host.md).
