---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Setting up User Inputs
description: "When a Variable is defined within an OpCon Event definition, it becomes available as a User Input that operators complete when they run the Service Request."
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

# Setting up User Inputs

When a Variable is defined within an OpCon Event definition, it becomes available as a User Input. User Input fields display to users when they select the Service Request button.

By default, OpCon sets a new Variable as a User Input of type **Text** with no validation, allowing users to type any value. That text is placed in the OpCon Event just before SAM processes it.

## User Input types

The following User Input types are available when configuring a Service Request:

| Type | Description |
|---|---|
| **Text** | Displays a text field. Supports validation rules such as minimum/maximum characters, restricted characters, regular expressions, and output formatting. |
| **Number** | Displays a numeric field with optional minimum and maximum value constraints. |
| **Date** | Displays a date picker with optional start date, end date, and date format settings. |
| **Choice** | Displays a list of predefined caption-and-value pairs for the user to select from. |
| **Text Collection** | Displays a multi-value text field. Supports delimiter configuration and optional duplicate restriction. |
| **Master Job** | Displays a job selector scoped to a master schedule. |
| **Master Schedule** | Displays a schedule selector from the master schedule list. |

## Configure a User Input

To configure an individual User Input, complete the following steps:

1. Go to the Service Request definition page and locate the **User Inputs** list.
2. Select the User Input you want to configure, or select the **Edit** button next to it.

   The **Configure User Input** page opens.

3. Enter a value in the **User Input Caption** field. This caption displays to users when they run the Service Request. If left blank, the Variable name is used.
4. Toggle the **Required Variable** option to require users to supply a value before submitting the Service Request.
5. Select a type in the **User Input Type** list.
6. Configure any additional settings that appear for the selected type.
7. Select **OK** to save, or **Cancel** to discard changes and return to the Service Request definition page.

**Result:** The User Input is saved with the selected type and settings. The updated caption and validation rules apply the next time a user runs the Service Request.

## Reorder User Inputs

The order of User Inputs in the list determines the order in which fields appear to users when they run the Service Request.

To reorder User Inputs, complete the following steps:

1. Go to the Service Request definition page and locate the **User Inputs** list.
2. Use the up and down arrows next to a User Input to move it to the desired position.

**Result:** The updated order takes effect the next time a user opens the Service Request.

## Related topics

- [Configuring Text User Inputs](Configuring-Text-User-Inputs.md)
- [Configuring Number User Inputs](Configuring-Number-User-Inputs.md)
- [Configuring Date User Inputs](Configuring-Date-User-Inputs.md)
- [Configuring Text Collection User Inputs](Configuring-Text-Collection-User-Inputs.md)
- [Configuring Master Schedule User Inputs](Configuring-Master-Schedule-User-Inputs.md)
- [Configuring Master Job User Inputs](Configuring-Master-Job-User-Inputs.md)
- [Configuring Choice User Inputs](Configuring-Choice-User-Inputs.md)
