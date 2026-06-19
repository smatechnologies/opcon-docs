---
title: Copying Daily Job Definitions to Master Job
description: "Use this procedure to push daily job definitions to the master job record in Solution Manager."
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

# Copying Daily Job Definitions to Master Job

## Overview

The **copy to master job** feature lets you propagate changes made to a daily job back to the corresponding master job record. Use this when you have modified a daily job's properties and want those changes to become permanent in the master job definition.

The dropdown in the split button shows one contextual option depending on whether the form has unsaved changes:

- **Push changes to Master Job**: Available when the form has no unsaved changes. Copies the current daily job definitions to the master job immediately.
- **Save Daily Job & push changes to Master Job**: Available when the form has unsaved changes. Saves the daily job first, then copies the updated definitions to the master job.

## Required Privileges

To copy daily job definitions to a master job, you must have both of the following privileges:

- **View Jobs In Schedule Operations** — required to access the daily job definition.
- **Modify Jobs In Master Schedules** — required to update the master job record.

For information on accessing the daily job, see [Accessing Daily Job Definition](Accessing-Daily-Job-Definition.md).

## Push Changes from the Daily Job Configuration Page

To push daily job changes to the master job from the daily job configuration page, complete the following steps:

1. Open the daily job definition. See [Accessing Daily Job Definition](Accessing-Daily-Job-Definition.md) for instructions.
2. Enable **Admin Mode** using the toggle in the toolbar.
3. Make any required changes to the daily job definition.
4. Select the arrow on the split button in the bottom-left of the screen to expand the options.

<!--
   ![Split button](../../../Resources/Images/SM/Daily-Job-Split-Button.png "Split button")
-->

5. Select the option that appears:
   - **Push changes to Master Job** — appears when there are no unsaved changes. Copies the current daily job definitions to the master job.
   - **Save Daily Job & push changes to Master Job** — appears when there are unsaved changes. Saves the daily job and copies the updated definitions to the master job.

**Result:** The master job record is updated with the definitions from the daily job.

:::note
The split button does not appear if the selected daily job is a Null Job or an unsupported job type. In those cases, a **Save** button appears instead.
:::

## Push Changes from the Processes Page

To push daily job changes to the master job from the Processes page, complete the following steps:

1. Go to the **Processes** page in the **Operations** module.
2. Select a daily job to open the right panel.
3. Expand the right panel and select the copy button.

   ![Job selection copy button](../../../Resources/Images/SM/Daily-Job-Right-Panel-Copy-Button.png "Job selection copy button")

**Result:** The action copies the daily job definitions to the master job. The copy button is disabled for Null Jobs and unsupported job types.
