---
title: Editing Master Schedules
description: "Use this procedure to edit a Master Schedule in Solution Manager."
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

# Editing Master Schedules

## Required Privileges

<!-- GAP: The existing page lists "n/a" for required privileges. The Copying Master Schedules sibling page requires "All Function Privileges" or "Maintain Schedules". Confirm whether editing a master schedule requires the same privileges or is unrestricted — needs SME/source verification. -->

## Editing a Schedule

To edit a Master Schedule, complete the following steps:

1. Go to **Studio**.
2. Select the schedule you want to edit.
3. Select **Edit**. The Create Master Schedule page opens with the existing schedule values populated.
4. Update the fields as needed. For details on each field, refer to [Adding Master Schedules](./Adding-Master-Schedules.md).
5. Select **Save** to apply the changes, or **Back** to discard them.

**Result:** The schedule definition is updated in the Master tables. Changes take effect the next time the schedule is built or the existing Daily table record is rebuilt.

## FAQs

**Q: Do edits to master schedules take effect immediately?**

Changes saved to master schedules in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

**Q: Can I edit a schedule that is currently running?**

<!-- GAP: Behavior when editing a master schedule that has an active Daily instance is unconfirmed — needs SME/source verification. -->
