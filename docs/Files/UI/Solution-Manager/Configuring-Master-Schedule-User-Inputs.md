---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Configuring Master Schedule User Inputs
description: "When configured, the Master Schedule User Input displays as a filterable list of Master Schedules for which the logged-in user has privileges when running the Service Request."
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

# Configuring Master Schedule User Inputs

The **Master Schedule** User Input type presents a filterable list of Master Schedules when a user runs a Service Request. Only Schedules for which the logged-in user has privileges appear in the list.

## Configure a Master Schedule User Input

To configure a Master Schedule User Input, complete the following steps:

1. On the **Service Request definition** page, select a user input in the **User Inputs** list, or select **Edit** next to the desired user input.

   ![Edit User Input](../../../Resources/Images/SM/Editing-User-Input.png "Edit User Input")

   The **Configure User Input** page opens.

   ![Configure User Input Screen](../../../Resources/Images/SM/Setting-Up-User-Inputs_master-schedule.png "Configure User Input Screen")

2. In the **User Input Caption** field, enter the label to display when users run the Service Request. The variable name is used by default.
3. To require a value before the Service Request can be submitted, enable the **Required Variable** option.
4. In the **User Input Type** field, select **Master Schedule**.
5. Select **OK** to save, or **Cancel** to discard changes and return to the **Service Request definition** page.

**Result:** The user input is saved. When a user runs the Service Request, a filterable list of Master Schedules appears for that field. If **Required Variable** is enabled, the list does not allow an empty selection.
