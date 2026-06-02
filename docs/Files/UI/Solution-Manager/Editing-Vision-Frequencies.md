---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Vision Frequencies
description: "Edit an existing Vision Frequency definition from the Vision Frequencies page in Solution Manager."
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

# Editing Vision Frequencies

A Vision Frequency defines a set of dates that controls when a Vision card is displayed. You can update the name, description, date policy, or selected dates for any existing frequency from the **Vision Frequencies** page.

You must have the **Maintain Vision Frequencies** function privilege to perform this procedure.

To edit a Vision Frequency, complete the following steps:

1. Select the **Frequencies** button on the **Vision Live** page or the **Vision Settings** page. The **Vision Frequencies** page opens and lists all existing frequencies.
2. Select the frequency you want to edit from the list.
3. Select the **Edit** button.

   :::tip
   You can also double-click a frequency row to open it directly in the editor.
   :::

   The **Vision Frequency** dialog opens.

4. Update any of the following fields as needed:

   | Field | Description |
   |---|---|
   | **Name** | Required. A unique name for the frequency (maximum 255 characters). |
   | **Description** | Optional. A description of the frequency (maximum 4000 characters). |
   | **Date Policy** | Select **Include Selected Dates** to specify dates the card is displayed, or **Exclude Selected Dates** to specify dates the card is not displayed. |
   | Calendar | Select or clear individual dates on the calendar. Use the **+** or **−** buttons to add or remove dates in bulk. |

5. Select **Save**.

**Result:** Solution Manager saves the updated frequency. The **Vision Frequencies** list refreshes to reflect the changes. Any Vision cards that reference this frequency will use the updated settings on their next evaluation.

## Related Topics

- [Adding Vision Frequencies](Adding-Vision-Frequencies.md)
- [Deleting Vision Frequencies](Deleting-Vision-Frequencies.md)
- [Managing Vision Frequencies](Managing-Vision-Frequencies.md)
