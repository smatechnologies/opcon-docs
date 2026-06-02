---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Managing Vision Frequencies
description: "Vision Frequencies define which days cards are displayed in the Vision module. Use this page to add, edit, and delete frequencies from the central Vision Frequencies admin page."
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

# Managing Vision Frequencies

Vision Frequencies define which days cards are displayed in the Vision module. Tag cards require at least one frequency; group cards inherit frequencies from their children and do not require one. Multiple frequencies can be associated with a card. If multiple frequencies match a given day, the first match in priority order applies SLAs and triggers.

:::note Required privilege
You must have the **Maintain Vision Frequencies** function privilege to access the Vision Frequencies page.
:::

## Vision Frequency fields

The following fields apply when you configure a Vision Frequency.

**Name** — The frequency name. Required; must be unique. Maximum 255 characters.

**Description** — *(Optional)* A description for the frequency. Maximum 4,000 characters.

**Date Policy** — Whether the listed dates are included or excluded:

- **Include Selected Dates** — The card is displayed on the selected dates (shown with green highlight on the calendar).
- **Exclude Selected Dates** — The card is not displayed on the selected dates (shown with red highlight on the calendar).

Select individual dates directly on the calendar, or use the **+** button to add dates and the **−** button to remove dates.

**SLA** — Defines the service level agreement for a frequency, specifying which days to monitor the expected start or end time. When an SLA requirement is defined, a triangular indicator may appear next to the Start Time or End Time on a card to show the SLA is broken or at risk. For more information, refer to [Vision Card Colors](Viewing-Cards-in-Vision-Live.md#Vision).

- **Requirement** — The time expectation to monitor:
  - **Expected Start Time** — The SLA monitors the expected start time.
  - **Expected End Time** — The SLA monitors the expected end time.

- **Time** — The time the SLA monitors.

- **Day** — The day offset for SLA monitoring:

  | Value | Description |
  |---|---|
  | **-5** through **-2** | 5–2 days before the frequency day |
  | **Previous** | One day before the frequency day |
  | **Current** | The frequency day itself |
  | **Next** | One day after the frequency day |
  | **+2** through **+5** | 2–5 days after the frequency day |

:::tip Example — cross-midnight SLA
A card starts at 8:00 a.m. and finishes at 1:00 a.m. the next day. Define two SLAs:

- **Requirement**: Expected Start Time | **Time**: 08:00 | **Day**: Current
- **Requirement**: Expected End Time | **Time**: 01:00 | **Day**: Next
:::

**Trigger(s)** — Defines the conditions that run an action.

- **Status** — The card state that fires the trigger:
  - **Unknown** — Card status is unknown.
  - **Calculating** — Card status is calculating.
  - **Failed** — Completed card status is Failed.
  - **Partial Failed** — Card is running but at least one child card has failed.
  - **Finished OK** — Completed card status is Finished OK.
  - **Started Late (SLA)** — Card started late based on the SLA Start Time requirement.
  - **Finished Late (SLA)** — Card finished late based on the SLA End Time requirement.
  - **Estimated Late to Start (SLA)** — Vision estimates the card will start late based on the SLA Start Time requirement.
  - **Estimated Late to Finish (SLA)** — Vision estimates the card will finish late based on the SLA End Time requirement.

- **Runnable(s)** — The action to run when the trigger fires:
  - **Action** — Select an existing action or define a new one. For more information, refer to [Managing Vision Actions](Managing-Vision-Actions.md).
  - **Repeat After** — *(Optional)* Minutes between repeated action runs until the problem resolves. Options: 1, 2, 3, 4, 5, 10, 15, 20, 30, 45, or 60 minutes.
  - **Instance** — The remote instance used when the action is submitted. The action runs as the Vision Action User. For more information, refer to [Managing Vision Remote Instances](Managing-Vision-Remote-Instances.md).

## Add a Vision Frequency

To add a Vision Frequency, complete the following steps:

1. Go to the **Vision Settings** page and select **Frequencies** in the toolbar.

   The **Vision Frequencies** page lists all existing frequencies.

2. Select **Add**.
3. Enter a **Name** for the frequency.
4. *(Optional)* Enter a **Description**.
5. Select a date policy from the **Date Policy** list.
6. Select dates on the calendar, or use the **+** and **−** buttons to add or remove dates.
7. Select **Save**.

**Result:** The new frequency appears in the frequencies list and is available to associate with Vision cards.

## Edit a Vision Frequency

To edit a Vision Frequency, complete the following steps:

1. Go to the **Vision Settings** page and select **Frequencies** in the toolbar.
2. Select the frequency you want to edit.
3. Select **Edit**.
4. Modify the fields as needed.
5. Select **Save**.

**Result:** The updated frequency is saved and reflected on any cards that use it.

## Delete a Vision Frequency

To delete a Vision Frequency, complete the following steps:

1. Go to the **Vision Settings** page and select **Frequencies** in the toolbar.
2. Select the frequency you want to delete.
3. Select **Delete**.
4. Select **Yes** to confirm.

**Result:** The frequency is removed. You cannot delete a frequency that is currently associated with a Vision card; an error message identifies the cards that must be updated first.

## Related topics

- [Adding Vision Frequencies](Adding-Vision-Frequencies.md)
- [Editing Vision Frequencies](Editing-Vision-Frequencies.md)
- [Deleting Vision Frequencies](Deleting-Vision-Frequencies.md)
