---
title: Viewing and Updating Tags
description: "The Tags panel in Master Job Definition displays tags assigned to the job and its frequencies."
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

# Viewing and Updating Tags

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Tags** panel in **Master Job Definition** displays tags assigned to the job and its frequencies. Tags are free-text labels you can attach to a job or a specific frequency to support filtering, categorization, and reporting across the OpCon environment.

- Select the full-screen icon (![Full Screen Panel Icon](../../../../../../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon")) on the far-right of the panel bar to enter or exit **Full Screen** mode.
- A blue circular indicator (![Job Properties Indicator](../../../../../../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator")) appears to the right of the panel name showing the count of defined tags when the panel contains defined values.

## Adding or Updating Tags

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.
:::

To add or update tags, complete the following steps:

1. Go to [Accessing Master Jobs](Accessing-Master-Jobs.md) to open the master job definition page.
2. Expand the **Tags** panel.
3. Enter or update tag values in the **Job** and/or **Frequency** frames.
   - Each tag can be up to 128 characters.
   - Valid characters are letters, numbers, hyphens (`-`), underscores (`_`), and spaces.
   - Tags that contain invalid characters are rejected with a warning notification.
4. Select **Save**.

**Result:** The tags are saved to the job definition and are available for filtering in the OpCon environment.

## Removing a Tag

To remove a tag, complete the following steps:

1. Go to [Accessing Master Jobs](Accessing-Master-Jobs.md) to open the master job definition page.
2. Expand the **Tags** panel.
3. Select the remove button next to the tag you want to delete.
4. Select **Save**.

**Result:** The tag is removed from the job definition.
