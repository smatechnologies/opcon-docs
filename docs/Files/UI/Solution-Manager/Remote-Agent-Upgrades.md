---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Remote Agent Upgrades
description: "Upgrade Agents to a newer version directly from Solution Manager, without signing in to the target machine and running an installer by hand."
product_area: Solution Manager
audience: System Administrator, Automation Engineer, Operations Staff
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Operations Staff
  - Solution Manager
  - Agents
  - Upgrade
last_updated: 2026-09-22
doc_type: conceptual
---

# Remote Agent Upgrades

Keeping Agent software current used to mean signing in to every target machine and running an installer by hand. With Remote Agent Upgrades, Solution Manager can check whether a newer Agent version is available and upgrade the Agent in place, without a site visit or manual install. The same action is available for Relays and Integrations from their own grids.

This page uses the Windows Agent as its reference example. For platform-specific package naming and prerequisites, see the related topics for SAP, SAP BW, SQL, and Unix Agents at the bottom of this page.

## Turning on remote upgrades

Remote Agent Upgrades is disabled by default. An Administrator must turn it on for the whole OpCon instance before it appears anywhere in Solution Manager.

To turn on remote upgrades, complete the following steps:

1. Go to **Library** > **Server Options**.
2. Select the **Agent Management** tab.
3. Select the **Allow Remote Upgrades** option.
4. Select the **Save** button.

**Result:** The **Available Upgrade** column and the **Upgrade** and **Schedule Upgrade** actions become available throughout Solution Manager. Until this option is selected, none of these controls appear, even for Agents that support remote upgrade.

:::note
Changing this setting requires the **Maintain Server Options** privilege.
:::

<!--
![Allow Remote Upgrades option on the Agent Management tab of Server Options](../../../Resources/Images/SM/ServerOptions/AgentManagement-AllowRemoteUpgrades.png "Allow Remote Upgrades option on the Agent Management tab of Server Options")
-->

## Checking whether an upgrade is available

Once remote upgrades are turned on, the **Agents** page shows an **Available Upgrade** column for every Agent:

| Value | Meaning |
|---|---|
| A version number | A newer Agent version is available for that machine. |
| **Up to date** | The Agent is already on the latest available version. |
| `-` | The Agent has not reported support for remote upgrade, or the machine type does not support it. |

<!--
![Available Upgrade column on the Agents page](../../../Resources/Images/SM/Agents/AgentsPage-AvailableUpgradeColumn.png "Available Upgrade column on the Agents page")
-->

:::note
An Agent must already be running a build that supports remote upgrade before it can report an available version. If an Agent shows a dash and you expected a version number, confirm the Agent has been upgraded at least once using its standard installer.
:::

## Upgrading an Agent from the Agents page

To upgrade one or more Agents from the **Agents** page, complete the following steps:

1. Go to **Operations** and open the **Agents** page.
2. Select one or more Agents in the grid.
3. Select the **Upgrade** button.
4. Confirm the upgrade when prompted.

**Result:** If every selected Agent is idle, OpCon upgrades all of them once you confirm. If any selected Agent has active jobs running, Solution Manager does not skip it silently — it offers to schedule that Agent's upgrade instead; see [Active jobs warning](#active-jobs-warning) below. Agents with no upgrade available are skipped and reported separately.

<!--
![Upgrade confirmation for a bulk Agent selection](../../../Resources/Images/SM/Agents/AgentsPage-BulkUpgradeConfirm.png "Upgrade confirmation for a bulk Agent selection")
-->

### Active jobs warning

Selecting **Upgrade** does not require Agents to already be idle — Solution Manager checks for active jobs at the moment you select it:

