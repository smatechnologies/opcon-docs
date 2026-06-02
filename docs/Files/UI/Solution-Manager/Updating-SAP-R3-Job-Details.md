---
title: Updating SAP R3 Job Details
description: "In Admin mode, SAP R/3 and CRM job type properties can be updated or defined in the Daily Job Definition."
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

# Updating SAP R3 Job Details

In **Admin** mode, SAP R/3 and CRM job type properties can be updated or defined in the **Daily Job Definition**.

For conceptual information, refer to [SAP R3 Job Details](../../../job-types/sap.md) in the **Concepts** online help.

:::note
Only users with the appropriate permissions can access the **Lock** button and update job properties. For details about privileges, refer to [Required Privileges](Accessing-Daily-Job-Definition.md#Required) in the **Accessing Daily Job Definition** topic.
:::

:::note
Without the Machine Privilege, you cannot edit the daily job definition.
:::

:::note
Changes made in the **Daily Job Definition** take effect immediately. If the job has already run, changes apply the next time the job runs.
:::

:::note
All required fields are designated by a red asterisk.
:::

:::note
![Waiting For SAP](../../../Resources/Images/SM/Operations/SapR3/Waiting-For-SAP.png "Waiting For SAP")
A loading animation appears when waiting for results from the SAP system.
:::

## Updating SAP R3 Job Task Details

To update SAP R3 job task details, complete the following steps:

1. Select the **Processes** button at the top-right of the **Operations Summary** page.
2. Enable both the **Date** and **Schedule** toggle switches. Each switch appears green when enabled.

   ![Schedule Status Updates Date & Schedule Toggle Switches Enabled](../../../Resources/Images/SM/Schedule-Status-Update_Date&ScheduleToggles_IBMi.png "Schedule Status Updates Date & Schedule Toggle Switches Enabled")

3. Select the desired **date(s)** to display the associated schedules.
4. Select one or more **schedules** in the list.
5. Select one **job** in the list. Your selection appears in the [status bar](SM-UI-Layout.md#Status) as a breadcrumb trail.

   ![Job Processes](../../../Resources/Images/SM/Job-ProcessesIBMi.png "Job Processes")

6. Select the job record (for example, **1 job(s)**) in the status bar to display the **Selection** panel.

   :::note
   Alternatively, right-click the job in the list to display the **Selection** panel.
   :::

   ![Job Summary Tab in Operations](<../../../Resources/Images/SM/Job-Summary-Tab-(IBMi).png> "Job Summary Tab in Operations")

7. Select the **Daily Job Definition** button ![Daily Job Definition Button](../../../Resources/Images/SM/Daily-Job-Definition-Button.png "Daily Job Definition Button") at the top-left corner of the panel. The page opens in **Read-only** mode by default.
8. Select the **Lock** button ![Daily Job Definition Read-only Button](../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Daily Job Definition Read-only Button") at the top-right corner to enter **Admin** mode. The button displays a white unlocked lock on a green background ![Daily Job Definition Admin Switch](../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Daily Job Definition Admin Switch") when enabled.

   :::note
   The **Lock** button is not visible to users without the appropriate permissions.
   :::

9. Expand the **Task Details** panel.
10. From the **Machines or Machine Group** list, select the **machine** where the Agent is installed. To specify a machine group, toggle the **Machines** switch to **Machine Group** and select a group from the list. The toggle appears green ![Green Enabled Switch](../../../Resources/Images/SM/Enabled-Switch.png "Green Enabled Switch") when enabled.

**Result:** The **SAP R3 Definition** frame is now available for editing.

---

## SAP R/3 and CRM Job Details

:::note
All required fields are designated by a red asterisk.
:::

**In the SAP R/3 and CRM Definition frame:**

- **Job Name**: Name of the job as defined in the SAP R/3 and SAP CRM system.
- **Job Number**: SAP R/3 and SAP CRM job number (Job ID).
- **Start SAP Job**: Configures SAP start criteria:
  - **A.S.A.P.**: Starts the job as soon as a background process is available.
  - **Immediately**: Starts the job as soon as it qualifies to run in OpCon, without waiting for an available SAP background process. If all background processes are in use, the job fails.
- **Exec. Target**: Name of the SAP Application Server on which the job runs.

### Select SAP Job

Select the search button next to **Job Name** to open the SAP Query dialog.
![Search Button](../../../Resources/Images/SM/Operations/SapR3/Search-Job-Sap-Button.png "Search Button")

#### In the SAP Query dialog:

- **Machine**: SAP R3 Agent machine name.
- **Language**: Two-character language abbreviation (for example, `EN` for English).
- **Job Name**: Text matching the desired job name. Use wildcards (`*`) to broaden the search.
- **User ID**: Username for SAP credentials.
- **Password**: Password for SAP credentials.

![SAP Query Dialog](../../../Resources/Images/SM/Operations/SapR3/SAP-Job-Query-Dialog.png "SAP Query Dialog")

Enter SAP credentials and select the search button to retrieve matching job names.
![Query SAP Button](../../../Resources/Images/SM/Operations/SapR3/Query-SAP-Button.png "Query SAP Button")

Select a job from the list and select **OK** to assign it to the daily job.

![Job List](../../../Resources/Images/SM/Operations/SapR3/Sap-Job-Dialog-List.png "Job List")

![Job Name and Job Number](../../../Resources/Images/SM/Operations/SapR3/Sap-Job-Dialog-Update.png "Job Name and Job Number")

### Create SAP Job

Select the add button next to **Job Name** to open the Create SAP Job dialog.
![Search Button](../../../Resources/Images/SM/Operations/SapR3/Search-Job-Sap-Button.png "Search Button")

#### In the Create SAP Job dialog:

- **Job Name**: Name of the job being created.
- **Job Class**: SAP job class: A, B, or C.
- **Spool Recipient**: Spool recipient for the SAP job.
- **Credentials**: Opens the SAP Login dialog.

  :::note
  Enter credentials before creating an SAP job. Credentials apply to all SAP queries.
  :::

- **List of Steps**: Add, edit, or delete steps (Abap Program, External Command, or External Program) after entering credentials.
- **Step Details**: Select an item from **List of Steps** to define its details.

#### Enter Credentials

Select **Credentials** under **Credentials Definition** to open the SAP Login dialog.
![Credentials Button](../../../Resources/Images/SM/Operations/SapR3/Open-Credentials-Dialog-Button.png "Credentials Button")

#### In the SAP Login dialog:

- **Machine**: SAP R3 Agent machine name.
- **User ID**: Username for SAP credentials.
- **Password**: Password for SAP credentials.
- **Language**: Two-character language abbreviation (for example, `EN` for English).

![SAP Login Dialog](../../../Resources/Images/SM/Operations/SapR3/SAP-Login-Dialog.png "SAP Login Dialog")

**Create SAP Job Dialog** after entering credentials.
![Create SAP Job Dialog with Credentials](../../../Resources/Images/SM/Operations/SapR3/Entered-Credentials-Create-Job-Dialog.png "Create SAP Job Dialog with Credentials")

### Edit SAP Job

Select the edit button to open the Edit SAP Job dialog.
![Edit Job Button](../../../Resources/Images/SM/Operations/SapR3/Edit-Job-Button.png "Edit Job Button")

Open the credentials dialog and enter credentials.

:::note
Credentials are required to enable the **Query** button.
:::

![Edit Dialog Credentials](../../../Resources/Images/SM/Operations/SapR3/Edit-Dialog-Credentials.png)

#### In the SAP Login dialog:

- **Machine**: SAP R3 Agent machine name.
- **User ID**: Username for SAP credentials.
- **Password**: Password for SAP credentials.
- **Language**: Two-character language abbreviation (for example, `EN` for English).

![SAP Login Dialog](../../../Resources/Images/SM/Operations/SapR3/SAP-Login-Dialog.png "SAP Login Dialog")

After entering credentials, select the query button to search for the job. When results appear, make any changes and select **Save**.
![Edit Dialog Query](../../../Resources/Images/SM/Operations/SapR3/Edit-Query-Button.png "Query Button")

![Edit Job Dialog](../../../Resources/Images/SM/Operations/SapR3/Edit-Job-Dialog.png "Edit Job Dialog")

### Delete SAP Job

Select the delete button to open the Delete SAP Job dialog.
![Delete Job Button](../../../Resources/Images/SM/Operations/SapR3/Delete-Job-Button.png "Delete Job Button")

- **Machine**: SAP R3 Agent machine name.
- **Language**: Two-character language abbreviation (for example, `EN` for English).
- **User ID**: Username for SAP credentials.
- **Password**: Password for SAP credentials.

![Delete Job Dialog](../../../Resources/Images/SM/Operations/SapR3/Delete-Job-Dialog.png "Delete Job Dialog")

Enter credentials and select **Yes** to delete the job.

### Add Steps to SAP Job

Select the add button under **List of Steps** to open the Add SAP Step dialog.
![Add SAP Step Button](../../../Resources/Images/SM/Operations/SapR3/Open-Add-Steps-Dialog-Button.png "Add SAP Step Button")

#### Add SAP Step Dialog

- **Abap Program**
  - **ABAP Program Selector**: Text matching the desired ABAP program name. Use wildcards (`*`) to broaden the search.
    ![Abap Program Dialog](../../../Resources/Images/SM/Operations/SapR3/Add-Steps-Dialog.png "Abap Program Dialog")
  - Select the search button to retrieve matching ABAP programs.
    ![Query SAP Button](../../../Resources/Images/SM/Operations/SapR3/Query-SAP-Button.png "Query SAP Button")
  - Select an **Abap Program** and select **OK** to add it to the SAP job step.
    ![Abap Query Result](../../../Resources/Images/SM/Operations/SapR3/Abap-Program-Query-Result.png "Abap Query Result")
    ![Create Dialog Result](../../../Resources/Images/SM/Operations/SapR3/Abap-Program-Select-Result.png "Create Dialog Result")
- **External Command**
  - **External Command Selector**: Text matching the desired external command name. Use wildcards (`*`) to broaden the search.
    ![External Command Dialog](../../../Resources/Images/SM/Operations/SapR3/External-Command-Query.png "External Command Dialog")
  - Enter the external command name or select the search button to retrieve matching commands.
    ![Query SAP Button](../../../Resources/Images/SM/Operations/SapR3/Query-SAP-Button.png "Query SAP Button")
  - Select an **External Command** and select **OK** to add it to the SAP job step.
    ![External Command Result](../../../Resources/Images/SM/Operations/SapR3/External-Command-Query-Result.png "External Command Result")
    ![Create Dialog Result](../../../Resources/Images/SM/Operations/SapR3/External-Command-Select-Result.png "Create Dialog Result")
- **External Program**
  - **External Program Name**: Text matching the desired external program name.
    ![External Program Dialog](../../../Resources/Images/SM/Operations/SapR3/External-Program-Query.png "External Program Dialog")
  - Enter the **External Program Name** and select **OK** to add it to the SAP job step.
    ![External Program](../../../Resources/Images/SM/Operations/SapR3/Entered-External-Program-Name.png "External Program")
    ![Create Dialog Result](../../../Resources/Images/SM/Operations/SapR3/External-Program-Select-Result.png "Create Dialog Result")

:::note
![List Button](../../../Resources/Images/SM/Operations/SapR3/Up-Down-Button.png "List Button")
Use the up and down buttons to reorder steps.
:::

### Abap Program Details

- Select **Abap Program** from the list of steps.
  ![Select Abap Program](../../../Resources/Images/SM/Operations/SapR3/Abap-Program-Select.png "Select Abap Program")
- **ABAP Program**: Name of the ABAP program.
- **Variant**: Variant for the ABAP step.
  - **Search Variant**: Retrieves all variants for the selected ABAP step from the SAP R3 system.
    ![Search Variant Button](../../../Resources/Images/SM/Operations/SapR3/Search-Variant-Button.png "Search Variant Button")
  - **Add Variant**: Opens the add variant dialog to create a new variant.
    ![Add Variant Button](../../../Resources/Images/SM/Operations/SapR3/Add-Variant-Button.png "Add Variant Button")
  - **Edit Variant**: Opens the edit variant dialog. A variant must be selected or created first to enable this button.
    ![Edit Variant Button](../../../Resources/Images/SM/Operations/SapR3/Edit-Variant-Button.png "Edit Variant Button")
  - **Delete Variant**: Removes the current variant from the ABAP step. A variant must be selected or created first to enable this button.
    ![Delete Variant Button](../../../Resources/Images/SM/Operations/SapR3/Delete-Variant-Button.png "Delete Variant Button")
- **Language**: Two-character language abbreviation (for example, `EN` for English).
- **Print Specifications**: Opens the Print Specifications dialog.
  ![Print Specifications Button](../../../Resources/Images/SM/Operations/SapR3/Print-Specifications-Button.png "Print Specifications Button")

### Abap Variants

#### Search Variant Dialog

Select the search variant button ![Search Variant Button](../../../Resources/Images/SM/Operations/SapR3/Search-Variant-Button.png "Search Variant Button") to open the dialog, then select the search button to retrieve all variants for the selected ABAP step.
![Query SAP Button](../../../Resources/Images/SM/Operations/SapR3/Query-SAP-Button.png "Query SAP Button")

Select a **Variant** and select **OK** to apply it to the ABAP step.
![Search Variant Result](../../../Resources/Images/SM/Operations/SapR3/Search-Variant-Select-Result.png "Search Variant Result")
![Search Variant Save](../../../Resources/Images/SM/Operations/SapR3/Search-Variant-Save.png "Search Variant Save")

#### Add Variant Dialog

Select the add variant button ![Add Variant Button](../../../Resources/Images/SM/Operations/SapR3/Add-Variant-Button.png "Add Variant Button") to open the dialog. Wait for the SAP system to return **Variant Parameters**.
![Wait For Variant Parameters](../../../Resources/Images/SM/Operations/SapR3/Wait-For-Variant-Parameters.png "Wait For Variant Parameters")

- **Variant Name**: Name for the variant being created.
- **Temporary Variant**: Creates the variant in the local database. The variant is created when the daily job is saved and deleted when the daily job or SAP job is deleted.
- **Variant Parameters**: Returned automatically from the SAP system when the dialog opens.

![Create Variant Dialog](../../../Resources/Images/SM/Operations/SapR3/Create-New-Variant-Dialog.png "Create Variant Dialog")

Select a variant parameter to update its values, then select the update button to apply the change.
![Update Variant Parameter](../../../Resources/Images/SM/Operations/SapR3/Update-Variant-Parameter-Values.png "Update Variant Parameter")
![Update Button](../../../Resources/Images/SM/Operations/SapR3/Update-Button.png "Update Button")

#### Edit Variant Dialog

Select or create a variant to enable the edit variant button, then select it to open the dialog.
![Edit Variant Button](../../../Resources/Images/SM/Operations/SapR3/Edit-Variant-Button.png "Edit Variant Button")

Wait for **Variant Parameters** to load.
![Wait For Variant Parameters](../../../Resources/Images/SM/Operations/SapR3/Edit-Wait-For-Variant-Parameters.png "Wait For Variant Parameters")

- **Variant Name**: Name of the variant being updated (read-only).
- **Refresh**: Reloads parameter values from the SAP system.

![Edit Variant Dialog](../../../Resources/Images/SM/Operations/SapR3/Edit-Variant-Dialog.png "Edit Variant Dialog")

Select a variant parameter to update its values, then select the update button to apply the change.
![Edit Variant Parameter](../../../Resources/Images/SM/Operations/SapR3/Edit-Variant-Parameter-Value.png "Edit Variant Parameter")
![Update Button](../../../Resources/Images/SM/Operations/SapR3/Update-Button.png "Update Button")

#### Delete Variant Dialog

Select or create a variant to enable the delete variant button, then select it to remove the variant from the **Abap Program** step.
![Delete Variant Button](../../../Resources/Images/SM/Operations/SapR3/Delete-Variant-Button.png "Delete Variant Button")

:::note
This removes the variant from the ABAP step only. It does not permanently delete the variant from the SAP system.
:::

### Abap Print Specifications

Select the **Print Specifications** button to open the dialog.
![Print Specifications Button](../../../Resources/Images/SM/Operations/SapR3/Print-Specifications-Button.png "Print Specifications Button")

#### General Attribute Tab

- **Output Device**: Output device for printing. Select the search button to query SAP for available devices.
  ![Output Device Button](../../../Resources/Images/SM/Operations/SapR3/Output-Device-Button.png "Output Device Button")

  :::note
  An output device must be selected before querying for print formats.
  :::

- **Number of Copies**: Number of copies to print.
- **Time of Printing**: When to print.
- **Print Format**: Format for printing. Select the search button to query SAP for available formats.
  ![Print Format Button](../../../Resources/Images/SM/Operations/SapR3/Print-Format-Button.png "Print Format Button")
  ![General Attribute](../../../Resources/Images/SM/Operations/SapR3/General-Attribute-Tab.png "General Attribute")

#### Spool Request Tab

- **Name**: Spool request name.
- **Title**: Spool request title.
- **Authorization**: Spool request authorization.
  ![Spool Request](../../../Resources/Images/SM/Operations/SapR3/Spool-Request-Tab.png "Spool Request")

#### Cover Sheets Tab

- **SAP Cover Page**: Whether to print a cover page.
- **Selection Cover Sheet**: Selection cover sheet setting.
- **Recipient**: Recipient field.
- **Department**: Department field.
  ![Copy Sheets](../../../Resources/Images/SM/Operations/SapR3/Copy-Sheets-Tab.png "Copy Sheets")

#### Output Options Tab

- **Spool Retention Period**: When to delete after printing.
- **Delete Immediately After Printing**: Deletes the spool request immediately after printing.
- **New Spool Request**: Creates a new spool request.
  ![Output Options](../../../Resources/Images/SM/Operations/SapR3/Output-Options-Tab.png "Output Options")

### External Command Details

- **Command**: Name of the selected external command.
- **Parameters**: Parameters for the external command.
- **Operating System**: Operating system for the external command.
- **Target Server**: Target server for the external command.
- **Log external output to job log**: Logs external output to the job log.
- **Log external errors to job log**: Logs external errors to the job log.
- **Job awaiting external termination**: Waits for external termination.
- **Active trace**: Activates trace.
  ![External Command Details](../../../Resources/Images/SM/Operations/SapR3/External-Command-Details.png "External Command Details")

### External Program Details

- **Program**: Name of the selected external program.
- **Parameters**: Parameters for the external program.
- **Target Server**: Target server for the external program.
- **Log external output to job log**: Logs external output to the job log.
- **Log external errors to job log**: Logs external errors to the job log.
- **Job awaiting external termination**: Waits for external termination.
- **Active trace**: Activates trace.
  ![External Program Details](../../../Resources/Images/SM/Operations/SapR3/External-Program-Details.png "External Program Details")

### Select running Target

Select the search button next to **Exec. Target** to open the SAP Query dialog.
![Search Button](../../../Resources/Images/SM/Operations/SapR3/Search-Exec-Sap-Button.png "Search Button")

#### In the SAP Query dialog:

- **Machine**: SAP R3 Agent machine name.
- **Language**: Two-character language abbreviation (for example, `EN` for English).
- **User ID**: Username for SAP credentials.
- **Password**: Password for SAP credentials.

![SAP Query Dialog](../../../Resources/Images/SM/Operations/SapR3/SAP-Exec-Query-Dialog.png "SAP Query Dialog")

Enter SAP credentials and select the search button to retrieve all running targets.
![Query SAP Button](../../../Resources/Images/SM/Operations/SapR3/Query-SAP-Button.png "Query SAP Button")

Select a target from the list and select **OK** to assign it to **Exec. Target** in the SAP R3 Daily Job Definition.

![Exec List](../../../Resources/Images/SM/Operations/SapR3/Sap-Exec-Dialog-List.png "Exec List")

![Exec. Target](../../../Resources/Images/SM/Operations/SapR3/Sap-Exec-Target-Update.png "Exec. Target")

### Remove running Target

To remove the **running Target**, select the delete button.
![Remove Target](../../../Resources/Images/SM/Operations/SapR3/Sap-Exec-Target-Remove.png "Remove Target")

:::note
Select **Save** to apply changes to the daily job, or **Undo** to revert them.
:::
