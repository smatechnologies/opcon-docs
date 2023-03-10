# Viewing, Adding, and Editing SAP R/3 and CRM Job Details

To view, add, or edit a SAP R/3 and CRM job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Viewing SAP R/3 and CRM Job Details

1. To view a SAP R/3 and CRM job, go to **Library** > **Master Jobs**.
1. Select a SAP R/3 and CRM job in the list.
1. Select **Edit**.
1. Expand the **Task Details** panel to expose its content.

---

## Adding SAP R/3 and CRM Job Details

1. Create the job and general info as described in [Adding a Job](../../Adding-Master-Jobs.md).
1. Expand the **Task Details** section. See [SAP R/3 and CRM Job Details](#File-Transfer-Job-Details) for details.

---

## Editing SAP R/3 and CRM Job Details

1. To edit SAP R/3 and CRM job details, go to **Library** > **Master Jobs**.
1. Select a SAP R/3 and CRM job.
1. Select **Edit**.
1. Select the lock icon. The button appears gray and locked (![Master Job Definition Read-only Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png 'Master Job Definition Read-only Button'))
   when in **Read-only** mode and appears green and unlocked (![Job Definition Admin Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png 'Job Definition Admin Button'))
   when in **Admin** mode.
1. Expand the **Task Details** panel. See [SAP R/3 and CRM Job Details](#File-Transfer-Job-Details) for details.

---

## SAP R/3 and CRM Job Details

:::note
All required fields are designated by a red asterisk.
:::

**In the SAP R/3 and CRM Definition frame:**

- **Job Name**: Defines the name of the job as defined in the SAP R/3 and SAP CRM system.
- **Job Number**: Defines the SAP R/3 and SAP CRM Job number (Job ID) as defined in the SAP system.
- **Execution Target**: Defines the name of the SAP Application Server on
  which the job processes.
- **Start SAP Job**: Configures SAP start criteria for the job.
  - **A.S.A.P.**: Configures the job to start as soon as a
    background process is available.
  - **Immediately**: Configures the job to start as soon as it
    qualifies to run in OpCon. The job
    does not wait for an available SAP background process before
    running. If all background processes are in use, an immediately
    started job fails.

### Select SAP Job

Click on the search button next to **Job Name** to open the SAP Query dialog.  
![Search Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Search-Job-Sap-Button.png 'Search Button')

#### In the Query Job SAP dialog:

- **Machine**: Defines the SAP R3 LSAM Machine name.
- **Language**: Defines the two-character language abbreviation (e.g., enter EN for English).
- **Job Name**: Defines text matching the name of the desired job name in the SAP Business Warehouse system. If unsure of the whole job name, use partial job name with wildcards (\*) to expand the search. Do not use only wildcards (\*) for the job name. If the SAP system has a lot of jobs, the query will take a long time to respond causing the SAPQueryProcessor to get stuck.
- **User ID**: Defines Username for SAP Credentials.
- **Password**: Defines Password for SAP Credentials.

Enter SAP Credentials and click on the search button to initiate a request to the SAP R3 system to retrieve all job names matching the search criteria.

Select a job from the list and click **OK** to assign it to the daily job.

#### In the Create SAP Job dialog:

- **Job Name**: Defines the name of the job being created.
- **Job Class**: Defines the class of SAP Job A, B, or C.
- **Spool Recipient**: Defines the spool recipient for the SAP job.
- **Credentials Button**: Open SAP Login Dialog to define SAP Credential.  
  :::note
  Credentials need to be entered before creating SAP Job.  
  Credentials will be used for all SAP queries.
  :::
- **List of Steps**: Enter Credentials to add, edit, and delete steps to SAP job.  
  Steps could be **Abap Program**, **External Command**, and **External Program**.
- **Step Details**: Defines the details for the selected Job Step.  
  Enter Credentials and select item from **List of Steps** to define details.

#### Enter Credentials

Click on the Credentials button under **Credentials Definition** to open the SAP Login Dialog.

#### In the SAP Login dialog:

- **Machine**: Defines the SAP R3 LSAM Machine name.
- **User ID**: Defines Username for SAP Credentials.
- **Password**: Defines Password for SAP Credentials.
- **Language**: Defines the two-character language abbreviation (e.g., enter EN for English).

**Create SAP Job Dialog** after entering credentials.

### Edit SAP Job

Open Edit SAP Job dialog by clicking on the edit button.
![Edit Job Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Edit-Job-Button.png 'Edit Job Button')
Open credentials dialog to enter credentials.
:::note
Required to enable **Query Button**
:::

#### In the SAP Login dialog:

- **Machine**: Defines the SAP R3 LSAM Machine name.
- **User ID**: Defines Username for SAP Credentials.
- **Password**: Defines Password for SAP Credentials.
- **Language**: Defines the two-character language abbreviation (e.g., enter EN for English).

Click on query button after entering credentials to send request to SAP Business Warehouse system to search for job.

Wait for results from SAP Business Warehouse system, your job details should show up in the edit job dialog.

Make any changes and click **Save** to continue.

### Delete SAP Job

Open Delete SAP Job dialog by clicking on the delete button.
![Delete Job Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Delete-Job-Button.png 'Delete Job Button')

- **Machine**: Defines the SAP R3 LSAM Machine name.
- **Language**: Defines the two-character language abbreviation (e.g., enter EN for English).
- **User ID**: Defines Username for SAP Credentials.
- **Password**: Defines Password for SAP Credentials.

  Enter Credentials and click **Yes** button to delete job.

### Add Steps to SAP Job

Click on the Add button under **List of Steps** to open the Add SAP Step Dialog.
![Add SAP Step Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Open-Add-Steps-Dialog-Button.png 'Add SAP Step Button')

#### Add SAP Step Dialog

- **Abap Program**
  - **ABAP Program Selector**: Defines text matching the name of the desired **Abap Program** in the SAP Business Warehouse system. If unsure of the whole job name, use wildcards (\*) to expand the search.  
    ![Abap Program Dialog](../../../../../../../Resources/Images/SM/Operations/SapR3/Add-Steps-Dialog.png 'Abap Program Dialog')
  - Click on the search button to initiate a request to the SAP R3 system to retrieve all **Abap Programs** matching the search criteria.  
    ![Query SAP Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Query-SAP-Button.png 'Query SAP Button')
  - Select **Abap Program** and click **OK** to add to step SAP Job.  
    ![Abap Query Result](../../../../../../../Resources/Images/SM/Operations/SapR3/Abap-Program-Query-Result.png 'Abap Query Result')  
    ![Create Dialog Result](../../../../../../../Resources/Images/SM/Operations/SapR3/Abap-Program-Select-Result.png 'Create Dialog Result')
- **External Command**

  - **External Command Selector**: Defines text matching the name of the desired **External Commmand** in the SAP Business Warehouse system. If unsure of the whole job name, use wildcards (\*) to expand the search.  
    ![External Command Dialog](../../../../../../../Resources/Images/SM/Operations/SapR3/External-Command-Query.png 'External Command Dialog')
  - Enter External Command name OR Click on the search button to initiate a request to the SAP R3 system to retrieve all **External Commands** matching the search criteria.

  - Select **External Command** and click **OK** to add step to SAP Job.  
    ![External Command Result](../../../../../../../Resources/Images/SM/Operations/SapR3/External-Command-Query-Result.png 'External Command Result')  
    ![Create Dialog Result](../../../../../../../Resources/Images/SM/Operations/SapR3/External-Command-Select-Result.png 'Create Dialog Result')

- **External Program**
  - **External Program Name**: Defines text matching the name of the desired **External Program** in the SAP Business Warehouse system.  
    ![External Program Dialog](../../../../../../../Resources/Images/SM/Operations/SapR3/External-Program-Query.png 'External Program Dialog')
  - Enter **External Program Name** and click **OK** to add step to SAP Job.  
     ![External Program](../../../../../../../Resources/Images/SM/Operations/SapR3/Entered-External-Program-Name.png 'External Program')  
     ![Create Dialog Result](../../../../../../../Resources/Images/SM/Operations/SapR3/External-Program-Select-Result.png 'Create Dialog Result')

:::note
![List Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Up-Down-Button.png 'List Button')  
Use the up and down button to change the order of the steps
:::

### Abap Program Details

- Select **Abap Program** from list of steps
  ![Select Abap Program](../../../../../../../Resources/Images/SM/Operations/SapR3/Abap-Program-Select.png 'Select Abap Program')
- **ABAP Program**: Defines the name of the Abap Program.
- **Variant**: Defines Variant for the Abap
  - **Search Variant Button**: Initiate a request to the SAP R3 system to retrieve all variants for selected abap step.
    ![Search Variant Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Search-Variant-Button.png 'Search Variant Button')
  - **Add Variant Button**: Open add variant dialog to create new variant for selected abap step.
    ![Add Variant Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Add-Variant-Button.png 'Add Variant Button')
  - **Edit Variant Button**: Open edit variant dialog to edit variant details for selected abap step.  
    **search and select variant or create new variant to enable button**.  
     ![Edit Variant Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Edit-Variant-Button.png 'Edit Variant Button')
  - **Delete Variant Button**: Remove current variant from selected abap step.  
    **search and select variant or create new variant to enable button**.  
    ![Delete Variant Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Delete-Variant-Button.png 'Delete Variant Button')
- **Language**: Defines the two-character language abbreviation (e.g., enter EN for English).
- **Print Specification Button**: Open Print Specifications Dialog to define print details.
  ![Print Specifications Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Print-Specifications-Button.png 'Print Specifications Button')

### Abap Variants

#### Search Variant Dialog

To open search variant dialog  
![Search Variant Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Search-Variant-Button.png 'Search Variant Button')  
Click on the search button to initiate a request to the SAP R3 system to retrieve all **Variants** for the selected abap step.
Select **Variant** and click **OK** to apply to abap step  
![Search Variant Result](../../../../../../../Resources/Images/SM/Operations/SapR3/Search-Variant-Select-Result.png 'Search Variant Result')  
![Search Variant Save](../../../../../../../Resources/Images/SM/Operations/SapR3/Search-Variant-Save.png 'Search Variant Save')

#### Add Variant Dialog

To open create variant dialog  
![Add Variant Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Add-Variant-Button.png 'Add Variant Button')  
Wait for SAP Business Warehouse system to return **Variant Parameters**
![Wait For Variant Parameters](../../../../../../../Resources/Images/SM/Operations/SapR3/Wait-For-Variant-Parameters.png 'Wait For Variant Parameters')

- **Variant Name**: Define the name for the variant being created.
- **Temporary Variant**: Create the variant in local database.
  - Temporary Variant will be created when the daily job is saved.
  - Temporary Variant will be deleted when the daily job or SAP job is deleted.
- **Variant Parameters**: Solution manager will send a request to SAP Business Warehouse system for parameter's when create variant dialog is opened.

![Create Variant Dialog](../../../../../../../Resources/Images/SM/Operations/SapR3/Create-New-Variant-Dialog.png 'Create Variant Dialog')

Select a variant parameter to update it's values
![Update Variant Parameter](../../../../../../../Resources/Images/SM/Operations/SapR3/Update-Variant-Parameter-Values.png 'Update Variant Parameter')
Click on the update button to update the selected parameter.

#### Edit Variant Dialog

To open edit variant dialog, select or create a variant to enable button.  
![Edit Variant Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Edit-Variant-Button.png 'Edit Variant Button')

Please wait for **Variant Parameters** to be returned
![Wait For Variant Parameters](../../../../../../../Resources/Images/SM/Operations/SapR3/Edit-Wait-For-Variant-Parameters.png 'Wait For Variant Parameters')

- **Variant Name**: Name of variant being updated, cannot be changed.
- **Refresh Button**: Send request to check and load new parameter values.

![Edit Variant Dialog](../../../../../../../Resources/Images/SM/Operations/SapR3/Edit-Variant-Dialog.png 'Edit Variant Dialog')

Select a variant parameter to update it's values.
![Edit Variant Parameter](../../../../../../../Resources/Images/SM/Operations/SapR3/Edit-Variant-Parameter-Value.png 'Edit Variant Parameter')
Click on the update button to update the parameter.

#### Delete Variant Dialog

- To remove variant from **Abap Program**, select or create a variant to enable button.  
  ![Delete Variant Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Delete-Variant-Button.png 'Delete Variant Button')
  :::note
  This will only remove the variant from the abap step and will not permanently delete the variant from SAP Business Warehouse system.
  :::

### Abap Print Specifications

- Open Print Specifications Dialog  
  ![Print Specifications Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Print-Specifications-Button.png 'Print Specifications Button')

#### General Attribute Tab

- **Output Device**: Define the output device, click on search button to query SAP Business Warehouse system for output devices.
  ![Output Device Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Output-Device-Button.png 'Output Device Button')
- **Number of Copies**: Define number of copies to print.
- **Time of Printing**: Define when to print.
- **Print Format**: Define the format for printing, click on search button to query SAP Business Warehouse system for print formats.
  :::note
  Output device must first be selected to enable query button.
  :::
  ![Print Format Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Print-Format-Button.png 'Print Format Button')  
  ![General Attribute](../../../../../../../Resources/Images/SM/Operations/SapR3/General-Attribute-Tab.png 'General Attribute')

#### Spool Request Tab

- **Name**: Define spool request name
- **Title**: Define spool request title
- **Authorization**: Define spool request authorization  
  ![Spool Request](../../../../../../../Resources/Images/SM/Operations/SapR3/Spool-Request-Tab.png 'Spool Request')

#### Cover Sheets Tab

- **SAP Cover page**: Define if cover page should be printed
- **Selection Cover Sheet**: Define Selection cover sheet
- **Recipient**: Define Recipient field
- **Department**: Define Department field  
  ![Copy Sheets](../../../../../../../Resources/Images/SM/Operations/SapR3/Copy-Sheets-Tab.png 'Copy Sheets')

#### Output Options Tab

- **Spool Retention Period**: Define when to delete after printing
- **Delete Immediately After Printing**: Enable to delete immediately after printing
- **New Spool Request**: Enable to create new spool request  
  ![Output Options](../../../../../../../Resources/Images/SM/Operations/SapR3/Output-Options-Tab.png 'Output Options')

### External Command Details

- **Command**: Name of the selected external command
- **Parameters**: Defines the parameters for the external command
- **Operating System**: Defines the operating system for the external command
- **Target Server**: Defines the target server for the external command
- **Log external output to job log**: Enable to log external output to job log
- **Log external errors to job log**: Enable to log external errors to job log
- **Job awaiting external termination**: Enable to wait for external termination
- **Active trace**: Enable to activate trace  
  ![External Command Details](../../../../../../../Resources/Images/SM/Operations/SapR3/External-Command-Details.png 'External Command Details')

### External Program Details

- **Program**: Name of the selected external program
- **Parameters**: Defines the parameters for the external program
- **Target Server**: Defines the target server for the external program
- **Log external output to job log**: Enable to log external output to job log
- **Log external errors to job log**: Enable to log external errors to job log
- **Job awaiting external termination**: Enable to wait for external termination
- **Active trace**: Enable to activate trace  
  ![External Program Details](../../../../../../../Resources/Images/SM/Operations/SapR3/External-Program-Details.png 'External Program Details')

### Select Execution Target

Click on the search button next to **Execution Target** to open the SAP Query dialog.  
![Search Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Search-Exec-Sap-Button.png 'Search Button')

#### In the SAP Query dialog:

- **Machine**: Defines the SAP R3 LSAM Machine name.
- **Language**: Defines the two-character language abbreviation (e.g., enter EN for English).
- **User ID**: Defines Username for SAP Credentials.
- **Password**: Defines Password for SAP Credentials.

![SAP Query Dialog](../../../../../../../Resources/Images/SM/Operations/SapR3/SAP-Exec-Query-Dialog.png 'SAP Query Dialog')

Enter SAP Credentials and click on the search button to initiate a request to the SAP R3 system to retrieve all execution targets.

![Query SAP Button](../../../../../../../Resources/Images/SM/Operations/SapR3/Query-SAP-Button.png 'Query SAP Button')

Select a target from the list and click **Ok** to assign it to Exec. Target in the SAP R3 Daily Job Definition.

![Exec List](../../../../../../../Resources/Images/SM/Operations/SapR3/Sap-Exec-Dialog-List.png 'Exec List')

![Exec. Target](../../../../../../../Resources/Images/SM/Operations/SapR3/Sap-Exec-Target-Update.png 'Exec. Target')

### Remove Execution Target

To remove **Execution Target** press the **red trashcan icon**.

---

## More Information

For conceptual information, refer to [SAP R/3 and CRM Jobs](../../../../../../../job-types/sap.md) in
the **Concepts** online help.
