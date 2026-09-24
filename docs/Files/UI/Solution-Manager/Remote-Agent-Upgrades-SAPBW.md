---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Remote Agent Upgrades for SAP BW Agents
description: "What's the same and what's different when using Remote Agent Upgrades with an SAP BW Agent."
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

# Remote Agent Upgrades for SAP BW Agents

This page covers what's specific to the SAP BW Agent when using Remote Agent Upgrades. For the full explanation of the feature — turning it on, checking availability, upgrading, scheduling, and troubleshooting — see **Remote Agent Upgrades** *(publishing alongside this page — not yet linkable)*.

## Same upgrade flow as other Agents

The SAP BW Agent supports the same **Upgrade** and **Schedule Upgrade** actions described in **Remote Agent Upgrades** *(publishing alongside this page — not yet linkable)*, from the Agents page, the Agent Details page, and bulk selection. There is no separate procedure for SAP BW Agents — everything in the main guide applies as written.

In Solution Manager, an SAP BW Agent's **Platform** column shows as **SAP BW**.

## Package and version notes

An SAP BW Agent upgrade uses a single package per version, the same as a Windows Agent — there is no SAP BW-specific package variant to choose between. The **Current Version** and **Available Version** shown on the Agent Details page are the SAP BW Agent's own version numbers, not the OpCon Server version.

## Troubleshooting

If an SAP BW Agent doesn't report a completed upgrade, follow the same steps as any other Agent — see **Basic troubleshooting** *(publishing alongside this page — not yet linkable)* in the main guide. There is no SAP BW-specific troubleshooting step beyond what's described there.

## Related topics

- **Remote Agent Upgrades** *(publishing alongside this page — not yet linkable)*
- [Managing Agents](Managing-Agents.md)
