---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Global Properties
description: "Use this procedure to edit an existing Global Property in Enterprise Manager."
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

# Editing Global Properties

A Global Property is a named value stored in the OpCon database. Job definitions and events reference a property using the `[[PropertyName]]` syntax to pass dynamic values — such as file paths, dates, or counters — into automation workflows. Use this procedure to update the name, value, documentation, or encryption setting of an existing Global Property in Enterprise Manager.

## Edit a Global Property

To edit a Global Property, complete the following steps:

1. Under the **Administration** topic, select **Global Properties**. The **Global Properties** screen opens.
2. In the **Select Global Property** list, select the property you want to edit.
3. Update one or more of the following fields:
   - **Name** — The property name (up to 64 characters).
   - **Documentation** — Optional notes describing the property's purpose (up to 4,000 characters).
   - **Encrypted** — Select this option to mask the value. Once encrypted, this option cannot be cleared.
   - **Value** — The property value (up to 4,000 characters). If **Encrypted** is selected, select **Reveal Value** to view the current value before editing.
4. On the **Global Properties** toolbar, select **Save**.
5. Select **Close ☒** to the right of the **Global Properties** tab to close the screen.

**Result:** The updated property is saved to the OpCon database. Any schedule or job that references this property will use the new value the next time the record is built or referenced.

## Notes

- Changes saved to a Global Property in the Job Master take effect the next time the record is built or referenced.
- Edits applied directly to a Daily table record affect only that current instance of the job or schedule.
- System-managed tokens display as read-only in the **Name** and **Documentation** fields; only the **Value** field remains editable for those properties.
