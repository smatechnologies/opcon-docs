---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Schedule or Job Master
description: "Use this procedure to open the Job Master or Schedule Master editor for a schedule or job from within Frequency Manager in Enterprise Manager."
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

# Editing Schedule or Job Master

Use this procedure to open the **Job Master** or **Schedule Master** editor for a schedule or job directly from Frequency Manager in Enterprise Manager.

## Before You Begin

- Frequency Manager must be open. If it is not open, see [Using Frequency Manager](Using-Frequency-Manager.md).
- You must have the appropriate privileges to edit master records.

## Edit a Schedule or Job Master Record

To edit a schedule or job master record from Frequency Manager, complete the following steps:

1. Select **Frequency Manager** under the **Management** topic. The **Frequency Manager** screen displays.
2. In the **Frequencies** list, select the frequency whose schedules or jobs you want to view.
3. In the **Master Schedules/Jobs using this Frequency** panel, locate the schedule or job you want to edit.
4. Open the master editor using one of the following methods:
   - Double-click the row.
   - Select the row and press **Enter**.
   - Select the row and select **Edit Selected Job or Schedule** in the panel toolbar.

   The **Job Master** or **Schedule Master** editor opens for the selected record.

5. Make the required changes in the editor.
6. Select **Close** (to the right of the **Job Master** or **Schedule Master** tab) to close the editor.
7. Select **Close** (to the right of the **Frequency Manager** tab) to close Frequency Manager.

**Result:** Your changes are saved to the master record. The updates take effect the next time the schedule or job is built or referenced by the Schedule Activity Monitor.

:::note
Changes saved to master records do not affect daily table records that are already built. Edits to daily table records apply only to the current instance.
:::

## Related Topics

- [Using Frequency Manager](Using-Frequency-Manager.md)
- [Editing Frequency Definitions](Editing-Frequency-Definitions.md)
- [Viewing Schedules and Jobs using Frequency Names](Viewing-Schedules-and-Jobs.md)
