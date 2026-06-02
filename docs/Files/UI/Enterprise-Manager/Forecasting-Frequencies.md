---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Forecasting Frequencies
description: "How to preview the scheduled dates for a frequency using the Forecast dialog in Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-06-02
doc_type: procedural
---

# Forecasting Frequencies

The **Forecast** dialog in Enterprise Manager displays a 12-month calendar view showing every date on which a frequency will cause a job to run. You can step through years and compare frequencies side by side before committing changes.

## Forecast a frequency

To forecast a frequency from Frequency Manager, complete the following steps:

1. In the Enterprise Manager navigation pane, select **Frequency Manager** under the **Management** category. The **Frequency Manager** screen opens.
2. Select the frequency name in the list.
3. Select **Forecast** on the toolbar. The **Forecast** dialog opens and displays the current calendar year starting from January.
4. Review the highlighted dates across the 12-month calendar view.
   - To show four months per row instead of three, select the **Wide View** option.
   - To view a different year, select the left or right arrow button to move backward or forward one year at a time.
5. Select **OK** to close the **Forecast** dialog.
6. Select **Close** to close the **Frequency Manager** screen.

**Result:** The forecasted dates confirm when the frequency will schedule jobs, allowing you to verify the frequency definition before it is applied.
