---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Showing Script Cross References
description: "You can view which jobs use specific scripts."
product_area: Enterprise Manager
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

# Showing Script Cross References

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

You can view which jobs use specific scripts.

To show the cross references, complete the following steps:

1. Select on **Repository** under the **Scripts** topic. The **Script Repository** screen displays
2. Select a script in the list
3. Select the **Cross References** button on the toolbar. The **Cross References Details** dialog displays
4. Toggle between tabs to view cross-referenced Master or Daily jobs for the selected script
5. Select **OK** to close the dialog
6. Select **Close ☒** to close the **Script Repository** screen
:::

## When Would You Use It?

- You can view which jobs use specific scripts

## Why Would You Use It?

- **Showing Script**: You can view which jobs use specific scripts

## FAQs

**Q: How many steps does the Showing Script Cross References procedure involve?**

The Showing Script Cross References procedure involves 6 steps. Complete all steps in order and save your changes.

## Glossary


**Embedded Script**: A script stored and versioned directly within the OpCon database. Embedded scripts run on target machines via the agent's script runner and are maintained in the Script Repository.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
