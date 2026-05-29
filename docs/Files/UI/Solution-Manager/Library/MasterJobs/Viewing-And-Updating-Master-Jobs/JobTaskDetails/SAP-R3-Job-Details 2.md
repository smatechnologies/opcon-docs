---
title: Viewing, Adding, and Editing SAP R/3 and CRM Job Details
description: "SAP R/3 and CRM job details define how OpCon submits background jobs to an SAP R/3 or CRM system, including job name, step details, and execution target."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Viewing, Adding, and Editing SAP R/3 and CRM Job Details

**Theme:** Configure
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

SAP R/3 and CRM job details define how OpCon submits background jobs to an SAP R/3 or SAP CRM system, including the job name, job steps, and execution target. You configure these details in the **Task Details** panel of an SAP R/3 master job.

Use SAP R/3 and CRM job details when you want OpCon to schedule and run SAP background jobs as part of an OpCon schedule, with the same dependency, frequency, and notification controls as any other job.

## Required Privileges

To view, add, or edit an SAP R/3 and CRM job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Viewing SAP R/3 and CRM Job Details

To view SAP R/3 and CRM job details, complete the following steps:

1. Go to **Library** > **Master Jobs**.
1. Select an SAP R/3 and CRM job in the list.
1. Select **Edit**.
1. Expand the **Task Details** panel.

**Result:** The SAP R/3 and CRM job details appear in the **Task Details** panel.

## Adding SAP R/3 and CRM Job Details

To add SAP R/3 and CRM job details, complete the following steps:

