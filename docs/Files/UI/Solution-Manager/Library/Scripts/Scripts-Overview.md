---
title: Scripts Overview
description: "The Script Repository stores reusable scripts that can be referenced by multiple jobs across OpCon."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Scripts Overview

The **Script Repository** stores reusable scripts that can be referenced by multiple jobs across OpCon. Scripts are versioned, categorized by type (such as PowerShell, Shell, or Python), and deployed to agents at runtime through a configured script runner. This approach eliminates the need to maintain individual script files on each agent.

## How the Script Repository works

The Script Repository organizes scripts through four related components:

- **Script** — The named unit stored in the repository. A script contains one or more versions of script content and belongs to a script type.
- **Script Version** — A numbered revision of a script's content. When you update a script, you create a new version rather than overwriting the existing one. Jobs can reference either a specific version or the latest version.
- **Script Type** — A category that identifies the scripting language (for example, PowerShell or Shell). Script types determine which runners are available for a script.
- **Script Runner** — The program on an agent that runs a script of a given type. Each runner is associated with a script type and defines the command used to run scripts of that type.

When a job that references a script runs, OpCon deploys the script content from the repository to the target agent and runs it using the configured runner for that script's type.

## Cross-references and delete restrictions

Scripts, script versions, script types, and script runners all track cross-references to other objects. You cannot delete an item that has active cross-references. Review cross-references before modifying shared scripts to understand which jobs will be affected.

## In this section

| Page | Description |
|------|-------------|
| [Managing Scripts](Managing-Scripts.md) | View, search, add, edit, delete, deploy, and check cross-references for scripts |
| [Managing Script Versions](Managing-Script-Versions.md) | Create, copy, delete, deploy, and check cross-references for script versions |
| [Managing Script Types](Managing-Script-Types.md) | Add, edit, delete, and check cross-references for script types |
| [Managing Script Runners](Managing-Script-Runners.md) | Add, edit, delete, and check cross-references for script runners |
