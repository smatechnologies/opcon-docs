---
title: Isolate Dependency Chain
description: "Use the Node Options menu in Studio to isolate and display the dependency chain for a selected job on the canvas."
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

# Isolate Dependency Chain

The Isolate Dependency Chain feature in Studio lets you narrow the canvas view to only the jobs that are directly relevant to a selected job's dependency relationships. Right-clicking a job node opens the **Node Options** menu, which provides isolation options for displaying predecessors, successors, or the full dependency chain.

![Node Options in Studio View](../../../../../Resources/Images/SM/Studio/Canvas/studio-view-isolate-dependency-view.png "Node Options in Studio View")

![Node Options Panel](../../../../../Resources/Images/SM/Studio/Canvas/studio-view-node-options-panel.png "Node Options Panel")

## Isolate Predecessors

Select **Isolate Predecessors** to display only the jobs that the selected job depends on — that is, all preceding jobs in the dependency chain that must complete before the selected job can run.

![Isolate - Previous Dependencies](../../../../../Resources/Images/SM/Studio/Canvas/studio-view-isolate-dependency-previous-deps.png "Isolate - Previous Dependencies")

## Isolate Successors

Select **Isolate Successors** to display only the jobs that depend on the selected job — that is, all subsequent jobs in the dependency chain that cannot run until the selected job completes.

![Isolate - Subsequent Dependencies](../../../../../Resources/Images/SM/Studio/Canvas/studio-view-isolate-dependency-subsequent-deps.png "Isolate - Subsequent Dependencies")

## Isolate Dependency Chain

Select **Isolate Dependency Chain** to display the full dependency chain for the selected job, including all preceding and subsequent jobs.

![Isolate - Full Dependencies](../../../../../Resources/Images/SM/Studio/Canvas/studio-view-isolate-dependency-full-deps.png "Isolate - Full Dependencies")

<!-- GAP: The existing page describes a "Shortest Path" option that shows the shortest terminal predecessor path to the selected job. This option is not confirmed in the codebase button definitions (ButtonId.java) or i18n property files. Needs SME/source verification before re-adding. -->
