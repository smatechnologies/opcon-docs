---
title: SAP BW Agent .NET Update
description: "What changed for customers running the SAP BW Agent after its underlying .NET runtime and service update."
product_area: Installation
audience: System Administrator
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Agents
  - Installation
  - Upgrade
last_updated: 2026-09-22
doc_type: conceptual
---

# SAP BW Agent .NET update

The SAP BW Agent's underlying components have been updated to a modern .NET runtime, and the Agent's job-transfer processing has been consolidated into its Windows Service. This is primarily an internal engineering change, but a few things are visible after upgrading.

## One fewer process per Agent instance

Job-transfer processing previously ran as its own background process alongside the SAP BW Agent's Windows Service. It now runs inside that same Windows Service. If you check Windows Services or Task Manager after upgrading, you'll see one fewer process per SAP BW Agent instance.

This is expected. It doesn't indicate that anything failed to start.

## .NET runtime prerequisite

The SAP BW Agent now requires a .NET runtime that the installer checks for automatically during install and upgrade. If the required runtime isn't already present, the installer downloads and installs it for you as part of setup — no separate download or manual step is needed.

## No configuration changes required

Existing ini settings and job behavior are unaffected by this update. You don't need to change any Agent configuration to take advantage of it.

## Related topics

- [Windows Agent .NET update](./windows-agent-dotnet-update.md)
- [SAP Agent .NET update](./sap-agent-dotnet-update.md)
- [SQL Agent .NET update](./sql-agent-dotnet-update.md)
