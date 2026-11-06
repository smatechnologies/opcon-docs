---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Managing Integrations
description: "Upgrade Integrations running on a Relay or NetCom directly from Solution Manager, using a live upgrade that avoids a restart in most cases."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-09-22
doc_type: procedural
---

# Managing Integrations

Integrations connect OpCon to the systems and applications your schedules interact with. Each Integration runs on a Relay or a NetCom. Use the **Integrations** page in Solution Manager to see which Integrations have an upgrade available and to apply that upgrade.

:::note
Integrations were previously called Connectors in Solution Manager. If you are looking for Connectors, see [Where to find it](#where-to-find-it) below — the page and its features are unchanged, only the name changed.
:::

## Where to find it

Go to **Library** > **Integrations**.

<!--
![Integrations page in Solution Manager](../../../../../Resources/Images/SM/Library/Integrations/Integrations-Grid.png "Integrations page in Solution Manager")
-->

The **Integrations** page displays two grids: **Relays** and **NetComs**. Each grid lists the Integrations registered on that type of host. Within each grid, Integrations are grouped under the Relay or NetCom that hosts them — select a group's name to show or hide the Integrations within it.

Each row includes the following information.

| Column | Description |
|---|---|
| **Name** | The Integration's name. |
| **Version** | The version of the Integration currently running. |
| **Available Version** | The newest version available to install, if one exists. An update indicator appears next to the version when an upgrade is available. |
| **Machine** | The machine the Relay or NetCom hosting the Integration is running on. |
| **Last Seen** | The date and time OpCon last received a status update from the Integration. |

Select the **Refresh** button to reload both grids with the latest registration and upgrade-availability information.

## Applying an Integration upgrade

You can upgrade an Integration to a newer version when an upgrade is available.

:::note
You must have the OCADM role to upgrade an Integration.
:::

To upgrade an Integration, complete the following steps:

1. Go to **Library** > **Integrations**.
2. In the **Relays** grid or the **NetComs** grid, select the Integration you want to upgrade. The **Upgrade** button is enabled only when the selected Integration has an available upgrade.
3. Select the **Upgrade** button. The Upgrade Integration window is displayed, showing the current version and the version you are upgrading to.
4. Select the **Upgrade** button in the Upgrade Integration window.

<!--
![Upgrade Integration confirmation window](../../../../../Resources/Images/SM/Library/Integrations/Integrations-UpgradeDialog.png "Upgrade Integration confirmation window")
-->

The window closes and both grids refresh. For an Integration hosted on a Relay, the **Version** column typically updates right away. For an Integration hosted on a NetCom, the upgrade is queued and applied automatically the next time that NetCom checks for pending upgrades, so the **Version** column may not update immediately — select **Refresh** again after a few minutes to check.

## About live upgrades

Applying an Integration upgrade previously required restarting the Relay or NetCom that hosted it, briefly interrupting communication with everything running on it. Most Integration upgrades now apply as a live upgrade instead: OpCon replaces the running Integration in place, without restarting the Relay or NetCom, so scheduled and in-progress work on that Relay or NetCom is not interrupted.

The Upgrade Integration window tells you which behavior to expect for the Integration you selected:

- **Relay-hosted Integrations** apply live whenever possible. If a live upgrade cannot be applied, OpCon falls back to the previous method — the Relay restarts briefly to complete the upgrade, the same behavior as before live upgrades were introduced.
- **NetCom-hosted Integrations** apply live only. A NetCom does not restart to apply an Integration upgrade. If a live upgrade cannot be applied, the Integration is not upgraded until the condition preventing it is resolved.

## Troubleshooting: Integration doesn't report the new version

If an Integration still shows its previous version after you apply an upgrade, check the following:

- Select the **Refresh** button. The grids do not update automatically after the Upgrade Integration window closes.
- If the Integration is hosted on a NetCom, allow time for that NetCom's next check for pending upgrades — the upgrade is applied on NetCom's own schedule, not immediately.
- If the Integration is hosted on a Relay, allow a brief delay if the Relay had to restart to complete the upgrade. The Relay briefly disconnects and reconnects, similar to a normal Relay restart.
- Confirm the Relay or NetCom hosting the Integration is online. Go to **Library** > **Relays / NetComs** to check its status.
- If the version still doesn't change, review the Relay's or NetCom's log files, or contact support with the Integration name, the hosting Relay or NetCom name, and the version you attempted to install.

## Related topics

- [Managing relays](../Relays/Managing-Relays.md)
- **Notification History** *(publishing separately — not yet linkable)*
