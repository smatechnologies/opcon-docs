---
title: Managing Time Settings
description: "Configure SAM polling intervals and the daily schedule build hour in Solution Manager Server Options."
tags:
  - Procedural
  - System Administrator
  - Solution Manager
doc_type: procedural
---

# Managing Time Settings

## Required Privileges

To configure Time settings, you must have one of the following:

- **Role**: Role_ocadm
- **Function Privilege**: Maintain server options

## Configuring Time Settings

To configure Time settings, complete the following steps:

1. Go to **Library** > **Server Options**.
2. Select the **TIME** tab.

![A screen showing time settings under server options](../../../../../Resources/Images/SM/Library/ServerOptions/Time-Settings.png "Configuring Time Settings")

3. Update the settings as needed. See [Time Settings](#time-settings) for field descriptions and default values.
4. Select **Save**.

**Result:** OpCon applies the updated Time settings. Changes to **Hour of each day SAM should detect Schedules to build** take effect the following day.

:::note
When you change a setting from its default value, a user icon appears next to the field to indicate a user-defined value.
:::

## Time Settings

The fields on the **TIME** tab control the intervals SAM uses when polling job statuses and detecting schedules to build.

| Setting | Default | Range | Description |
|---|---|---|---|
| Hour of each day SAM should detect Schedules to build | `0` | 0–23 | The hour at which SAM detects schedules to build each day. Uses 24-hour format (0 = midnight, 23 = 11 p.m.). SAM processes builds once per day; changes to this setting take effect the following day. To configure build times for individual schedules, set them in the schedule definition. To enable notifications for failed builds, define OpCon events on the `SMA_SKD_BUILD` job on the AdHoc schedule. |
| Minutes between checking running jobs | `5` | 1–1440 | The maximum number of minutes SAM waits before checking job status. |
| Seconds SAM should wait between PreRun attempts | `180` | 0–32000 | The number of seconds between PreRun attempts. SAM retries PreRun jobs at this interval until the job succeeds. |
