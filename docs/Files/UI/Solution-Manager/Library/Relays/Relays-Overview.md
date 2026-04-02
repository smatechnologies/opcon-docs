---
title: Relays overview
description: "Understand what relays and NetComs are, how the primary/standby architecture works, and when to use the Relays / NetComs page in Solution Manager."
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
---

# Relays overview

Relays and NetComs manage communication between the OpCon server and agents across your environment. The **Relays / NetComs** page in Solution Manager gives you visibility into the status of all relay and NetCom instances and lets you perform management operations on relays.

## What are relays and NetComs?

A **relay** is a communication component that routes messages between the OpCon server and agents. Relays support a primary/standby architecture — if the primary relay becomes unavailable, you can fail over to a standby relay to maintain agent communication.

A **NetCom** (SMA Network Communications Module) is the underlying communication component that handles the direct connection between OpCon and its agents. NetComs can operate independently or through a relay.

## Primary and standby architecture

Relays use a priority-based architecture to support failover:

- **Primary relay** — The active relay that handles all agent communication. Each relay name has one primary instance
- **Standby relay** — One or more backup instances that can take over if the primary relay becomes unavailable. Standby relays are ranked by priority number, where lower numbers indicate higher priority

When you perform a manual failover, OpCon transitions agent communication from the primary relay to a selected standby relay through a six-step process that drains messages, closes connections on the primary, and establishes new connections on the failover relay.

## Page layout

The **Relays / NetComs** page uses a split-pane layout:

- **Upper pane** — The **Relays** grid displays all registered relay instances with their status, priority, version, and machine information. You can select relays to perform management actions such as restart, upgrade, view logs, and failover
- **Lower pane** — The **NetComs** grid displays all registered NetCom instances with their status, version, and machine information. This grid is read-only and provides monitoring visibility only

## When to use this page

Use the **Relays / NetComs** page to:

- Monitor the communication status of relays and NetComs across your environment
- Restart a relay that is in Standby or Stopped status
- Upgrade a relay to a newer version
- View relay logs for troubleshooting
- Perform a manual failover from a primary relay to a standby relay

## Prerequisites

All users can view the **Relays / NetComs** page. To perform relay management operations (restart, upgrade, and failover), you must have the OCADM role.

## Related topics

- [Managing relays](Managing-Relays.md)
- [Relays reference](Relays-Reference.md)
- [SMA Network Communications Module](../../../../../server-programs/network-communications.md)
