---
title: Setting Preferences for Window To Host
description: "Configure the Window to Host emulator command for each Agent platform so Enterprise Manager can open a terminal session directly from Operation views."
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

# Setting Preferences for Window To Host

Use **Window to Host** preferences to configure the terminal emulator command that Enterprise Manager runs when you select the **Window to Host** shortcut from an Operation view. You must configure a command for each Agent platform in your environment.

When you select **Window to Host** for a machine that has no command configured, Enterprise Manager opens this preferences page automatically so you can enter one before continuing.

## Configure the Window to Host command

To configure the emulator command for an Agent platform, complete the following steps:

1. Open Enterprise Manager.
2. Go to **Enterprise Manager > Preferences**. The **Preferences** dialog opens.
3. Select the expand arrow next to **Enterprise Manager** in the Preferences tree to expand the list.
4. Select **Window To Host**. The **Window To Host** settings appear on the right.
5. Select the platform from the **Platform** list.
6. Enter the emulator command in the **Command** field. Use the substitution variables listed below to pass machine information to the command.
7. Select **Apply**, then select **OK**.

**Result:** Enterprise Manager saves the command for the selected platform. When you select **Window to Host** from an Operation view for a machine of that platform type, Enterprise Manager runs the command and substitutes the machine variables.

## Substitution variables

The **Command** field supports the following variables. Enterprise Manager replaces each variable with the corresponding value from the machine definition at the time the command runs.

| Variable | Description |
|---|---|
| `[[IP]]` | Machine IP address |
| `[[HOSTNAME]]` | Machine hostname (fully qualified domain name) |
| `[[GATEWAY]]` | Machine gateway address |
| `[[MACHNAME]]` | Machine name as defined in OpCon |

**Examples:**

- UNIX: `/usr/bin/xterm -e ssh [[IP]]`
- Windows: `mstsc /v:[[IP]]`
