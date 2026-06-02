---
title: Setting Preferences for Charts
description: "Configure chart display options in Enterprise Manager, including general chart settings, bar chart layout, pie chart layout, and meter chart thresholds."
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

# Setting Preferences for Charts

Enterprise Manager provides four preference pages for charts: general chart settings, bar chart display, pie chart display, and meter chart display. Changes to chart preferences take effect only after you close and reopen the chart views.

:::note
Close and reopen all chart views after saving preferences for changes to take effect.
:::

## Configure General Chart Preferences

To configure general chart display options, complete the following steps:

1. In Enterprise Manager, select **EnterpriseManager > Preferences**. The **Preferences** dialog opens.
2. In the **Preferences** tree, select the expand arrow next to **Enterprise Manager** to expand the list.
3. Select **Charts**. The **Charts** settings appear on the right.
4. (Optional) Select the **Show Legend** option to display the legend on charts. This option is selected by default.
5. (Optional) Select the **Use Transparency** option to render charts with transparency. This option is cleared by default.
6. (Optional) Select the **Use Depth** option to render charts in 3-D. This option is cleared by default.
7. (Optional) Select the **Beep and Notify for failed jobs** option to play a beep three times and display a notification when a job fails in chart view. This option is selected by default.
8. Select **Apply** to save the changes.

**Result:** The general chart settings are saved and apply to all chart views.

## Configure Bar Chart Preferences

To configure bar chart display settings, complete the following steps:

1. In the **Preferences** tree, select the expand arrow next to **Charts** to expand the list.
2. Select **Bar Chart**. The **Bar Chart** settings appear on the right.
3. (Optional) Select **Oldest date on top** to display the oldest date at the top of the chart when viewing multiple dates. This option is cleared by default.
4. (Optional) Select **Tube** to display bars as tubes instead of rectangles. This option is selected by default.
5. (Optional) Select **Transposed** to display bars horizontally. Clear the option to display bars vertically. This option is selected by default.
6. (Optional) In **Minimum height before scroll (pixels)**, enter a value between `100` and `5000`. The default is `500`.
7. (Optional) In **Minimum width (pixels)**, enter a value between `8` and `90`. The default is `16`.
8. Select **Apply** to save the changes.

**Result:** The bar chart settings are saved and apply when bar chart views are opened.

## Configure Pie Chart Preferences

To configure pie chart display settings, complete the following steps:

1. In the **Preferences** tree, select **Pie Chart**. The **Pie Chart** settings appear on the right.
2. (Optional) In **Space between slices (pixels)**, enter a value between `0` and `50`. The default is `10`.
3. (Optional) In **Minimum width before scroll (pixels)**, enter a value. The default is `150`.
4. (Optional) In **Minimum height before scroll (pixels)**, enter a value. The default is `150`.
5. (Optional) Clear the **Show labels** option to remove job count labels from each pie section. This option is selected by default.
6. (Optional) In **Ratio**, enter a value between `1` and `50`. The default is `10`.
7. (Optional) In **Rotation**, enter a value between `0` and `360`. The default is `0`.
8. Select **Apply** to save the changes.

**Result:** The pie chart settings are saved and apply when pie chart views are opened.

## Configure Meter Chart Preferences

To configure meter chart display settings and save all preferences, complete the following steps:

1. In the **Preferences** tree, select **Meter Chart**. The **Meter Chart** settings appear on the right.
2. (Optional) Select the **Show labels** option to display labels on the meter chart. This option is selected by default.
3. (Optional) In **Minimum width before scroll (pixels)**, enter a value between `100` and `2000`. The default is `200`.
4. (Optional) In **Minimum height before scroll (pixels)**, enter a value between `100` and `2000`. The default is `200`.
5. (Optional) In **End Value for Alert zone (%)**, enter a value between `100` and `2000`. The default is `150`.
6. (Optional) In **End Value for Warning zone (%)**, enter a value. The default is `200`. The warning value must be greater than or equal to the alert value.
7. Select **Apply** to save the changes.
8. Select **OK** to save all changes and close the **Preferences** dialog.

**Result:** All chart preferences are saved. Close and reopen chart views for the new settings to take effect.
