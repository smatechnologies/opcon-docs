---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Managing Interception Profiles
description: "Create, edit, activate, deactivate, and delete SAP interception profiles in Enterprise Manager to control which SAP jobs OpCon intercepts on an SAP R/3 or CRM machine."
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

# Managing Interception Profiles

An SAP interception profile defines the criteria OpCon uses to intercept SAP jobs on a specific SAP R/3 or CRM machine. Each profile contains one or more criterion rows that filter jobs by **Client**, **Job Class**, **Job Name**, and **Job Creator**. Profiles can be activated or deactivated independently, giving you control over which criteria are in effect without deleting them.

All procedures in this topic begin from the **SAP Interception Profiles** dialog for the target machine.

## Open the SAP Interception Profiles Dialog

To open the **SAP Interception Profiles** dialog, complete the following steps:

1. In the **Operation** topic, select **Machines Status**.
2. Right-click the SAP R/3 or CRM machine name.
3. Hover over **SAP Machine** and select **Interception Profiles**.

**Result:** The **SAP Interception Profiles** dialog opens and loads the existing profiles. The profile list displays four columns: **Profile ID**, **Description**, **State**, and **Author**.

## Create an Interception Profile

To create an interception profile, complete the following steps:

1. In the **SAP Interception Profiles** dialog, select **Create**. The **Create New Profile** dialog opens.
2. Enter a profile description in the **New Profile Description** field and select **OK**. The **SAP Interception Profile** dialog opens for the new profile.
3. Define the interception criteria. Each criterion row can filter on **Client**, **Job Class**, **Job Name**, and **Job Creator**. At least one field must have a value before the row can be saved.
4. Select **Save** to save the criteria.

**Result:** The new profile appears in the profile list with a **State** of inactive. The profile is not in effect until you activate it.

## Edit an Interception Profile

To edit an interception profile, complete the following steps:

1. In the **SAP Interception Profiles** dialog, select the profile in the list.
2. Select **Edit**. The **SAP Interception Profile** dialog opens.
3. Modify the interception criteria as needed.
4. Select **Save**.

**Result:** The updated criteria take effect the next time OpCon evaluates the profile, provided the profile is active.

## Activate an Interception Profile

To activate an interception profile, complete the following steps:

1. In the **SAP Interception Profiles** dialog, select the profile in the list.
2. Select **Activate**.

**Result:** The profile **State** changes to active. OpCon begins intercepting SAP jobs that match the profile criteria.

:::note
The **Activate** button is available only when the selected profile is inactive or has no state set. If the profile is already active, use **Deactivate** first.
:::

## Deactivate an Interception Profile

To deactivate an interception profile, complete the following steps:

1. In the **SAP Interception Profiles** dialog, select the profile in the list.
2. Select **Deactivate**.

**Result:** The profile **State** changes to inactive. OpCon stops intercepting SAP jobs based on this profile's criteria, but the profile remains in the list and can be reactivated.

## Delete an Interception Profile

To delete an interception profile, complete the following steps:

1. In the **SAP Interception Profiles** dialog, select the profile in the list.
2. Select **Delete**. A confirmation dialog appears asking whether you want to delete the profile.
3. Select **Yes** to confirm the deletion.

**Result:** The profile is permanently removed from the list.

:::caution
Deleting a profile is permanent. If you want to stop interception temporarily, use **Deactivate** instead.
:::
