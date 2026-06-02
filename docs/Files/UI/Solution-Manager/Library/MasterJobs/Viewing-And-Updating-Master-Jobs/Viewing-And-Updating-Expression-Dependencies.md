---
title: Viewing and Updating Expression Dependencies
description: "The Expression Dependency panel in Master Job Definition displays expression dependencies for the job and its frequencies."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Viewing and Updating Expression Dependencies

## Overview

The **Expression Dependency** panel in **Master Job Definition** displays expression dependencies defined for the job and its frequencies.

- Job-level expression dependencies apply every time the job runs.
- Frequency-level expression dependencies apply only when the job runs on the associated frequency.

For conceptual background, refer to [Expression Dependencies](../../../../../../job-components/expression-dependencies.md).

:::note
Only users with the appropriate privileges have access to the **Lock** button and can update job properties. For details, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.
:::

## Panel Controls

The **Expression Dependency** panel includes the following controls:

- **Full Screen** button: Select the full-screen button (![Full Screen Panel Icon](../../../../../../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon")) on the far right of the panel bar to enter or exit **Full Screen** mode.
- **Property count indicator**: A blue circular indicator (![Job Properties Indicator](../../../../../../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator")) appears to the right of the panel name showing the count of defined expression dependencies.

## Add or Update Expression Dependencies

In **Admin** mode, expression dependencies can be added or updated.

To add or update expression dependencies, complete the following steps:

1. Go to the **Master Job Definition** page for the job you want to edit. See [Accessing Master Jobs](Accessing-Master-Jobs.md).
2. Select the **Lock** button to switch to **Admin** mode if the page is in **Read-only** mode.
3. Expand the **Expression Dependency** panel to expose its content.
4. Enter or update values in the **Job** and **Frequency** frames as needed.
5. Select **Save**.

**Result**: The updated expression dependencies are saved to the master job definition and will be evaluated the next time the job is built.
