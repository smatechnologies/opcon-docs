---
title: Setting Preferences for Charts
description: "Use this procedure to set Preferences for Charts in the Enterprise Manager."
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

# Setting Preferences for Charts

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to set Preferences for Charts in the Enterprise Manager.

:::note
Close and re-open the charts for changes in this section to take effect.
:::

### Open Chart Preferences

To open the chart preferences and configure general chart display options, complete the following steps:

1. Open the Enterprise Manager application
2. Use menu path: **EnterpriseManager \> Preferences**. The **Preferences** dialog displays
3. Select the arrow (![Expand Arrow](../../../Resources/Images/EM/EMarrowtoexpand.png "Expand Arrow ")) next to **Enterprise Manager** in the Preferences tree to expand the list
4. Select **Charts**. The **Charts** settings display to the right
5. *(Optional)* Select the **Show Legend** option to show the legend on the charts. (Checked by default.)
6. *(Optional)* Select the **Use Transparency** option to show the charts with transparency
7. *(Optional)* Select the **Use Depth** option to show 3-D charts
8. *(Optional)* Select the **Beep and Notify for failed jobs** option to send a notification and beep three times when a job fails in chart view. (Checked by default.)
9. Select **Apply** to save the changes in this window

### Configure Bar Chart Settings

To configure bar chart display settings, complete the following steps:

1. Select the arrow (![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)) next to **Charts** in the Preferences tree to expand the list
2. Select **Bar Chart** in the Preferences tree. The **Bar Chart** settings display to the right
3. *(Optional)* Select the **Oldest date on top** option to show the oldest date at the top when viewing all dates
4. *(Optional)* Select the **Tube** option to show tubes instead of rectangles. (Selected by default.)
5. *(Optional)* Select the **Transposed** option to view bars horizontally. (Checked by default.) Clear the option to view bars vertically
6. *(Optional)* Set the *value* in the **Minimum height before scroll (pixels)** text box (default: 500; valid range: 100–5000)
7. *(Optional)* Set the *value* in the **Minimum width (pixels)** text box (default: 16; valid range: 8–90)
8. Select **Apply** if any changes were made

### Configure Pie Chart Settings

To configure pie chart display settings, complete the following steps:

1. Select **Pie Chart** in the Preferences tree. The **Pie Chart** settings display to the right
2. *(Optional)* Set the *value* in the **Space between slices (pixels)** text box (default: 10; valid range: 0–50)
3. *(Optional)* Set the *value* in the **Minimum width before scroll (pixels)** text box (default: 150)
4. *(Optional)* Set the *value* in the **Minimum height before scroll (pixels)** text box (default: 150)
5. *(Optional)* Clear the **Show labels** option to remove job count labels from each pie section
6. *(Optional)* Set the *value* in the **Ratio** text box (default: 10)
7. *(Optional)* Set the *value* in the **Rotation** text box (default: 0)
8. Select **Apply** if any changes were made

### Configure Workload Chart Settings

To configure workload chart display settings and save all preferences, complete the following steps:

1. Select **Workload Chart** in the Preferences tree. The **Workload Chart** settings display to the right
2. *(Optional)* Select the **Show labels** option to display labels on the Workload Chart. (Checked by default.)
3. *(Optional)* Set the *value* in the **Minimum width before scroll (pixels)** text box (default: 200)
4. *(Optional)* Set the *value* in the **Minimum height before scroll (pixels)** text box (default: 200)
5. *(Optional)* Set the *value* in the **End value for Alert zone (%)** text box (default: 150)
6. *(Optional)* Set the *value* in the **End value for Warning zone (%)** text box (default: 200)
7. Select **Apply** to save the changes in this dialog
8. Select **OK** to save the changes and close the **Preferences** dialog

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Setting Preferences for Charts procedure involve?**

The Setting Preferences for Charts procedure is divided into four phases: general chart settings, bar chart settings, pie chart settings, and workload chart settings. Complete all relevant phases and select **OK** to save your changes.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
