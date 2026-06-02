---
title: Viewing and Updating Frequencies
description: "Use the Frequencies panel in Master Job Definition to assign, remove, and configure the frequencies that control when a job is eligible to run."
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

# Viewing and Updating Frequencies

The **Frequencies** panel in **Master Job Definition** displays the frequencies associated with a job and lets you assign, remove, and configure per-frequency job-execution settings.

:::note
Only users with the appropriate edit privileges can access the **Lock** button and modify job properties. For details, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.
:::

For conceptual information about frequencies, refer to [Frequency](../../../../../../job-components/frequency.md) in the **Concepts** online help.

## Assign or remove a frequency

To assign or remove a frequency from a job, complete the following steps:

1. Go to the master job definition page. See [Accessing Master Jobs](Accessing-Master-Jobs.md) for instructions.
2. Select the **Lock** button to switch to **Admin** mode.
3. Expand the **Frequencies** panel to display its content.
4. To assign a frequency, select it in the **Inactive** list and select the right-arrow button to move it to the **Active** list.
5. To remove a frequency, select it in the **Active** list and select the left-arrow button to move it to the **Inactive** list.

   :::note
   If the frequency has associated records (documentation, expression dependencies, threshold or resource dependencies, threshold or resource updates, tags, or events), a confirmation dialog appears before removal.
   :::

6. Select **Save**.

**Result:** The frequency appears in (or is removed from) the **Active** list and the job's schedule eligibility is updated accordingly.

## Adjust frequency priority

The order of frequencies in the **Active** list determines their priority. To change the priority of a frequency, complete the following steps:

1. In the **Active** list, select exactly one frequency.
2. Select the **Higher Priority** arrow to move it up, or the **Lower Priority** arrow to move it down.
3. Select **Save**.

**Result:** The selected frequency is reordered in the **Active** list. OpCon evaluates frequencies in list order when determining job eligibility.

## Add or edit a frequency definition

To create a new frequency or modify an existing frequency definition, complete the following steps:

1. Go to the master job definition page. See [Accessing Master Jobs](Accessing-Master-Jobs.md) for instructions.
2. Select the **Lock** button to switch to **Admin** mode.
3. Expand the **Frequencies** panel.
4. To create a frequency, select **New Frequency** and complete the **Frequency Configuration** dialog.
5. To edit a frequency, select one frequency in the **Active** list, then select **Edit** and update the **Frequency Configuration** dialog.
6. Select **Save** in the dialog to apply the frequency definition changes.

**Result:** The new or updated frequency is available in the **Inactive** list (newly created frequencies) or reflects your changes in the **Active** list (edited frequencies).

## Configure advanced frequency settings

To configure advanced scheduling settings for a frequency (such as interval days, start and end scheduling dates, or month exclusions), complete the following steps:

1. Select one frequency in the **Active** list.
2. Select **Advanced**.
3. In the **Advanced Frequency Settings** dialog, update the desired settings.
4. Select **Save** in the dialog.

**Result:** The advanced settings are saved for that frequency on the job.

## Forecast a frequency

To preview the dates on which a frequency will cause the job to be scheduled, complete the following steps:

1. Select one frequency in the **Active** list.
2. Select **Forecast**.

The **Forecast** dialog opens and displays the upcoming scheduled dates for that frequency.

## Multi-Forecast multiple frequencies

To compare scheduled dates across multiple frequencies simultaneously, complete the following steps:

1. Select two or more frequencies in the **Active** list.
2. Select **Multi-Forecast**.

The **Forecast** dialog opens and displays the upcoming scheduled dates for all selected frequencies.

:::note
Frequencies with a Job Build Status of **Disable Frequency** are excluded from Multi-Forecast results.
:::

## View cross-references for a frequency

To see all jobs, schedules, and other objects that reference a frequency, complete the following steps:

1. Select one frequency in the **Active** list.
2. Select **Cross References**.

The cross-reference dialog opens and lists all objects associated with the selected frequency.
