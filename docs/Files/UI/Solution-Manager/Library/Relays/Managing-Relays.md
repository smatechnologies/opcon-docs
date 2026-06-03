---
title: Managing relays
description: "Monitor relay and NetCom status, restart relays, upgrade relay versions, view logs, configure relay settings, and perform manual failover in Solution Manager."
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
doc_type: procedural
last_updated: 2026-06-02
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

:::note
**API usage:** When restarting a relay programmatically, send a POST to `/api/relay/restart` with a JSON body containing `relayName` (string, required) and `machineId` (string, optional). The `machineId` parameter targets a specific machine when the relay name alone is not unique across machines.
:::

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

:::note
**API usage:** When upgrading a relay programmatically, send a POST to `/api/relay/upgrade` with a JSON body containing `relayName` (string, required), `version` (string, required — for example, `"25.5.0"`), and `machineId` (string, optional). To retrieve the list of available upgrade versions before calling this endpoint, send a GET to `/api/relay/upgrades/available` with the optional `relayName` query parameter to filter results by relay.
:::

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

### Retrieving relay logs programmatically

To retrieve relay logs without using the Solution Manager UI, send a GET request to `/api/relay/{relayName}/logs`. Include the optional `machineId` query parameter when the relay name is not unique across machines. The response contains XML-formatted log data for all three log files.

## Configuring a relay

The **Configuration** tab lets you view and update the dynamic settings stored in the `[Dynamic Settings]` section of the relay's `SMANetComRelay.ini` file without requiring direct file-system access to the relay machine.

To configure a relay, complete the following steps:

1. Go to **Library** > **Relays / NetComs**.
2. In the **Relays** grid, select the relay you want to configure.
3. Select the **Configuration** tab. The current dynamic settings for the relay are displayed.
4. Update any of the following fields:

| Field | Type | Description |
|---|---|---|
| **Metrics Collection Interval** | Integer (minutes) | How often the relay collects metrics samples |
| **Metrics Reporting Interval** | Integer (minutes) | How often the relay reports collected metrics to the OpCon server |
| **Sample Retention** | Integer (minutes) | How long collected metric samples are retained before being discarded |
| **Enable Metrics Collection** | Boolean | Enables or disables metrics collection on the relay |

5. Select the **Save** button. The updated settings are written to the `[Dynamic Settings]` section of the relay's `SMANetComRelay.ini` file.

:::note
**API usage:** The configuration endpoints are `GET /api/relay/{relayName}/configuration` (read current settings) and `POST /api/relay/{relayName}/configuration` (write updated settings). Both accept the optional `machineId` query parameter to target a specific machine when the relay name is not unique. To retrieve current health metrics for a relay, send a GET to `/api/relay/{relayName}/health` with the optional `machineId` query parameter.
:::

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

## Relay disconnect notifications

Solution Manager polls the OpCon server periodically to detect relay disconnection events. When a relay disconnects, a toast notification appears in the Solution Manager interface.

The polling behavior works as follows:

- Solution Manager sends a GET to `/api/relay/disconnection-notifications` at regular intervals.
- The endpoint returns only relays that have new, unacknowledged disconnection events.
- Each relay returned by the endpoint is automatically acknowledged. A subsequent poll returns an empty list until the next disconnection event occurs.

### Initiating manual failover after a disconnect

After a relay disconnect notification appears, you can initiate a manual failover from the Solution Manager UI (see [Performing a manual relay failover](#performing-a-manual-relay-failover)) or programmatically.

To trigger a manual failover programmatically, send a POST to `/api/relay/failover/manual` with a JSON body containing `relayName` (string, required), `targetMachineId` (string, required), and `reason` (string, optional). The endpoint returns HTTP 202 Accepted with a response body that includes `requestId`, `success`, `message`, `relayName`, and `targetMachineId`.

Use the returned `requestId` to poll failover progress:

- **Step progress:** GET `/api/relay/{relayName}/failover/{requestId}/progress`
- **Current status:** GET `/api/relay/{relayName}/failover/status`

## Related topics

- [Relays overview](Relays-Overview.md)
- [Relays reference](Relays-Reference.md)
- [SMA Network Communications Module](../../../../../server-programs/network-communications.md)
