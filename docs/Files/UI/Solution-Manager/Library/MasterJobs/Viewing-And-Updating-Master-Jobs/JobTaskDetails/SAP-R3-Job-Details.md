---
title: Viewing, Adding, and Editing SAP R/3 and CRM Job Details
description: "SAP R/3 and CRM job details define how OpCon submits background jobs to an SAP R/3 or CRM system, including job name, step details, and interceptor settings."
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

# Viewing, Adding, and Editing SAP R/3 and CRM Job Details

SAP R/3 and CRM job details define how OpCon submits background jobs to an SAP R/3 or CRM system, including job name, step details, and interceptor settings. These details are configured in the **Task Details** panel of an SAP R/3 master job in Solution Manager.

To view, add, or edit SAP R/3 and CRM job details, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Viewing SAP R/3 and CRM Job Details

To view SAP R/3 and CRM job details, complete the following steps:

1. Go to **Library** > **Master Jobs**.
1. Select an SAP R/3 and CRM job in the list.
1. Select **Edit**.
1. Expand the **Task Details** panel.

---

## Adding SAP R/3 and CRM Job Details

To add SAP R/3 and CRM job details, complete the following steps:

1. Create the job and general info as described in [Adding a Job](../../Adding-Master-Jobs.md).
1. Expand the **Task Details** panel. See [SAP R/3 and CRM Job Details](#sap-r3-and-crm-job-details) for field descriptions.

---

## Editing SAP R/3 and CRM Job Details

To edit SAP R/3 and CRM job details, complete the following steps:

1. Go to **Library** > **Master Jobs**.
1. Select an SAP R/3 and CRM job.
1. Select **Edit**.
1. Select the lock button. The button appears gray and locked (![Master Job Definition Read-only Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png 'Master Job Definition Read-only Button')) when in **Read-only** mode and appears green and unlocked (![Job Definition Admin Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png 'Job Definition Admin Button')) when in **Admin** mode.
1. Expand the **Task Details** panel. See [SAP R/3 and CRM Job Details](#sap-r3-and-crm-job-details) for field descriptions.

---

## SAP R/3 and CRM Job Details

:::note
All required fields are designated by a red asterisk.
:::

**In the SAP R/3 and CRM Definition frame:**

- **Job Name**: Name of the job as defined in the SAP R/3 and SAP CRM system.
- **Job Number**: SAP R/3 and SAP CRM job number (Job ID) as defined in the SAP system.
- **running Target**: Name of the SAP Application Server on which the job processes.
- **Start the SAP Job**: Configures SAP start criteria:
  - **A.S.A.P**: Starts the job as soon as a background processor is available.
  - **Start Immediately**: Starts the job as soon as it qualifies to run in OpCon, without waiting for an available SAP background processor. If all background processors are in use, the job fails.

### Select SAP Job

Select the search button next to **Job Name** to open the SAP Query dialog.
![Search Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Search-Job-Sap-Button.png 'Search Button')

#### In the Query Job SAP dialog:

- **Machine**: SAP R/3 Agent machine name.
- **Language**: Two-character language abbreviation (for example, `EN` for English).
- **Job Name**: Text matching the desired job name. Use wildcards (`*`) for partial matches. Avoid using only wildcards — on systems with many jobs, this can cause the SAPQueryProcessor to become unresponsive.
- **User ID**: Username for SAP credentials.
- **Password**: Password for SAP credentials.

Enter SAP credentials and select the search button to retrieve matching job names. Select a job from the list and select **OK** to assign it to the daily job.

#### In the Create SAP Job dialog:

- **Job Name**: Name of the job being created.
- **Job Class**: SAP job class A, B, or C.
- **Spool Recipient**: Spool recipient for the SAP job.
- **Credentials Button**: Opens the SAP Login dialog.
  :::note
  Enter credentials before creating an SAP job. Credentials apply to all SAP queries.
  :::
- **List of Steps**: Add, edit, and delete steps after entering credentials. Steps can be **Abap Program**, **External Command**, or **External Program**.
- **Step Details**: Details for the selected job step. Enter credentials and select an item from **List of Steps** to define details.

#### Enter Credentials

Select **Credentials** under **Credentials Definition** to open the SAP Login dialog.

#### In the SAP Login dialog:

- **Machine**: SAP R/3 Agent machine name.
- **User ID**: Username for SAP credentials.
- **Password**: Password for SAP credentials.
- **Language**: Two-character language abbreviation (for example, `EN` for English).

### Edit SAP Job

Open the Edit SAP Job dialog by selecting the edit button.
![Edit Job Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Edit-Job-Button.png 'Edit Job Button')

Open the credentials dialog and enter credentials.

:::note
Credentials are required to enable the **Query** button.
:::

#### In the SAP Login dialog:

- **Machine**: SAP R/3 Agent machine name.
- **User ID**: Username for SAP credentials.
- **Password**: Password for SAP credentials.
- **Language**: Two-character language abbreviation (for example, `EN` for English).

After entering credentials, select the query button to search for the job. When results appear, make any changes and select **Save**.

### Delete SAP Job

Open the Delete SAP Job dialog by selecting the delete button.
![Delete Job Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Delete-Job-Button.png 'Delete Job Button')

- **Machine**: SAP R/3 Agent machine name.
- **Language**: Two-character language abbreviation (for example, `EN` for English).
- **User ID**: Username for SAP credentials.
- **Password**: Password for SAP credentials.

Enter credentials and select **Yes** to delete the job.

### Add Steps to SAP Job

Select the add button under **List of Steps** to open the Add SAP Step dialog.
![Add SAP Step Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Open-Add-Steps-Dialog-Button.png 'Add SAP Step Button')

#### Add SAP Step Dialog

- **Abap Program**
  - **ABAP Program Selector**: Text matching the desired ABAP program. Use wildcards (`*`) for partial matches.
    ![Abap Program Dialog](../../../../../../../Resources/Images/SM/Operations/SapR3/Add-Steps-Dialog.png 'Abap Program Dialog')
  - Select the search button to retrieve matching ABAP programs from the SAP R/3 system.
    ![Query SAP Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Query-SAP-Button.png 'Query SAP Button')
  - Select an **Abap Program** and select **OK** to add it to the SAP job step.
    ![Abap Query Result](../../../../../../../Resources/Images/SM/Operations/SapR3/Abap-Program-Query-Result.png 'Abap Query Result')
    ![Create Dialog Result](../../../../../../../Resources/Images/SM/Operations/SapR3/Abap-Program-Select-Result.png 'Create Dialog Result')
- **External Command**
  - **External Command Selector**: Text matching the desired external command. Use wildcards (`*`) for partial matches.
    ![External Command Dialog](../../../../../../../Resources/Images/SM/Operations/SapR3/External-Command-Query.png 'External Command Dialog')
  - Enter the command name or select the search button to retrieve matching external commands.
  - Select an **External Command** and select **OK** to add it to the SAP job step.
    ![External Command Result](../../../../../../../Resources/Images/SM/Operations/SapR3/External-Command-Query-Result.png 'External Command Result')
    ![Create Dialog Result](../../../../../../../Resources/Images/SM/Operations/SapR3/External-Command-Select-Result.png 'Create Dialog Result')
- **External Program**
  - **External Program Name**: Text matching the desired external program.
    ![External Program Dialog](../../../../../../../Resources/Images/SM/Operations/SapR3/External-Program-Query.png 'External Program Dialog')
  - Enter the **External Program Name** and select **OK** to add it to the SAP job step.
    ![External Program](../../../../../../../Resources/Images/SM/Operations/SapR3/Entered-External-Program-Name.png 'External Program')
    ![Create Dialog Result](../../../../../../../Resources/Images/SM/Operations/SapR3/External-Program-Select-Result.png 'Create Dialog Result')

:::note
![List Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Up-Down-Button.png 'List Button')
Use the up and down buttons to reorder steps.
:::

### Abap Program Details

- Select **Abap Program** from the list of steps.
  ![Select Abap Program](../../../../../../../Resources/Images/SM/Operations/SapR3/Abap-Program-Select.png 'Select Abap Program')
- **ABAP Program**: Name of the ABAP program.
- **Variant**: Variant for the ABAP program.
  - **Search Variant**: Retrieves all variants for the selected ABAP step from the SAP R/3 system.
    ![Search Variant Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Search-Variant-Button.png 'Search Variant Button')
  - **Add Variant**: Opens the add variant dialog to create a new variant.
    ![Add Variant Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Add-Variant-Button.png 'Add Variant Button')
  - **Edit Variant**: Opens the edit variant dialog. Search and select a variant or create a new one to enable this button.
    ![Edit Variant Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Edit-Variant-Button.png 'Edit Variant Button')
  - **Delete Variant**: Removes the current variant from the selected ABAP step. Search and select a variant or create a new one to enable this button.
    ![Delete Variant Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Delete-Variant-Button.png 'Delete Variant Button')
- **Language**: Two-character language abbreviation (for example, `EN` for English).
- **Print Specifications**: Opens the Print Specifications dialog.
  ![Print Specifications Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Print-Specifications-Button.png 'Print Specifications Button')

### Abap Variants

#### Search Variant Dialog

Select the search button to retrieve all variants for the selected ABAP step.
![Search Variant Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Search-Variant-Button.png 'Search Variant Button')

Select a **Variant** and select **OK** to apply it to the ABAP step.
![Search Variant Result](../../../../../../../Resources/Images/SM/Operations/SapR3/Search-Variant-Select-Result.png 'Search Variant Result')
![Search Variant Save](../../../../../../../Resources/Images/SM/Operations/SapR3/Search-Variant-Save.png 'Search Variant Save')

#### Add Variant Dialog

Select the add button to open the create variant dialog.
![Add Variant Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Add-Variant-Button.png 'Add Variant Button')

Wait for the SAP Business Warehouse system to return **Variant Parameters**.
![Wait For Variant Parameters](../../../../../../../Resources/Images/SM/Operations/SapR3/Wait-For-Variant-Parameters.png 'Wait For Variant Parameters')

- **Variant Name**: Name for the variant being created.
- **Temporary Variant**: Creates the variant in the local database. The variant is created when the daily job is saved and deleted when the daily job or SAP job is deleted.
- **Variant Parameters**: Returned from the SAP Business Warehouse system when the create variant dialog opens.

![Create Variant Dialog](../../../../../../../Resources/Images/SM/Operations/SapR3/Create-New-Variant-Dialog.png 'Create Variant Dialog')

Select a variant parameter to update its values, then select the update button to apply.
![Update Variant Parameter](../../../../../../../Resources/Images/SM/Operations/SapR3/Update-Variant-Parameter-Values.png 'Update Variant Parameter')

#### Edit Variant Dialog

Select or create a variant to enable the edit button, then open the edit variant dialog.
![Edit Variant Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Edit-Variant-Button.png 'Edit Variant Button')

Wait for **Variant Parameters** to be returned.
![Wait For Variant Parameters](../../../../../../../Resources/Images/SM/Operations/SapR3/Edit-Wait-For-Variant-Parameters.png 'Wait For Variant Parameters')

- **Variant Name**: Name of the variant being updated (read-only).
- **Refresh**: Sends a request to check and load new parameter values.

![Edit Variant Dialog](../../../../../../../Resources/Images/SM/Operations/SapR3/Edit-Variant-Dialog.png 'Edit Variant Dialog')

Select a variant parameter to update its values, then select the update button to apply.
![Edit Variant Parameter](../../../../../../../Resources/Images/SM/Operations/SapR3/Edit-Variant-Parameter-Value.png 'Edit Variant Parameter')

#### Delete Variant Dialog

Select or create a variant to enable the delete button, then select it to remove the variant from the **Abap Program**.
![Delete Variant Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Delete-Variant-Button.png 'Delete Variant Button')

:::note
This removes the variant from the ABAP step only. It does not permanently delete the variant from the SAP Business Warehouse system.
:::

### Abap Print Specifications

Select the **Print Specifications** button to open the dialog.
![Print Specifications Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Print-Specifications-Button.png 'Print Specifications Button')

#### General Attribute Tab

- **Output Device**: Output device. Select the search button to query SAP for available devices.
  ![Output Device Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Output-Device-Button.png 'Output Device Button')
- **Number of Copies**: Number of copies to print.
- **Time of Printing**: When to print.
- **Print Format**: Print format. Select the search button to query SAP for available formats. An output device must be selected first to enable the query button.
  ![Print Format Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Print-Format-Button.png 'Print Format Button')
  ![General Attribute](../../../../../../../Resources/Images/SM/Operations/SapR3/General-Attribute-Tab.png 'General Attribute')

#### Spool Request Tab

- **Name**: Spool request name.
- **Title**: Spool request title.
- **Authorization**: Spool request authorization.
  ![Spool Request](../../../../../../../Resources/Images/SM/Operations/SapR3/Spool-Request-Tab.png 'Spool Request')

#### Cover Sheets Tab

- **SAP Cover Page**: Whether a cover page should be printed.
- **Selection Cover Sheet**: Selection cover sheet.
- **Recipient**: Recipient field.
- **Department**: Department field.
  ![Copy Sheets](../../../../../../../Resources/Images/SM/Operations/SapR3/Copy-Sheets-Tab.png 'Copy Sheets')

#### Output Options Tab

- **Spool Retention Period**: When to delete after printing.
- **Delete Immediately After Printing**: Deletes the spool immediately after printing.
- **New Spool Request**: Creates a new spool request.
  ![Output Options](../../../../../../../Resources/Images/SM/Operations/SapR3/Output-Options-Tab.png 'Output Options')

### External Command Details

- **Command**: Name of the selected external command.
- **Parameters**: Parameters for the external command.
- **Operating System**: Operating system for the external command.
- **Target Server**: Target server for the external command.
- **Log external output to job log**: Logs external output to the job log.
- **Log external errors to job log**: Logs external errors to the job log.
- **Job awaiting external termination**: Waits for external termination.
- **Active trace**: Activates trace.
  ![External Command Details](../../../../../../../Resources/Images/SM/Operations/SapR3/External-Command-Details.png 'External Command Details')

### External Program Details

- **Program**: Name of the selected external program.
- **Parameters**: Parameters for the external program.
- **Target Server**: Target server for the external program.
- **Log external output to job log**: Logs external output to the job log.
- **Log external errors to job log**: Logs external errors to the job log.
- **Job awaiting external termination**: Waits for external termination.
- **Active trace**: Activates trace.
  ![External Program Details](../../../../../../../Resources/Images/SM/Operations/SapR3/External-Program-Details.png 'External Program Details')

### Select running Target

Select the search button next to **running Target** to open the SAP Query dialog.
![Search Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Search-Exec-Sap-Button.png 'Search Button')

#### In the SAP Query dialog:

- **Machine**: SAP R/3 Agent machine name.
- **Language**: Two-character language abbreviation (for example, `EN` for English).
- **User ID**: Username for SAP credentials.
- **Password**: Password for SAP credentials.

![SAP Query Dialog](../../../../../../../Resources/Images/SM/Operations/SapR3/SAP-Exec-Query-Dialog.png 'SAP Query Dialog')

Enter SAP credentials and select the search button to retrieve all running targets.
![Query SAP Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Query-SAP-Button.png 'Query SAP Button')

Select a target from the list and select **Ok** to assign it to the **running Target** field.
![Exec List](../../../../../../../Resources/Images/SM/Operations/SapR3/Sap-Exec-Dialog-List.png 'Exec List')
![Exec. Target](../../../../../../../Resources/Images/SM/Operations/SapR3/Sap-Exec-Target-Update.png 'Exec. Target')

### Remove running Target

To remove the **running Target**, select the delete button.

---

## More Information

For conceptual information, refer to [SAP R/3 and CRM Jobs](../../../../../../../job-types/sap.md) in the **Concepts** online help.
