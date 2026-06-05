---
title: Reset Settings
description: "Reset Settings in Solution Manager's Server Options lets you restore server option values to their system defaults — for all options at once or for just the current tab — without reverting each setting individually."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-05-29
doc_type: procedural
---

# Reset Settings

**Theme:** Configure
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Reset Settings on the **Server Options** page in Solution Manager lets you restore server option values to their system defaults. You can reset every option across all tabs at once, or reset only the options on the tab you are currently viewing. Resetting stages the default values in the form; the changes are not stored until you save them, so you can review or undo them first.

Use Reset Settings when configuration changes need to be rolled back to a known baseline without reverting each field by hand.

## Required Privileges

To reset settings, you must have one of the following:

- **Role**: Role_ocadm
- **Function Privilege**: Maintain Server Options

If you do not have this privilege, the **Server Options** fields are read-only and the Save and reset buttons are not available.

## Reset all server options

To reset every server option across all tabs to its system default, complete the following steps:

1. In Solution Manager, go to **Server Options**.
2. Select **Reset All to Default**.
3. Review the staged default values across the tabs.
4. Select **Save** to store the defaults, or select **Cancel** to discard them.

**Result:** All server options are restored to their system default values once you save.

> The **Reset All to Default** button is unavailable when all tabs already hold their default values.

## Reset the current tab

To reset only the options on the tab you are currently viewing, complete the following steps:

1. In Solution Manager, go to **Server Options**.
2. Open the tab whose options you want to reset.
3. Select **Reset Current Tab to Default**.
4. Review the staged default values on the tab.
5. Select **Save** to store the defaults, or select **Cancel** to discard them.

**Result:** The options on the current tab are restored to their system default values once you save.

> The **Reset Current Tab to Default** button is unavailable when the current tab already holds its default values.

## Buttons

The button bar at the bottom of the **Server Options** page provides the following actions:

| Button | What It Does |
|---|---|
| **Save** | Stores the current changes, including any staged default values. |
| **Reset All to Default** | Stages system default values for every server option across all tabs. |
| **Reset Current Tab to Default** | Stages system default values for the options on the current tab. |
| **Cancel** | Discards unsaved changes made in the current session. |

## FAQs

**Does resetting take effect immediately?**

No. Resetting stages the default values in the form. The defaults are stored only after you select **Save**. Select **Cancel** to discard them before saving.

**Can I reset a single field instead of a whole tab?**

## Related Topics

