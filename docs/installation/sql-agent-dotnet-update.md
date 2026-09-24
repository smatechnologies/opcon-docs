---
title: SQL Agent .NET Update
description: "What changed for customers running the SQL Agent after its underlying .NET runtime update."
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

# SQL Agent .NET update

The SQL Agent's supporting components now run on a modern .NET runtime. This is primarily an internal engineering change, but there's one prerequisite check worth knowing about before you upgrade.

## No process or service changes

Unlike the Windows, SAP, and SAP BW Agents, this update doesn't consolidate any processes for the SQL Agent. You won't see any change in the number of running processes or services after upgrading.

## .NET runtime prerequisite

The SQL Agent now requires a .NET runtime that the installer checks for automatically during install and upgrade. If the required runtime isn't already present, the installer downloads and installs it for you as part of setup — no separate download or manual step is needed.

## No configuration changes required

Existing ini settings and job behavior are unaffected by this update. You don't need to change any Agent configuration to take advantage of it.

## Related topics

- **Windows Agent .NET update** *(publishing alongside this page — not yet linkable)*
- **SAP Agent .NET update** *(publishing alongside this page — not yet linkable)*
- **SAP BW Agent .NET update** *(publishing alongside this page — not yet linkable)*
