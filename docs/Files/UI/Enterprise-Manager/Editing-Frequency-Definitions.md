---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Frequency Definitions
description: "How to edit a frequency definition in the Enterprise Manager Frequency Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Editing Frequency Definitions

Use the Enterprise Manager Frequency Manager to update the rules that control when jobs or schedules are eligible to run.

## Edit a frequency definition

To edit a frequency definition, complete the following steps:

1. In the navigation panel, select **Frequency Manager** under the **Management** topic.
2. In the **Type Filter** text box, type the frequency name, or select the frequency name directly in the list.
3. On the **Frequency Manager** toolbar, select the **Edit** button (tooltip: *Edit a frequency definition*).
4. Edit the frequency definition settings on the **Frequency Definition** page.
5. Select **Finish**.

**Result:** The frequency definition is updated. If the change affects more than one job or schedule, Enterprise Manager displays an impact review dialog listing all affected jobs and schedules before committing the update.

6. Select **Close** (to the right of the **Frequency Manager** tab) to close the Frequency Manager.

## Notes

- Changes saved to a frequency definition apply to all jobs and schedules that share the same frequency name and definition code. Enterprise Manager prompts for confirmation when a change would affect more than one record.
- Users without the **All User Interface Functions** privilege cannot edit a frequency that is used by more than one job.
- To rename a frequency without changing its definition, use the **Rename** button on the **Frequency Manager** toolbar instead of **Edit**.
