---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Vision Frequencies
description: "Delete one or more Vision Frequencies from the Vision Frequencies page in Solution Manager."
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

# Deleting Vision Frequencies

A Vision Frequency can only be deleted when it is not assigned to any Vision card. If the frequency is in use, Solution Manager displays an error notification listing the cards that reference it. Deletion is permanent; the frequency cannot be recovered after it is removed.

You must have the **Maintain Vision Frequencies** function privilege to perform this procedure.

To delete a Vision Frequency, complete the following steps:

1. Select the **Frequencies** button on the **Vision Live** page or the **Vision Settings** page. The **Vision Frequencies** page opens.
2. Select one or more frequencies from the list.
3. Select the **Delete** button.
4. Select **Yes** in the confirmation dialog.

**Result:** Solution Manager permanently removes the selected frequencies. If a selected frequency is assigned to a card, an error notification appears and the deletion is blocked for that frequency.

## Related Topics

- [Adding Vision Frequencies](Adding-Vision-Frequencies.md)
- [Editing Vision Frequencies](Editing-Vision-Frequencies.md)
- [Managing Vision Frequencies](Managing-Vision-Frequencies.md)
