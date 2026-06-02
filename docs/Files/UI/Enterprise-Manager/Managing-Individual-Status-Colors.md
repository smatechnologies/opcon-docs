---
title: Managing Individual Job Status Colors
description: "Add, edit, or remove individual job status color overrides in Enterprise Manager to distinguish specific job statuses from their default status group colors."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Managing Individual Job Status Colors

The **Individual Job Status Colors** frame in Enterprise Manager Preferences lets you assign a unique display color to a specific job status, overriding that status's default status group color. You can add new overrides, edit existing ones, or remove overrides you no longer need.

:::note
To restore all individual status color overrides to their defaults, select **Restore Defaults** on the **Colors** preferences page.
:::

## Editing an Individual Status Color

To edit an existing individual job status color override, complete the following steps:

1. Open Enterprise Manager.
2. Go to **Enterprise Manager > Preferences**. The **Preferences** dialog opens.
3. Select the expand arrow next to **Enterprise Manager** in the preferences tree to expand the list.
4. Select **Colors**. The Colors settings appear on the right.
5. In the **Individual Job Status Colors** frame, select the job status you want to edit.
6. Select **Edit...**. The **Colors Preference - Individual Job Status Color** dialog opens.
7. Select the color swatch next to **Please select a Color:** to open the color picker, choose a color, and select **OK**.
8. Select **Update List**. The updated color appears in the **Individual Job Status Colors** list.
9. Repeat steps 5–8 for each additional color you want to edit.
10. Select **Apply** to save your changes, then select **OK** to close the **Preferences** dialog.

**Result:** The selected job status displays the new color in Enterprise Manager views.

## Adding an Individual Status Color

To add a new individual job status color override, complete the following steps:

1. Open Enterprise Manager.
2. Go to **Enterprise Manager > Preferences**. The **Preferences** dialog opens.
3. Select the expand arrow next to **Enterprise Manager** in the preferences tree to expand the list.
4. Select **Colors**. The Colors settings appear on the right.
5. In the **Individual Job Status Colors** frame, select **Add...**. The **Colors Preference - Individual Job Status Color** dialog opens.
6. In the **Please select a Job Status:** field, select the job status you want to override.
7. Select the color swatch next to **Please select a Color:** to open the color picker, choose a color, and select **OK**.
8. Select **Add To List**. The new override appears in the **Individual Job Status Colors** list.
9. Repeat steps 5–8 for each additional job status you want to override.
10. Select **Apply** to save your changes, then select **OK** to close the **Preferences** dialog.

**Result:** The selected job status displays the custom color in Enterprise Manager views.

:::note
The **Add...** button is disabled when every available job status already has an override defined.
:::

## Removing an Individual Status Color

To remove an individual job status color override, complete the following steps:

1. Open Enterprise Manager.
2. Go to **Enterprise Manager > Preferences**. The **Preferences** dialog opens.
3. Select the expand arrow next to **Enterprise Manager** in the preferences tree to expand the list.
4. Select **Colors**. The Colors settings appear on the right.
5. In the **Individual Job Status Colors** frame, select the job status override you want to remove.
6. Select **Remove**. The override is removed from the list.
7. Select **Apply** to save your changes, then select **OK** to close the **Preferences** dialog.

**Result:** The job status reverts to its default status group color.