- If every selected Agent is idle, OpCon upgrades all of them after you confirm.
- If you selected a single Agent and it has active jobs running, Solution Manager asks whether to schedule its upgrade instead, naming the Agent and how many active jobs are running. Selecting **Yes** [schedules the upgrade](#scheduling-an-agent-upgrade) to start automatically once its active jobs clear.
- If you selected multiple Agents, the idle ones in that selection are upgraded regardless of what you decide about the busy ones. If every selected Agent has active jobs, Solution Manager offers to schedule all of them. If the selection is mixed, it upgrades the idle ones and separately offers to schedule the busy ones, naming them.

<!--
![Schedule-instead prompt for an Agent with active jobs](../../../Resources/Images/SM/Agents/AgentsPage-ScheduleInsteadPrompt.png "Schedule-instead prompt for an Agent with active jobs")
-->

## The Agent Upgrade section on the Agent Details page

Each Agent's Details page has its own **Agent Upgrade** section, separate from the bulk action on the Agents page. It shows:

- **Current Version** — the version currently installed on the Agent
- **Available Version** — the newer version available, if any
- A status message: an upgrade is available, the Agent is up to date, or the Agent has not reported support for remote upgrade
- Its own **Upgrade Now** and **Schedule Upgrade** buttons, scoped to that one Agent

This section only appears when remote upgrades are turned on for the instance and the machine type supports it. It does not keep its own record of past upgrades — for a durable record of completed upgrades, see [Notification History](Library/NotificationHistory/NotificationHistory.md), which records every Agent, Relay, and Integration upgrade completion under its own category.

## What happens during an upgrade

From your point of view, an Agent upgrade looks like this:

1. You select **Upgrade** (or **Upgrade Now**) and confirm.
2. The Agent's status briefly shows as unavailable while its services stop, the new version installs, and the services restart.
3. Once the Agent reconnects, OpCon automatically verifies the new version came up correctly.
4. A success notification appears, naming the Agent and the version it upgraded to. If you were not watching Solution Manager at the time, the same information is available afterward in [Notification History](Library/NotificationHistory/NotificationHistory.md).

Scheduling is briefly unavailable on that machine while the upgrade is in progress.

### Failed upgrades and automatic rollback

If the new version does not come up healthy after installing, OpCon automatically restores the previous version and restarts it — you do not need to intervene. A failure notification identifies the Agent and the version that failed.

In the rare case where restoring the previous version also fails, the Agent is left stopped rather than left in an uncertain state, and the notification calls this out so you know manual attention is needed. See [Basic troubleshooting](#basic-troubleshooting) below.

## Bulk upgrades

The **Upgrade** button also supports multi-select on the **Relays** and **Integrations** pages, the same way it does on the **Agents** page:

1. On the **Relays** or **Integrations** page, select one or more rows.
2. Select the **Upgrade** button.
3. Confirm the upgrade when prompted.

**Result:** OpCon upgrades each selected row that has an available upgrade. Rows without an available upgrade are skipped and reported separately. Relays and Integrations do not run jobs the way Agents do, so the active jobs warning described above applies only to Agents.

<!--
![Bulk upgrade confirmation for selected Relays](../../../Resources/Images/SM/Library/Relays/RelaysPage-BulkUpgradeConfirm.png "Bulk upgrade confirmation for selected Relays")
-->

## Scheduling an Agent upgrade

If an Agent has active jobs running, you do not have to wait and retry manually — OpCon can wait for you. How you get there depends on where you start:

- **From the Agents page:** Select **Upgrade**. If the selection includes an Agent with active jobs, Solution Manager offers to schedule that Agent instead of upgrading it immediately (see [Active jobs warning](#active-jobs-warning) above). Confirm the offer.
- **From an Agent's Details page:** In the [Agent Upgrade section](#the-agent-upgrade-section-on-the-agent-details-page), select the **Schedule Upgrade** button, then confirm when prompted.

**Result:** OpCon waits until the Agent's active job count reaches zero, then automatically puts the Agent in Limited communication, performs the upgrade, and restores Full communication once the upgrade finishes — whether it succeeds or fails. You can select **Cancel** while the scheduled upgrade is still waiting for active jobs to clear.

<!--
![Schedule Agent Upgrade confirmation](../../../Resources/Images/SM/Agents/AgentDetails-ScheduleUpgradeConfirm.png "Schedule Agent Upgrade confirmation")
-->

:::note
Scheduling an upgrade does not let you pick a future date or time. It queues the upgrade to run automatically as soon as the Agent's active jobs clear, whether that is in a minute or overnight.
:::

For more on Limited and Full communication, see [Performing Agent Status Updates](Performing-Agent-Status-Updates.md).

## Basic troubleshooting

If an Agent does not report a completed upgrade:

- Check the Agent's status on the **Agents** page. If it still shows as unavailable well after the upgrade started, the restart may still be in progress.
- Check [Notification History](Library/NotificationHistory/NotificationHistory.md) for a success or failure entry for that Agent.
- If the entry reports failure and rollback also failed, the Agent was left stopped. Sign in to the Agent's machine directly and restart the Agent software, or reinstall it using its standard installer.
- If the Agent shows `-` in the **Available Upgrade** column when you expected a version number, confirm the Agent is running a build that supports remote upgrade and that its machine type is one that OpCon supports for this feature.

## Related topics

- [Managing Agents](Managing-Agents.md)
- [Performing Agent Status Updates](Performing-Agent-Status-Updates.md)
- [Notification History](Library/NotificationHistory/NotificationHistory.md)
