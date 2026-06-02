---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Renaming Frequencies
description: "How to rename a frequency using the Frequency Manager in Enterprise Manager."
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

# Renaming Frequencies

Use the Frequency Manager to rename an existing frequency. The rename applies the new name across all jobs and schedules that reference the frequency.

To rename a frequency, complete the following steps:

1. In Enterprise Manager, select **Frequency Manager** under the **Management** topic. The **Frequency Manager** screen opens.
2. In the **Frequencies** filter text box, type the frequency name or scroll to locate it, then select the frequency.
3. Select the **Rename** button in the **Frequency Manager** toolbar. The **Frequency Definition Wizard** opens on the frequency name page.
4. In the **Frequency Name** field, clear the existing name and type the new name.
   - Maximum length: 20 characters.
   - The following characters are not allowed: `' | " ; % & < > ( ) [ ] { } , = ! \ space . \``
5. Select **Finish**.
6. Select **Close** (the X to the right of the **Frequency Manager** tab) to close the **Frequency Manager** screen.

**Result:** The frequency is saved under the new name. All jobs and schedules that referenced the original frequency are updated automatically.
