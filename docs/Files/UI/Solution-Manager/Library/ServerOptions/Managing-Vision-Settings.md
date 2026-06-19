---
title: Managing Vision Settings
description: "Configure Vision history retention and Vision Action trigger windows in Solution Manager."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-06-02
doc_type: procedural
---

# Managing Vision Settings

Vision Settings control how long OpCon retains Vision history data and how many days in the past and future OpCon evaluates when triggering Vision Actions.

## Required Privileges

To configure Vision Settings, you must have one of the following:

- **Role**: `Role_ocadm`
- **Function Privilege**: Maintain Server Options

## Configuring Vision Settings

To configure Vision Settings, complete the following steps:

1. Go to **Library** > **Server Options**.
2. Select the **VISION** tab.
3. Update one or more of the following fields:

   | Setting | Default | Range | Description |
   | ------- | ------- | ----- | ----------- |
   | **Days of Vision History to Keep** | 3650 | 1–3650 | The number of days OpCon retains Vision history data. |
   | **Days in Past to Trigger Vision Actions** | 1 | 1–10 | The number of days in the past used to evaluate and trigger Vision Actions. |
   | **Days in Future to Trigger Vision Actions** | 1 | 1–10 | The number of days in the future used to evaluate and trigger Vision Actions. |

   When you change a field from its default value, a user-defined indicator appears next to that field.

4. Select **Save**.

**Result:** OpCon applies the updated Vision Settings. A confirmation message confirms the save was successful.
<!--
![A screen showing Vision Settings under Server Options](../../../../../Resources/Images/SM/Library/ServerOptions/Vision-Settings.png "Configuring Vision Settings")
-->