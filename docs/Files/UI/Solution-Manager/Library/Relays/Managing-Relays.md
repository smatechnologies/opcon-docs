---
title: Managing relays
description: "Monitor relay and NetCom status, restart relays, upgrade relay versions, view logs, and perform manual failover in Solution Manager."
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
---

# Managing relays

Use the **Relays / NetComs** page in Solution Manager to monitor communication status and perform management operations on relays and to view NetComs. For background on relay architecture and terminology, see [Relays overview](Relays-Overview.md).

## Viewing relay and NetCom status

The **Relays / NetComs** page displays the current status of all registered relays and NetComs. Relays appear in the upper grid and NetComs appear in the lower grid.

To view relay and NetCom status, complete the following steps:

1. Go to **Library** > **Relays / NetComs**. The Relays / NetComs page is displayed with both grids.
2. (Optional) In either grid, use the **Status** filter to show only relays or NetComs with a specific status.
3. (Optional) In either grid, enter a name in the search field to find a specific relay or NetCom.

For a description of each column, see [Relays reference](Relays-Reference.md).

## Restarting a relay

You can restart a relay that is in Communicating or Standby status. After you initiate the restart, OpCon polls for the relay to return to Communicating/Standby status.

:::note
You must have the OCADM role to restart a relay.
:::

To restart a relay, complete the following steps:

1. Go to **Library** > **Relays / NetComs**.
2. In the **Relays** grid, select the relay you want to restart. The relay must have a status of Communicating or Standby.
3. Select the **Restart** button. OpCon sends the restart command to the relay.
4. Wait for the relay status to change to Communicating or Standby. The restart operation times out after 2 minutes if the relay does not respond.

## Upgrading a relay

You can upgrade a relay to a newer version when an upgrade is available.

:::note
You must have the OCADM role to upgrade a relay.
:::

To upgrade a relay, complete the following steps:

1. Go to **Library** > **Relays / NetComs**.
2. In the **Relays** grid, select the relay you want to upgrade. The **Upgrade** button is only enabled if the relay is in Communicating or Standby status and an upgrade is available for the relay version.
3. Select the **Upgrade** button. The Upgrade Relay dialog is displayed with the current version and a list of available versions.
4. From the **Select Relay** list, select the version you want to install.
5. Select the **Save** button. The upgrade begins and the dialog closes.

## Viewing relay logs

You can view relay logs to troubleshoot communication issues. The Relay Logs dialog provides access to three log files.

To view relay logs, complete the following steps:

1. Go to **Library** > **Relays / NetComs**.
2. In the **Relays** grid, select the relay whose logs you want to view. The **Logs** button is only enabled if the relay is in Communicating or Standby status.
3. Select the **Logs** button. The Relay Logs dialog is displayed.
4. Select the tab for the log file you want to view:
   - **SMANetComRelay.log** — Main relay log with configuration and communication information
   - **SMANetComRelayAPI.log** — NetCom API communication log
   - **SMANetComTrace.log** — Detailed trace log with TCP/IP and socket connection information
5. (Optional) Select the **Refresh** button to reload the log content.
6. (Optional) Select the **Export** button to download the log file.
7. Select the **Cancel** button to close the dialog.

## Performing a manual relay failover

A manual failover transitions agent communication from the primary relay to a standby relay. Use this procedure when the primary relay needs to be taken offline for maintenance or when you need to redirect communication to a different machine.

:::caution
Once the failover process starts, it must complete the full transition. This process may take a few minutes.
:::

:::note
You must have the OCADM role to perform a failover. The **Choose Failover** button is available only when a Primary relay with a status of Communicating is selected and a Standby relay with the same name exists. For the full list of requirements, see [Failover requirements](Relays-Reference.md#failover-requirements).
:::

To perform a manual relay failover, complete the following steps:

1. Go to **Library** > **Relays / NetComs**.
2. In the **Relays** grid, select the Primary relay you want to fail over from.
3. Select the **Choose Failover** button. The Relay Failover dialog is displayed with the primary relay name and machine pre-populated.
4. In the **Failover Relay** section, select the target machine from the **Machine** list.
5. (Optional) In the **Failover Reason** field, enter a reason for the failover.
6. Note: The transition process on the right side of the dialog shows a static list of each of the six steps of the failover progress. For a description of each step, see [Failover transition steps](Relays-Reference.md#failover-transition-steps).
7. Select the **Connect** button. The dialog closes and the failover transition begins.
8. When the transition completes successfully, a confirmation message is displayed. Select the button to close the dialog.

If the failover fails or times out, an error message is displayed. Review the relay logs to investigate the issue.

## Related topics

- [Relays overview](Relays-Overview.md)
- [Relays reference](Relays-Reference.md)
- [SMA Network Communications Module](../../../../../server-programs/network-communications.md)
