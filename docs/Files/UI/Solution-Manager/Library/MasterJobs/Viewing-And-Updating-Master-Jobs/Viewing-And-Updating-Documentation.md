---
title: Viewing and Updating Documentation
description: "The Documentation panel in Master Job Definition displays job and frequency documentation text, with hyperlinks rendered as clickable links in Read-only mode."
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

# Viewing and Updating Documentation

The **Documentation** panel in **Master Job Definition** lets you view and edit free-text documentation for a job and its frequencies. In **Read-only** mode, any URLs in the documentation text are rendered as clickable hyperlinks.

For conceptual background on job documentation, refer to [Documentation](../../../../../../job-components/documentation.md).

:::note
Only users with the appropriate edit privileges can select the **Lock** button to switch to **Admin** mode and update job properties. For details, refer to [Required Privileges](Accessing-Master-Jobs.md#required-privileges).
:::

## Panel indicators

- Select the full-screen button (![Full Screen Panel Icon](../../../../../../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon")) on the far-right of the panel bar to enter or exit **Full Screen** mode.
- A blue circular indicator (![Job Properties Indicator](../../../../../../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator")) appears to the right of the panel name showing the count of fields that contain documentation (0, 1, or 2).

## View documentation

In **Read-only** mode, the **Documentation** panel displays only the fields that contain text. Any URLs in the text appear as clickable links.

To view documentation for a master job, complete the following steps:

1. Go to the **Master Job Definition** page. See [Accessing Master Jobs](Accessing-Master-Jobs.md).
1. Expand the **Documentation** panel.

**Result**: The **Job** and **Frequency** fields display any saved documentation text. URLs in the text are clickable.

## Add or update documentation

To add or update documentation for a master job, complete the following steps:

1. Go to the **Master Job Definition** page. See [Accessing Master Jobs](Accessing-Master-Jobs.md).
1. Select the **Lock** button to switch to **Admin** mode.
1. Expand the **Documentation** panel.
1. Enter or update text in the **Job** field to add documentation that always appears with the job.
1. Enter or update text in the **Frequency** field to add documentation that appears only when the job runs on the associated frequency.
1. Select **Save**.

**Result**: The documentation is saved and displayed in Read-only mode. Any URLs entered in the text fields are rendered as clickable links.
