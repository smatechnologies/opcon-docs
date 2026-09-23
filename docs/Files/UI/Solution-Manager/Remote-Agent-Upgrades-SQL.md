---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Remote Agent Upgrades for SQL Agents
description: "What's the same and what's different when using Remote Agent Upgrades with a SQL Agent."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
  - Agents
  - Upgrade
last_updated: 2026-09-22
doc_type: conceptual
---

# Remote Agent Upgrades for SQL Agents

This page covers what's specific to the SQL Agent when using Remote Agent Upgrades. For the full explanation of the feature — turning it on, checking availability, upgrading, scheduling, and troubleshooting — see [Remote Agent Upgrades](Remote-Agent-Upgrades.md).

## Same upgrade flow as other Agents

The SQL Agent supports the same **Upgrade** and **Schedule Upgrade** actions described in [Remote Agent Upgrades](Remote-Agent-Upgrades.md), from the Agents page, the Agent Details page, and bulk selection. There is no separate procedure for SQL Agents — everything in the main guide applies as written.

In Solution Manager, a SQL Agent's **Platform** column shows as **SQL**.

## Package and version notes

A SQL Agent upgrade uses a single package per version, the same as a Windows Agent — there is no SQL-specific package variant to choose between. The **Current Version** and **Available Version** shown on the Agent Details page are the SQL Agent's own version numbers, not the OpCon Server version.

## Troubleshooting

If a SQL Agent doesn't report a completed upgrade, follow the same steps as any other Agent — see [Basic troubleshooting](Remote-Agent-Upgrades.md#basic-troubleshooting) in the main guide. There is no SQL-specific troubleshooting step beyond what's described there.

## Related topics

- [Remote Agent Upgrades](Remote-Agent-Upgrades.md)
- [Managing Agents](Managing-Agents.md)