1. Create the job and general info as described in [Adding a Job](../../Adding-Master-Jobs.md).
1. Expand the **Task Details** panel. See [SAP R/3 and CRM Job Details Fields](#sap-r3-and-crm-job-details-fields) for the available fields.

**Result:** The SAP R/3 and CRM job details are added to the job.

## Editing SAP R/3 and CRM Job Details

To edit SAP R/3 and CRM job details, complete the following steps:

1. Go to **Library** > **Master Jobs**.
1. Select an SAP R/3 and CRM job.
1. Select **Edit**.
1. Select the lock button. The button appears gray and locked (![Master Job Definition Read-only Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png 'Master Job Definition Read-only Button')) when in **Read-only** mode and green and unlocked (![Job Definition Admin Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png 'Job Definition Admin Button')) when in **Admin** mode.
1. Expand the **Task Details** panel. See [SAP R/3 and CRM Job Details Fields](#sap-r3-and-crm-job-details-fields) for the available fields.

**Result:** The SAP R/3 and CRM job details are updated.

## SAP R/3 and CRM Job Details Fields

:::note
All required fields are designated by a red asterisk.
:::

**In the SAP R/3 and CRM Definition frame:**

- **Job Name**: Name of the job as defined in the SAP R/3 and SAP CRM system. The job name is limited to 32 characters
- **Job Number**: SAP R/3 and SAP CRM job number (Job ID) as defined in the SAP system
- **Exec. Target**: Name of the SAP Application Server on which the job runs
- **Start SAP Job**: Sets the SAP start criteria for the job
  - **A.S.A.P**: Starts the job as soon as a background process is available
  - **Immediately**: Starts the job as soon as it qualifies to run in OpCon, without waiting for an available SAP background process. If all background processes are in use, a job set to **Immediately** fails

### Select SAP Job

Select the search button next to **Job Name** to open the SAP Query dialog.
![Search Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Search-Job-Sap-Button.png 'Search Button')

#### In the Query Job SAP dialog:

- **Machine**: SAP R3 Agent machine name
- **Language**: Two-character language abbreviation (for example, `EN` for English)
- **Job Name**: Text matching the desired job name in the SAP system. Use wildcards (`*`) for partial names. Do not use only wildcards — on large SAP systems, this causes the SAPQueryProcessor to become unresponsive
- **User ID**: Username for SAP credentials
- **Password**: Password for SAP credentials

Enter the SAP credentials and select the search button to retrieve matching job names, then select a job and select **OK** to assign it to the job.

#### In the Create SAP Job dialog:

- **Job Name**: Name of the job being created. The job name is limited to 32 characters
- **Job Class**: Class of SAP job — `A`, `B`, or `C`. Defaults to `C`
- **Spool Recipient**: Spool recipient for the SAP job
- **Credentials Button**: Opens the SAP Login dialog
  :::note
  Enter credentials before creating an SAP job. Credentials are used for all SAP queries.
  :::
- **Job Steps**: Add, edit, and delete steps (ABAP Program, External Command, or External Program) after entering credentials
- **Step Details**: Details for the selected job step. Enter credentials and select a step from the list to define its details

To enter credentials, select the **Credentials** button under **Credentials Definition** to open the SAP Login dialog.

#### In the SAP Login dialog:

- **Machine**: SAP R3 Agent machine name
- **User ID**: Username for SAP credentials
- **Password**: Password for SAP credentials
- **Language**: Two-character language abbreviation (for example, `EN` for English). Defaults to `EN`

### Edit SAP Job

Select the edit button to open the Edit SAP Job dialog.
![Edit Job Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Edit-Job-Button.png 'Edit Job Button')

Open the credentials dialog and enter credentials.

:::note
Credentials are required to enable the query button.
:::

#### In the SAP Login dialog:

- **Machine**: SAP R3 Agent machine name
- **User ID**: Username for SAP credentials
- **Password**: Password for SAP credentials
- **Language**: Two-character language abbreviation (for example, `EN` for English). Defaults to `EN`

Select the query button after entering credentials to search for the job. When results appear, make any changes and select **Save**.

### Delete SAP Job

Select the delete button to open the Delete SAP Job dialog.
![Delete Job Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Delete-Job-Button.png 'Delete Job Button')

<!-- GAP: The Delete SAP Job dialog field list below (Machine, Language, User ID, Password) is pre-existing content and could not be confirmed in source. The source delete dialog (SAPJobDeleteDialog.java) is a Yes/No/Abort confirmation prompt and does not contain these fields. Needs human review. -->

- **Machine**: SAP R3 Agent machine name
- **Language**: Two-character language abbreviation (for example, `EN` for English)
- **User ID**: Username for SAP credentials
- **Password**: Password for SAP credentials

Enter credentials and select **Yes** to delete the job.

### Add Steps to SAP Job

Select the **Add** button under **Job Steps** to open the Add SAP Step dialog.
![Add SAP Step Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Open-Add-Steps-Dialog-Button.png 'Add SAP Step Button')

#### Add SAP Step Dialog

- **ABAP Program**
  - **ABAP Program Selector**: Text matching the desired ABAP Program. Use wildcards (`*`) for partial names
    ![Abap Program Dialog](../../../../../../../Resources/Images/SM/Operations/SapR3/Add-Steps-Dialog.png 'Abap Program Dialog')
  - Select the search button to retrieve matching ABAP Programs, then select one and select **OK** to add it to the SAP job step
    ![Abap Query Result](../../../../../../../Resources/Images/SM/Operations/SapR3/Abap-Program-Query-Result.png 'Abap Query Result')
    ![Create Dialog Result](../../../../../../../Resources/Images/SM/Operations/SapR3/Abap-Program-Select-Result.png 'Create Dialog Result')

- **External Command**
  - **External Command Selector**: Text matching the desired External Command. Use wildcards (`*`) for partial names
    ![External Command Dialog](../../../../../../../Resources/Images/SM/Operations/SapR3/External-Command-Query.png 'External Command Dialog')
  - Enter the name or select the search button to retrieve matches, then select one and select **OK** to add it to the SAP job step
    ![External Command Result](../../../../../../../Resources/Images/SM/Operations/SapR3/External-Command-Query-Result.png 'External Command Result')
    ![Create Dialog Result](../../../../../../../Resources/Images/SM/Operations/SapR3/External-Command-Select-Result.png 'Create Dialog Result')

- **External Program**
  - **External Program Name**: Text matching the desired External Program
    ![External Program Dialog](../../../../../../../Resources/Images/SM/Operations/SapR3/External-Program-Query.png 'External Program Dialog')
  - Enter the name and select **OK** to add it to the SAP job step
    ![External Program](../../../../../../../Resources/Images/SM/Operations/SapR3/Entered-External-Program-Name.png 'External Program')
    ![Create Dialog Result](../../../../../../../Resources/Images/SM/Operations/SapR3/External-Program-Select-Result.png 'Create Dialog Result')

:::note
![List Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Up-Down-Button.png 'List Button')
Use the up and down buttons to change the order of steps.
:::

### ABAP Program Details

- Select **ABAP Program** from the list of steps.
  ![Select Abap Program](../../../../../../../Resources/Images/SM/Operations/SapR3/Abap-Program-Select.png 'Select Abap Program')
- **ABAP Program**: Name of the ABAP Program
- **Variant**: Variant for the ABAP Program
  - **Search Variant Button**: Retrieves all variants for the selected ABAP step from the SAP R3 system
    ![Search Variant Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Search-Variant-Button.png 'Search Variant Button')
  - **Add Variant Button**: Opens the add variant dialog to create a new variant
    ![Add Variant Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Add-Variant-Button.png 'Add Variant Button')
  - **Edit Variant Button**: Opens the edit variant dialog. Search for or create a variant to enable this button
    ![Edit Variant Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Edit-Variant-Button.png 'Edit Variant Button')
  - **Delete Variant Button**: Removes the current variant from the selected ABAP step. Search for or create a variant to enable this button
    ![Delete Variant Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Delete-Variant-Button.png 'Delete Variant Button')
- **Language**: Two-character language abbreviation (for example, `EN` for English)
- **Print Specifications Button**: Opens the Print Specifications dialog
  ![Print Specifications Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Print-Specifications-Button.png 'Print Specifications Button')

### ABAP Variants

#### Search Variant Dialog

Select the search button to retrieve all variants for the selected ABAP step, then select a variant and select **OK** to apply it to the ABAP step.
![Search Variant Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Search-Variant-Button.png 'Search Variant Button')
![Search Variant Save](../../../../../../../Resources/Images/SM/Operations/SapR3/Search-Variant-Save.png 'Search Variant Save')

#### Add Variant Dialog

Select the add button to open the create variant dialog and wait for the variant parameters to load.
![Add Variant Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Add-Variant-Button.png 'Add Variant Button')

- **Variant Name**: Name for the variant being created
- **Temporary Variant**: Creates the variant in the local database. The variant is created when the job is saved and deleted when the job or SAP job is deleted
- **Variant Property Details**: Returned from the SAP system when the dialog opens

![Create Variant Dialog](../../../../../../../Resources/Images/SM/Operations/SapR3/Create-New-Variant-Dialog.png 'Create Variant Dialog')

Select a variant parameter to update its values, then select the update button to save.
![Update Variant Parameter](../../../../../../../Resources/Images/SM/Operations/SapR3/Update-Variant-Parameter-Values.png 'Update Variant Parameter')

#### Edit Variant Dialog

Select or create a variant to enable the edit button, then select it to open the dialog and wait for the parameters to load.
![Edit Variant Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Edit-Variant-Button.png 'Edit Variant Button')

- **Variant Name**: Name of the variant being updated. Cannot be changed
- **Refresh Button**: Sends a request to check and load new parameter values

![Edit Variant Dialog](../../../../../../../Resources/Images/SM/Operations/SapR3/Edit-Variant-Dialog.png 'Edit Variant Dialog')

Select a variant parameter to update its values, then select the update button to save.
![Edit Variant Parameter](../../../../../../../Resources/Images/SM/Operations/SapR3/Edit-Variant-Parameter-Value.png 'Edit Variant Parameter')

#### Delete Variant Dialog

Select or create a variant to enable the delete button, then select it to remove the variant from the ABAP Program step.
![Delete Variant Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Delete-Variant-Button.png 'Delete Variant Button')

:::note
This removes the variant from the ABAP step only. It does not permanently delete the variant from the SAP system.
:::

### ABAP Print Specifications

Select the **Print Specifications** button to open the dialog.
![Print Specifications Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Print-Specifications-Button.png 'Print Specifications Button')

#### General Attribute Tab

- **Output Device**: Output device. Select the search button to query SAP for available devices
  ![Output Device Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Output-Device-Button.png 'Output Device Button')
- **Number of Copies**: Number of copies to print
- **Time of printing**: When to print
- **Print Format**: Format for printing. Select the search button to query SAP for formats. Select an output device first
  ![General Attribute](../../../../../../../Resources/Images/SM/Operations/SapR3/General-Attribute-Tab.png 'General Attribute')

#### Spool Request Tab

- **Name**: Spool request name
- **Title**: Spool request title
- **Authorization**: Spool request authorization
  ![Spool Request](../../../../../../../Resources/Images/SM/Operations/SapR3/Spool-Request-Tab.png 'Spool Request')

#### Cover Sheets Tab

- **SAP Cover Page**: Whether a cover page is printed
- **Selection cover sheet**: Whether a selection cover sheet is printed
- **Recipient**: Recipient field
- **Department**: Department field
  ![Copy Sheets](../../../../../../../Resources/Images/SM/Operations/SapR3/Copy-Sheets-Tab.png 'Copy Sheets')

#### Output Options Tab

- **Spool Retention Period**: When to delete the spool after printing
- **Delete Immediately After Printing**: Deletes the spool immediately after printing
- **New Spool Request**: Creates a new spool request
  ![Output Options](../../../../../../../Resources/Images/SM/Operations/SapR3/Output-Options-Tab.png 'Output Options')

### External Command Details

- **Command**: Name of the selected external command
- **Parameters**: Parameters for the external command
- **Operating System**: Operating system for the external command
- **Target Server**: Target server for the external command

Under **Control Flags**:

- **Log external output to job log**: Logs external output to the job log
- **Log external errors to job log**: Logs external errors to the job log
- **Job waiting external termination**: Waits for external termination
- **Activate Trace**: Activates trace

![External Command Details](../../../../../../../Resources/Images/SM/Operations/SapR3/External-Command-Details.png 'External Command Details')

### External Program Details

- **Program**: Name of the selected external program
- **Parameters**: Parameters for the external program
- **Target Server**: Target server for the external program

Under **Control Flags**:

- **Log external output to job log**: Logs external output to the job log
- **Log external errors to job log**: Logs external errors to the job log
- **Job waiting external termination**: Waits for external termination
- **Activate Trace**: Activates trace

![External Program Details](../../../../../../../Resources/Images/SM/Operations/SapR3/External-Program-Details.png 'External Program Details')

### Select Execution Target

Select the search button next to **Exec. Target** to open the SAP Query dialog.
![Search Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Search-Exec-Sap-Button.png 'Search Button')

#### In the SAP Query dialog:

- **Machine**: SAP R3 Agent machine name
- **Language**: Two-character language abbreviation (for example, `EN` for English)
- **User ID**: Username for SAP credentials
- **Password**: Password for SAP credentials

![SAP Query Dialog](../../../../../../../Resources/Images/SM/Operations/SapR3/SAP-Exec-Query-Dialog.png 'SAP Query Dialog')

Enter the SAP credentials and select the search button to retrieve all execution targets, then select a target and select **OK** to assign it to the **Exec. Target** field.

![Exec. Target](../../../../../../../Resources/Images/SM/Operations/SapR3/Sap-Exec-Target-Update.png 'Exec. Target')

### Remove Execution Target

To remove the execution target, select the red trashcan button next to **Exec. Target**.

## Configuration Options

| Setting | What It Does | Default |
|---|---|---|
| Job Name | Name of the job as defined in the SAP R/3 and SAP CRM system. Limited to 32 characters | — |
| Job Number | SAP R/3 and SAP CRM job number (Job ID) as defined in the SAP system | — |
| Exec. Target | Name of the SAP Application Server on which the job runs | — |
| Start SAP Job | Sets the SAP start criteria for the job (A.S.A.P or Immediately) | — |
| Job Class | Class of SAP job — A, B, or C | C |
| Spool Recipient | Spool recipient for the SAP job | — |
| Language | Two-character language abbreviation (for example, EN for English) | EN |
| User ID | Username for SAP credentials | — |
| Password | Password for SAP credentials | — |
| ABAP Program | Name of the ABAP Program | — |
| Variant | Variant for the ABAP Program | — |
| Temporary Variant | Creates the variant in the local database | Cleared |
| Output Device | Output device for the print specification | — |
| Number of Copies | Number of copies to print | — |
| Time of printing | When to print | — |
| Print Format | Format for printing | — |
| Delete Immediately After Printing | Deletes the spool immediately after printing | Cleared |
| New Spool Request | Creates a new spool request | Cleared |
| Log external output to job log | Logs external output to the job log | Selected |
| Log external errors to job log | Logs external errors to the job log | Selected |
| Job waiting external termination | Waits for external termination | Selected |
| Activate Trace | Activates trace for the step | Cleared |

## FAQs

**What does this page cover?**

This page covers viewing, adding, and editing SAP R/3 and CRM job details, including the SAP job definition, job steps (ABAP Program, External Command, and External Program), ABAP variants, print specifications, and execution target.

**Where do I find conceptual information about SAP R/3 and CRM jobs?**

See [SAP R/3 and CRM Jobs](../../../../../../../job-types/sap.md) in the **Concepts** online help.

## Related Topics

- [SAP R/3 and CRM Jobs](../../../../../../../job-types/sap.md)
- [Adding a Job](../../Adding-Master-Jobs.md)
- [Accessing Master Jobs](../../Accessing-Master-Jobs.md)

## Glossary

**Agent**: An application installed on a target platform that runs jobs in the native language of that platform and reports results back to OpCon. Agents are defined as Machines in OpCon.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**Machine**: A platform defined in the OpCon database that has an Agent installed. OpCon routes job requests to machines, and machines report job completion status back to OpCon.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Variant**: A named set of parameter values for an SAP ABAP Program. A variant can be permanent or temporary; a temporary variant is stored in the local OpCon database and removed when the job or SAP job is deleted.
