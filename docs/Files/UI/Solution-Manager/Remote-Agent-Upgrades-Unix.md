---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Remote Agent Upgrades for Unix Agents
description: "What's the same and what's different when using Remote Agent Upgrades with a Unix Agent, including why the available package is matched to your specific platform."
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

# Remote Agent Upgrades for Unix Agents

This page covers what's specific to the Unix Agent when using Remote Agent Upgrades. For the full explanation of the feature — turning it on, checking availability, upgrading, scheduling, and troubleshooting — see **Remote Agent Upgrades** *(publishing alongside this page — not yet linkable)*.

## Same upgrade flow as other Agents

The Unix Agent supports the same **Upgrade** and **Schedule Upgrade** actions described in **Remote Agent Upgrades** *(publishing alongside this page — not yet linkable)*, from the Agents page, the Agent Details page, and bulk selection. There is no separate procedure for Unix Agents — everything in the main guide applies as written.

In Solution Manager, a Unix Agent's **Platform** column shows as **UNIX**.

## Why the available package is specific to your platform

Unlike the other Agent platforms, the Unix Agent does not ship as one universal build. AIX, HP-UX, Solaris, and the various Linux distributions each need their own native package, and even within Linux, different distributions and major versions (for example, Ubuntu 22.04 versus 24.04) need their own build.

Because of this, when OpCon checks for an available upgrade on a Unix Agent, it looks for a package that matches that specific machine's reported operating system and version — not just any package available for Unix in general. This means:

- Two Unix Agents on different distributions or major OS versions may show different available versions, or one may show an upgrade is available while the other shows **Up to date**, even though both are "Unix Agents."
- If no package has been made available for your Agent's specific distribution and version, the **Available Upgrade** column shows `-`, the same as if the feature were unavailable — this is expected, not an error, and simply means a matching package hasn't been provided yet for that platform.

This is expected behavior, not a defect — treat a platform-matched result as normal for Unix Agents even when it differs from another Unix Agent on a different distribution.

## Troubleshooting

If a Unix Agent doesn't report a completed upgrade, follow the same steps as any other Agent — see **Basic troubleshooting** *(publishing alongside this page — not yet linkable)* in the main guide. If the **Available Upgrade** column shows `-` for a Unix Agent, first confirm whether a package has been made available for that Agent's specific distribution and OS version before assuming something is wrong.

## Related topics

- **Remote Agent Upgrades** *(publishing alongside this page — not yet linkable)*
- [Managing Agents](Managing-Agents.md)
