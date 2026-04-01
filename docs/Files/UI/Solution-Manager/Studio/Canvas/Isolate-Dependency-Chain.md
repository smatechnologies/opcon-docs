---
title: Isolate Dependency Chain
description: "right-clicking a node opens the Node Options menu in the right panel."
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

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

right-clicking a node opens the **Node Options** menu in the right panel. The isolation options allow you to configure the display of nodes and dependencies from a given start node.

![Node Options in Studio View](../../../../../Resources/Images/SM/Studio/Canvas/studio-view-isolate-dependency-view.png "Node Options in Studio View")

![Node Options Panel](../../../../../Resources/Images/SM/Studio/Canvas/studio-view-node-options-panel.png "Node Options Panel")

## Previous Dependencies

Displays all preceding jobs in a dependent chain.

![Isolate - Previous Dependencies](../../../../../Resources/Images/SM/Studio/Canvas/studio-view-isolate-dependency-previous-deps.png "Isolate - Previous Dependencies")

## Subsequent Dependencies

Displays all subsequent jobs in a dependent chain.

![Isolate - Subsequent Dependencies](../../../../../Resources/Images/SM/Studio/Canvas/studio-view-isolate-dependency-subsequent-deps.png "Isolate - Subsequent Dependencies")

## Dependency Chain

Displays an entire dependency chain (preceding and subsequent jobs).

![Isolate - Full Dependencies](../../../../../Resources/Images/SM/Studio/Canvas/studio-view-isolate-dependency-full-deps.png "Isolate - Full Dependencies")

## Shortest Path

Shows the shortest path among all dependency chains to the selected job (its shortest terminal previous dependency path).

![Isolate - Shortest Dependencies](../../../../../Resources/Images/SM/Studio/Canvas/studio-view-isolate-dependency-shortest-deps.png "Isolate - Shortest Dependencies")

## FAQs

**Q: What does Isolate Dependency Chain cover?**

This page covers Previous Dependencies, Subsequent Dependencies, Dependency Chain.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
