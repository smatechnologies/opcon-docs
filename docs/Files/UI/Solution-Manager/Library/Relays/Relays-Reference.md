---
title: Relays reference
description: "Field definitions, status values, failover transition steps, and permission requirements for the Relays / NetComs page in Solution Manager."
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Solution Manager
---

# Relays reference

This page provides field definitions, status values, and action requirements for the **Relays / NetComs** page in Solution Manager. The page displays two grids: the **Relays** grid in the upper pane and the **NetComs** grid in the lower pane.

For procedures, see [Managing relays](Managing-Relays.md). For an overview of relay architecture, see [Relays overview](Relays-Overview.md).

## Relay grid columns

The **Relays** grid displays all registered relay instances. You can search by name and filter by status.

| Column | Description |
|---|---|
| **Name** | The name of the relay |
| **Status** | The current communication status of the relay. See [Status values](#status-values) |
| **Priority** | The relay's failover priority. See [Priority values](#priority-values) |
| **Client Name** | The name of the client associated with the relay |
| **Relay Machine** | The machine where the relay is running |
| **Version** | The installed version of the relay software |
| **Upgrade Date** | The date and time the relay was last upgraded |

## NetCom grid columns

The **NetComs** grid displays all registered NetCom instances. You can search by name and filter by status. The NetCom grid is read-only — you cannot select rows or perform actions on NetCom entries.

| Column | Description |
|---|---|
| **Name** | The name of the NetCom instance |
| **Status** | The current communication status of the NetCom. See [Status values](#status-values) |
| **Client Name** | The name of the client associated with the NetCom |
| **NetCom Machine** | The machine where the NetCom is running |
| **Version** | The installed version of the NetCom software |
| **Upgrade Date** | The date and time the NetCom was last upgraded |

## Status values

The following status values apply to both relay and NetCom entries.

| Status | Description |
|---|---|
| Communicating | The relay or NetCom is actively communicating with the OpCon server |
| Standby | The relay or NetCom is available but not actively communicating |
| Stopped | The relay or NetCom is not running |

## Priority values

Priority values appear in the **Relays** grid only. They indicate the relay's role in the failover hierarchy.

| Value | Meaning |
|---|---|
| Primary | The relay is the active primary relay (priority 0) |
| 1, 2, 3... | The relay is a standby relay. Lower numbers indicate higher failover priority |

## Relay actions

The following actions are available in the **Relays** grid toolbar. These actions apply to relays only — no actions are available for NetCom entries.

| Action | Availability |
|---|---|
| **Restart** | Available when a relay with a status of Communicating or Standby is selected |
| **Upgrade** | Available when a relay in Communicating or Standby status is selected and an upgrade is available for that relay version |
| **Logs** | Available when any relay in Communicating or Standby status is selected |
| **Choose Failover** | Available when all failover requirements are met. See [Failover requirements](#failover-requirements) |

## Failover requirements

The **Choose Failover** button is available only when all of the following conditions are met:

- You have the OCADM role
- Exactly one Primary relay is selected
- The selected relay has a status of Communicating
- A Standby relay with the same name exists

## Failover transition steps

The Relay Failover dialog displays a static transition process with six steps. 

### Primary relay steps

| Step | Name | Description |
|---|---|---|
| 1 | Stopping new messaging | Stops accepting new messages on the primary relay |
| 2 | Draining message queues | Drains in-flight messages before handoff |
| 3 | Closing primary relay | Terminates all agent connections on the primary relay |

### Failover relay steps

| Step | Name | Description |
|---|---|---|
| 4 | Reloading agent configuration | Reloads agent configuration on the failover relay |
| 5 | Establishing failover relay connections | Establishes agent connections from the failover relay |
| 6 | Starting send/receive from failover relay | Begins message send and receive on the failover relay |

## Relay log file types

The Relay Logs dialog displays three log files, each on a separate tab.

| Log file | Description |
|---|---|
| SMANetComRelay.log | The main relay log with configuration and communication information |
| SMANetComRelayAPI.log | The API communication log for relay operations |
| SMANetComTrace.log | A detailed trace log with TCP/IP and socket connection information |

## Timeouts

| Operation | Timeout behavior |
|---|---|
| Failover | Polls for progress every 5 seconds. The operation times out after several minutes if the transition does not complete |
| Restart | Polls for the relay to return to Communicating status. Times out after 2 minutes |

## Related topics

- [Relays overview](Relays-Overview.md)
- [Managing relays](Managing-Relays.md)
- [SMA Network Communications Module](../../../../../server-programs/network-communications.md)
