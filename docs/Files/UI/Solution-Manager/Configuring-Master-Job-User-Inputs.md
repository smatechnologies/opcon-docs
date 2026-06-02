---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Configuring Master Job User Inputs
description: "A Master Job user input presents a list of jobs from a specified schedule when an operator runs a Service Request. Use this procedure to add and configure a Master Job user input on a Service Request."
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

# Configuring Master Job User Inputs

A Master Job user input presents the operator with a filtered list of jobs from a specified schedule when they run a Service Request. Only jobs for which the logged-in user has privileges appear in the list.

## Before You Begin

You must have the **View Service Requests** function privilege and an active Self Service license to access Service Request configuration.

## Configure a Master Job User Input

To configure a Master Job user input, complete the following steps:

1. In Solution Manager, go to **Self Service**.

2. Open the Service Request you want to edit and go to the **User Inputs** section.

3. Select a user input in the **User Inputs** list, or select **Edit** next to the user input you want to configure.

   ![Edit User Input](../../../Resources/Images/SM/Editing-User-Input.png "Edit User Input")

   The **Configure User Input** page opens.

   ![Configure User Input Screen](../../../Resources/Images/SM/Setting-Up-User-Inputs_master-job.png "Configure User Input Screen")

4. In the **User Input Caption** field, enter the label to display when operators run the Service Request. If you leave this field blank, the variable name is used as the caption.

5. To make this field required, enable the **Required Variable** option.

6. In the **User Input Type** list, select **Master Job**.

   An additional **Schedule Name** field appears below the type selector.

7. In the **Schedule Name** field, select or enter the name of the schedule whose jobs you want to present to the operator. You can also reference another user input variable using the variable expression syntax to populate the schedule name dynamically.

8. Select **OK** to save the user input, or **Cancel** to discard changes and return to the **Service Request definition** page.

**Result:** The user input is saved. When an operator runs the Service Request, the Master Job field displays a list of jobs from the configured schedule that the operator has privileges to access.

## Field Reference

| Field | Description |
|---|---|
| **User Input Caption** | The label displayed to operators when running the Service Request. Defaults to the variable name if left blank. |
| **Required Variable** | When enabled, the operator must select a value before submitting the Service Request. |
| **User Input Type** | The type of input control. Select **Master Job** to show a job list. |
| **Schedule Name** | The schedule from which jobs are retrieved. Required when the type is **Master Job**. Accepts a direct schedule name or a variable expression referencing another user input. |
