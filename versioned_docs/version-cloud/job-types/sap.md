# SAP R/3 and CRM Job Details

The information in this section applies to defining an SAP R/3 and CRM
job. For additional information about this platform, refer to [SAP LSAM Configuration and
Operation](https://help.smatechnologies.com/opcon/agents/sap/latest/Files/Agents/SAP/Configuration-and-Operation.md)
 in the **SAP LSAM** online help for special features to enhance
the automation capabilities of OpCon on this
platform.

## Login

- **Machine**: Defines the SAP R/3 and CRM Machine name. For
    information on adding an LSAM Machine to     OpCon, refer to [Adding
    Machines](../Files/UI/Enterprise-Manager/Adding-Machines.md)
     in the **Enterprise Manager** online help.
- **User ID**: Defines the valid SAP login ID.
- **Password**: Defines the correct SAP password for the User ID.
- **Language**: Defines the two-character language abbreviation (e.g.,
    enter EN for English), and forces the abbreviation to all capital
    letters.

## General Data

- **Job Name**: Defines the name of the job as defined in the SAP R/3
    and SAP CRM system.
- **Job Class**: Defines the classification of SAP R/3 and SAP CRM
    Background Jobs according to priority.
  - **Class A**: The highest class for SAP R/3 and CRM jobs. The SAP
        system always processes Class A jobs before jobs of other
        classes.
  - **Class B**: The second highest class for SAP R/3 and SAP CRM
        jobs. These jobs normally run at regular intervals. The SAP
        system processes Class B jobs before Class C jobs but after
        Class A jobs.
  - **Class C**: The lowest class for SAP R/3 and SAP CRM jobs. Jobs
        in the default Class normally run at standard processing
        intervals and after Classes A and B.
- **Job Number**: Defines the SAP R/3 and SAP CRM Job number (Job ID)
    as defined in the SAP system.
- **Start SAP Job**: Configures SAP start criteria for the job.
  - **A.S.A.P.**: Configures the job to start as soon as a
        background process is available.
  - **Immediately**: Configures the job to start as soon as it
        qualifies to run in OpCon. The job
        does not wait for an available SAP background process before
        running. If all background processes are in use, an immediately
        started job fails.
- **Exec. Target**: Defines the name of the SAP Application Server on
    which the job processes.

### Job Setup Details

The OpCon graphical interfaces support
creation and modification of SAP job steps. When the step definition is
saved, the information is sent back to the SAP server for storage.

Step definition in OpCon requires the
definition of the program name and the order for the step. Each step
represents a program which can be any one of three program types:

- [ABAP Program Details](#ABAP)
- [External Command Details](#External)
- [External Program Details](#External2)

#### ABAP Program Details

OpCon supports the definition and
modification of the following information for ABAP Programs:

- **ABAP Program**: Defines the ABAP program name.
- **Variant**: Defines the ABAP program Variant.
- **Variant List**: Defines the following variant parameter names and
    values:
  - **Parameter**: Defines the technical name associated with a
        group of values for the Variant.
  - **Low Value**: Defines a variable value associated with the
        Parameter name.
    - If the Kind is set to '**P**' (simple parameter), the Low
            Value is the variable used to represent that parameters'
            value.
    - If the Kind is set to '**S**' (selection), the Low Value,
            High Value, and Option are used with the Sign to qualify the
            parameter.
  - **High Value**: Defines a variable value associated with the
        Parameter name.
    - If Kind is set to '**P**', the High Value does not apply
            and cannot be modified.
    - If the Kind is set to '**S**', the Low Value, High Value,
            and Option are used with the Sign to qualify the parameter.
  - **Kind**: Defines the parameter type. Parameter types are:
    - **S** - Selection type: For modifying '**S**' type
            parameters, refer to the 'Modify' information below.
    - **P** - Simple Parameter type: For information on the Low
            Value, refer to the [Job Dependency             Types](#Job_Dependency_Types) table.
  - **Option**: Options are operators that apply to the Low Value
        and High Value when the Kind is set to '**S**'. Additionally,
        the *Sign* modifies the manner in which SAP applies the Option
        to qualify the parameter.
  - **Sign**: Determines whether to Include or Exclude the value
        resolved through the Low Value, High Value, and Option.

  Low Value   High Value   Option         Sign
  ----------- ------------ -------------- -----------------------------
  X                        EQ (=)         I or E (Include or Exclude)
  X                        GT (\>)        I or E (Include or Exclude)
  X                        GE (\>=)       I or E (Include or Exclude)
  X                        LT (<)        I or E (Include or Exclude)
  X                        LE (<=)       I or E (Include or Exclude)
  X                        NE (!=)        I or E (Include or Exclude)
  X           X            BT (Between)   I or E (Include or Exclude)

- **Language**: Defines the two-character language abbreviation (e.g.,
    EN for English). The language characters will automatically populate
    if a Variant was defined.
- **Print Specifications**: Defines the numerous print parameters and
    specifications. The following information applies to defining the
    Print Specifications:
  - **General Attributes**:
    - **Output Device**: Defines the name of the output device.
    - **Number of Copies**: Defines how many copies of the
            document to print.
    - **Text Only**: Defines the text-only printing option.
    - **Time of Printing**: Defines the time to print a spool
            request. Valid options include:
      - Send to SAP spooler for now
      - Print immediately
    - **Print Format**: Defines the format of the spool request to
            be sent. Essentially, it defines the page format (i.e., the
            maximum number of lines and columns per printed page).
  - **Spool Request**: Allows users to assign a name and title to
        the spool request reports that are spooled for later printing.
    - **Name**: Defines the name of the spool request. It may
            consist of letters, numerals, special characters, or blanks.
            The standard name proposed by the system for a spool request
            comprises the eight-character report name, the separator
            (\_), and the first three characters of the user name.
    - **Title**: Defines the description of the spool request. It
            may consist of letters, digits, special characters, or
            blanks.
    - **Authorization**: Defines the authorization for the spool
            request. Only users with this authorization can display the
            contents of the spool request.
  - **Cover Sheets**: Determines whether a cover page containing
        details about the print request such as recipient, department,
        and format is to be sent with the spool request.
    - **SAP Cover Page**: Determines whether a cover page
            containing details about the print request - such as
            recipient, department, and format - is to be sent with the
            spool request. There are three options:
      - System Administrator: Default setting
      - Do not print
      - Print
    - **Selection cover sheet**: Determines whether the report
            output should include a cover page with the report
            selections. Valid options are '*Yes*' and '*No*'.
    - **Recipient**: Defines the name of the spool request
            recipient. On the print out, this name appears on the cover
            sheet. The default value for the recipient name is the
            current user name.
    - **Department**: Defines the name of the department sending
            the spool request. On the printout, this name is displayed
            on the cover sheet.
  - **Output Options**:
    - **Delete Immediately After Printing**: Determines if the
            spool request will be deleted immediately after it has been
            sent to the output device. If this option is disabled, the
            spool request will be deleted only after the spool retention
            period has expired.
    - **Spool Retention Period**: Defines how many days a spool
            request stays in the spool system before it is deleted. The
            maximum number of days to keep is eight.
    - **New Spool Request**: Determines if the current spool
            request will be added to the existing request with the same
            properties.
      - To be able to append the current spool request to an
                existing one, their respective specifications for Name,
                Output device, Number of copies and Format must match.
      - Additionally, the existing spool request must be
                unfinished. This normally occurs when a spool request is
                released for output. If no spool request is found, a new
                one is generated.
    - **Do not Append Print Jobs**: Defines whether or not to
            append print jobs.
    - **Storage Mode**: Defines the type of storage mode to use
            for the job.

#### External Command Details

OpCon supports the definition and
modification of the following information for External Commands:

- **Command**: Defines the external command name.
- **Parameters**: Defines the parameter string to pass to the external
    command when the step executes.
- **Operating System**: Defines the Operating System on which the
    background job processes (e.g., AS400, Windows, SunOS).
- **Target Server**: Defines the name of the application server for
    running the background job.
- **Control Flags**: Defines the options to provide additional control
    for the job:
  - **Log external output to the job log**: Writes the standard job
        output to the job log on the SAP system.
  - **Log external errors in job log**: Writes the standard error
        job output to the job log on the SAP system.
  - **Job waiting for external termination**: Informs SAP to wait
        for the termination of the external command before returning any
        exit condition.
  - **Activate trace**: Turns on detailed flow trace for the job.

#### External Program Details

OpCon supports the definition and
modification of the following information for External Programs:

- **Program**: Defines the external program name.
- **Parameters**: Defines the parameter string to pass to the external
    command when the step executes.
- **Target Server**: Defines the host name of the SAP system for
    running the external program.
- **Control Flags**: Defines various options to provide additional
    control for the job:
  - **Log external output to the job log**: Writes the standard job
        output to the job log on the SAP system.
  - **Log external errors in job log**: Writes the standard error
        job output to the job log on the SAP system.
  - **Job waiting for external termination**: Informs SAP to wait
        for the termination of the external command before returning any
        exit condition.
  - **Activate trace**: Turns on detailed flow trace for the job.

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
1. Select the lock icon. The button appears gray and locked (![Master Job Definition Read-only Button](../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png 'Master Job Definition Read-only Button'))
   when in **Read-only** mode and appears green and unlocked (![Job Definition Admin Button](../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png 'Job Definition Admin Button'))
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
![Search Button](../Resources/Images/SM/Operations/SapR3/Search-Job-Sap-Button.png 'Search Button')

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
![Edit Job Button](../Resources/Images/SM/Operations/SapR3/Edit-Job-Button.png 'Edit Job Button')
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
![Delete Job Button](../Resources/Images/SM/Operations/SapR3/Delete-Job-Button.png 'Delete Job Button')

- **Machine**: Defines the SAP R3 LSAM Machine name.
- **Language**: Defines the two-character language abbreviation (e.g., enter EN for English).
- **User ID**: Defines Username for SAP Credentials.
- **Password**: Defines Password for SAP Credentials.

  Enter Credentials and click **Yes** button to delete job.

### Add Steps to SAP Job

Click on the Add button under **List of Steps** to open the Add SAP Step Dialog.
![Add SAP Step Button](../Resources/Images/SM/Operations/SapR3/Open-Add-Steps-Dialog-Button.png 'Add SAP Step Button')

#### Add SAP Step Dialog

- **Abap Program**
  - **ABAP Program Selector**: Defines text matching the name of the desired **Abap Program** in the SAP Business Warehouse system. If unsure of the whole job name, use wildcards (\*) to expand the search.  
    ![Abap Program Dialog](../Resources/Images/SM/Operations/SapR3/Add-Steps-Dialog.png 'Abap Program Dialog')
  - Click on the search button to initiate a request to the SAP R3 system to retrieve all **Abap Programs** matching the search criteria.  
    ![Query SAP Button](../Resources/Images/SM/Operations/SapR3/Query-SAP-Button.png 'Query SAP Button')
  - Select **Abap Program** and click **OK** to add to step SAP Job.  
    ![Abap Query Result](../Resources/Images/SM/Operations/SapR3/Abap-Program-Query-Result.png 'Abap Query Result')  
    ![Create Dialog Result](../Resources/Images/SM/Operations/SapR3/Abap-Program-Select-Result.png 'Create Dialog Result')
- **External Command**

  - **External Command Selector**: Defines text matching the name of the desired **External Commmand** in the SAP Business Warehouse system. If unsure of the whole job name, use wildcards (\*) to expand the search.  
    ![External Command Dialog](../Resources/Images/SM/Operations/SapR3/External-Command-Query.png 'External Command Dialog')
  - Enter External Command name OR Click on the search button to initiate a request to the SAP R3 system to retrieve all **External Commands** matching the search criteria.

  - Select **External Command** and click **OK** to add step to SAP Job.  
    ![External Command Result](../Resources/Images/SM/Operations/SapR3/External-Command-Query-Result.png 'External Command Result')  
    ![Create Dialog Result](../Resources/Images/SM/Operations/SapR3/External-Command-Select-Result.png 'Create Dialog Result')

- **External Program**
  - **External Program Name**: Defines text matching the name of the desired **External Program** in the SAP Business Warehouse system.  
    ![External Program Dialog](../Resources/Images/SM/Operations/SapR3/External-Program-Query.png 'External Program Dialog')
  - Enter **External Program Name** and click **OK** to add step to SAP Job.  
     ![External Program](../Resources/Images/SM/Operations/SapR3/Entered-External-Program-Name.png 'External Program')  
     ![Create Dialog Result](../Resources/Images/SM/Operations/SapR3/External-Program-Select-Result.png 'Create Dialog Result')

:::note
![List Button](../Resources/Images/SM/Operations/SapR3/Up-Down-Button.png 'List Button')  
Use the up and down button to change the order of the steps
:::

### Abap Program Details

- Select **Abap Program** from list of steps
  ![Select Abap Program](../Resources/Images/SM/Operations/SapR3/Abap-Program-Select.png 'Select Abap Program')
- **ABAP Program**: Defines the name of the Abap Program.
- **Variant**: Defines Variant for the Abap
  - **Search Variant Button**: Initiate a request to the SAP R3 system to retrieve all variants for selected abap step.
    ![Search Variant Button](../Resources/Images/SM/Operations/SapR3/Search-Variant-Button.png 'Search Variant Button')
  - **Add Variant Button**: Open add variant dialog to create new variant for selected abap step.
    ![Add Variant Button](../Resources/Images/SM/Operations/SapR3/Add-Variant-Button.png 'Add Variant Button')
  - **Edit Variant Button**: Open edit variant dialog to edit variant details for selected abap step.  
    **search and select variant or create new variant to enable button**.  
     ![Edit Variant Button](../Resources/Images/SM/Operations/SapR3/Edit-Variant-Button.png 'Edit Variant Button')
  - **Delete Variant Button**: Remove current variant from selected abap step.  
    **search and select variant or create new variant to enable button**.  
    ![Delete Variant Button](../Resources/Images/SM/Operations/SapR3/Delete-Variant-Button.png 'Delete Variant Button')
- **Language**: Defines the two-character language abbreviation (e.g., enter EN for English).
- **Print Specification Button**: Open Print Specifications Dialog to define print details.
  ![Print Specifications Button](../Resources/Images/SM/Operations/SapR3/Print-Specifications-Button.png 'Print Specifications Button')

### Abap Variants

#### Search Variant Dialog

To open search variant dialog  
![Search Variant Button](../Resources/Images/SM/Operations/SapR3/Search-Variant-Button.png 'Search Variant Button')  
Click on the search button to initiate a request to the SAP R3 system to retrieve all **Variants** for the selected abap step.
Select **Variant** and click **OK** to apply to abap step  
![Search Variant Result](../Resources/Images/SM/Operations/SapR3/Search-Variant-Select-Result.png 'Search Variant Result')  
![Search Variant Save](../Resources/Images/SM/Operations/SapR3/Search-Variant-Save.png 'Search Variant Save')

#### Add Variant Dialog

To open create variant dialog  
![Add Variant Button](../Resources/Images/SM/Operations/SapR3/Add-Variant-Button.png 'Add Variant Button')  
Wait for SAP Business Warehouse system to return **Variant Parameters**
![Wait For Variant Parameters](../Resources/Images/SM/Operations/SapR3/Wait-For-Variant-Parameters.png 'Wait For Variant Parameters')

- **Variant Name**: Define the name for the variant being created.
- **Temporary Variant**: Create the variant in local database.
  - Temporary Variant will be created when the daily job is saved.
  - Temporary Variant will be deleted when the daily job or SAP job is deleted.
- **Variant Parameters**: Solution manager will send a request to SAP Business Warehouse system for parameter's when create variant dialog is opened.

![Create Variant Dialog](../Resources/Images/SM/Operations/SapR3/Create-New-Variant-Dialog.png 'Create Variant Dialog')

Select a variant parameter to update it's values
![Update Variant Parameter](../Resources/Images/SM/Operations/SapR3/Update-Variant-Parameter-Values.png 'Update Variant Parameter')
Click on the update button to update the selected parameter.

#### Edit Variant Dialog

To open edit variant dialog, select or create a variant to enable button.  
![Edit Variant Button](../Resources/Images/SM/Operations/SapR3/Edit-Variant-Button.png 'Edit Variant Button')

Please wait for **Variant Parameters** to be returned
![Wait For Variant Parameters](../Resources/Images/SM/Operations/SapR3/Edit-Wait-For-Variant-Parameters.png 'Wait For Variant Parameters')

- **Variant Name**: Name of variant being updated, cannot be changed.
- **Refresh Button**: Send request to check and load new parameter values.

![Edit Variant Dialog](../Resources/Images/SM/Operations/SapR3/Edit-Variant-Dialog.png 'Edit Variant Dialog')

Select a variant parameter to update it's values.
![Edit Variant Parameter](../Resources/Images/SM/Operations/SapR3/Edit-Variant-Parameter-Value.png 'Edit Variant Parameter')
Click on the update button to update the parameter.

#### Delete Variant Dialog

- To remove variant from **Abap Program**, select or create a variant to enable button.  
  ![Delete Variant Button](../Resources/Images/SM/Operations/SapR3/Delete-Variant-Button.png 'Delete Variant Button')
  :::note
  This will only remove the variant from the abap step and will not permanently delete the variant from SAP Business Warehouse system.
  :::

### Abap Print Specifications

- Open Print Specifications Dialog  
  ![Print Specifications Button](../Resources/Images/SM/Operations/SapR3/Print-Specifications-Button.png 'Print Specifications Button')

#### General Attribute Tab

- **Output Device**: Define the output device, click on search button to query SAP Business Warehouse system for output devices.
  ![Output Device Button](../Resources/Images/SM/Operations/SapR3/Output-Device-Button.png 'Output Device Button')
- **Number of Copies**: Define number of copies to print.
- **Time of Printing**: Define when to print.
- **Print Format**: Define the format for printing, click on search button to query SAP Business Warehouse system for print formats.
  :::note
  Output device must first be selected to enable query button.
  :::
  ![Print Format Button](../Resources/Images/SM/Operations/SapR3/Print-Format-Button.png 'Print Format Button')  
  ![General Attribute](../Resources/Images/SM/Operations/SapR3/General-Attribute-Tab.png 'General Attribute')

#### Spool Request Tab

- **Name**: Define spool request name
- **Title**: Define spool request title
- **Authorization**: Define spool request authorization  
  ![Spool Request](../Resources/Images/SM/Operations/SapR3/Spool-Request-Tab.png 'Spool Request')

#### Cover Sheets Tab

- **SAP Cover page**: Define if cover page should be printed
- **Selection Cover Sheet**: Define Selection cover sheet
- **Recipient**: Define Recipient field
- **Department**: Define Department field  
  ![Copy Sheets](../Resources/Images/SM/Operations/SapR3/Copy-Sheets-Tab.png 'Copy Sheets')

#### Output Options Tab

- **Spool Retention Period**: Define when to delete after printing
- **Delete Immediately After Printing**: Enable to delete immediately after printing
- **New Spool Request**: Enable to create new spool request  
  ![Output Options](../Resources/Images/SM/Operations/SapR3/Output-Options-Tab.png 'Output Options')

### External Command Details

- **Command**: Name of the selected external command
- **Parameters**: Defines the parameters for the external command
- **Operating System**: Defines the operating system for the external command
- **Target Server**: Defines the target server for the external command
- **Log external output to job log**: Enable to log external output to job log
- **Log external errors to job log**: Enable to log external errors to job log
- **Job awaiting external termination**: Enable to wait for external termination
- **Active trace**: Enable to activate trace  
  ![External Command Details](../Resources/Images/SM/Operations/SapR3/External-Command-Details.png 'External Command Details')

### External Program Details

- **Program**: Name of the selected external program
- **Parameters**: Defines the parameters for the external program
- **Target Server**: Defines the target server for the external program
- **Log external output to job log**: Enable to log external output to job log
- **Log external errors to job log**: Enable to log external errors to job log
- **Job awaiting external termination**: Enable to wait for external termination
- **Active trace**: Enable to activate trace  
  ![External Program Details](../Resources/Images/SM/Operations/SapR3/External-Program-Details.png 'External Program Details')

### Select Execution Target

Click on the search button next to **Execution Target** to open the SAP Query dialog.  
![Search Button](../Resources/Images/SM/Operations/SapR3/Search-Exec-Sap-Button.png 'Search Button')

#### In the SAP Query dialog:

- **Machine**: Defines the SAP R3 LSAM Machine name.
- **Language**: Defines the two-character language abbreviation (e.g., enter EN for English).
- **User ID**: Defines Username for SAP Credentials.
- **Password**: Defines Password for SAP Credentials.

![SAP Query Dialog](../Resources/Images/SM/Operations/SapR3/SAP-Exec-Query-Dialog.png 'SAP Query Dialog')

Enter SAP Credentials and click on the search button to initiate a request to the SAP R3 system to retrieve all execution targets.

![Query SAP Button](../Resources/Images/SM/Operations/SapR3/Query-SAP-Button.png 'Query SAP Button')

Select a target from the list and click **Ok** to assign it to Exec. Target in the SAP R3 Daily Job Definition.

![Exec List](../Resources/Images/SM/Operations/SapR3/Sap-Exec-Dialog-List.png 'Exec List')

![Exec. Target](../Resources/Images/SM/Operations/SapR3/Sap-Exec-Target-Update.png 'Exec. Target')

### Remove Execution Target

To remove **Execution Target** press the **red trashcan icon**.

---

## More Information

For conceptual information, refer to [SAP R/3 and CRM Jobs](../../../../../../../job-types/sap.md) in
the **Concepts** online help.

# Updating SAP R3 Job Details

In **Admin** mode, SAP BW job type properties can be updated or defined.

For conceptual information, refer to [SAP R3 Job Details](../../../job-types/sap.md) in the **Concepts** online help.
:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Daily-Job-Definition.md#Required) in the **Accessing Daily Job Definition** topic.
:::

:::note
If you do not have the Machine Privilege, then you will not be able to edit the daily job definition.
:::

:::note
Changes made to the job properties in the **Daily Job Definition** will take place immediately. If the job has already run, the changes will take effect the next time the job runs.
:::

:::note
All required fields are designated by a **red asterisk**.
:::

:::note
![Waiting For SAP](../Resources/Images/SM/Operations/SapR3/Waiting-For-SAP.png "Waiting For SAP")  
A loading animation will appear when waiting for results from SAP Business Warehouse system.
:::

## Updating SAP R3 Job Task Details

To perform this procedure:
Click on the **Processes** button at the top-right of the **Operations Summary** page. The **Processes** page will display.
Ensure that both the **Date** and **Schedule** toggle switches are enabled so that you can make your date and schedule selection, respectively. Each switch will appear green when enabled.

![Schedule Status Updates Date & Schedule Toggle Switches Enabled](../Resources/Images/SM/Schedule-Status-Update_Date&ScheduleToggles_IBMi.png "Schedule Status Updates Date & Schedule Toggle Switches Enabled")
Select the desired **date(s)** to display the associated schedule(s).
Select one or more **schedule(s)** in the list.
Select one **job** in the list. A record of your selection will display in the [status bar](SM-UI-Layout.md#Status) at the bottom of the page in the form of a breadcrumb trail.

![Job Processes](../Resources/Images/SM/Job-ProcessesIBMi.png "Job Processes")

Click on the job record (e.g., 1 job(s)) in the status bar to display the **Selection** panel.

:::note
As an alternative, you can right-click on the job selected in the list to display the **Selection** panel.
:::

![Job Summary Tab in Operations](<../Resources/Images/SM/Job-Summary-Tab-(IBMi).png> "Job Summary Tab in Operations")  
Click the **Daily Job Definition** button ![Daily Job Definition Button](../Resources/Images/SM/Daily-Job-Definition-Button.png "Daily Job Definition Button") at the top-left corner of the panel to access the **Daily Job Definition** page. By default, this page will be in **Read-only** mode.
Click the **Lock** button ![Daily Job Definition Read-only Button](../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Daily Job Definition Read-only Button") at the top-right corner to place the page in **Admin** mode. The button will switch to display a white lock unlocked on a green background ![Daily Job Definition Admin Switch](../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Daily Job Definition Admin Switch") when enabled.

:::note
The **Lock** button will not be visible to users who do not have the appropriate permissions.
:::
Expand the **Task Details** panel to expose its content.
Select from the **Machines or Machine Group** drop-down list the **machine** where the LSAM is installed. If you wish instead to specify a machine group, then toggle the **Machines** switch to _Machine Group_ then select the **machine group** from the drop-down list. When toggled to Machine Group, the button will appear green ![Green Enabled Switch](../Resources/Images/SM/Enabled-Switch.png "Green Enabled Switch").

**In the SAP R3 Definition frame:**

- **Job Name**: Defines the name of the job as defined in the SAP R/3 and SAP CRM system.
- **Job Number**: Defines the SAP R/3 and SAP CRM Job number (Job ID) as defined in the SAP system.
- **Start SAP Job**: Configures SAP start criteria for the job.
  - **A.S.A.P.**: Configures the job to start as soon as a
    background process is available.
  - **Immediately**: Configures the job to start as soon as it
    qualifies to run in OpCon. The job
    does not wait for an available SAP background process before
    running. If all background processes are in use, an immediately
    started job fails.
- **Exec. Target**: Defines the name of the SAP Application Server on
  which the job processes.

### Select SAP Job

Click on the search button next to **Job Name** to open the SAP Query dialog.  
![Search Button](../Resources/Images/SM/Operations/SapR3/Search-Job-Sap-Button.png "Search Button")

#### In the SAP Query dialog:

- **Machine**: Defines the SAP R3 LSAM Machine name.
- **Language**: Defines the two-character language abbreviation (e.g., enter EN for English).
- **Job Name**: Defines text matching the name of the desired job name in the SAP Business Warehouse system. If unsure of the whole job name, use wildcards (\*) to expand the search.
- **User ID**: Defines Username for SAP Credentials.
- **Password**: Defines Password for SAP Credentials.

![SAP Query Dialog](../Resources/Images/SM/Operations/SapR3/SAP-Job-Query-Dialog.png "SAP Query Dialog")

Enter SAP Credentials and click on the search button to initiate a request to the SAP R3 system to retrieve all job names matching the search criteria.  
![Query SAP Button](../Resources/Images/SM/Operations/SapR3/Query-SAP-Button.png "Query SAP Button")

Select a job from the list and click **OK** to assign it to the daily job.

![Job List](../Resources/Images/SM/Operations/SapR3/Sap-Job-Dialog-List.png "Job List")

![Job Name and Job Number](../Resources/Images/SM/Operations/SapR3/Sap-Job-Dialog-Update.png "Job Name and Job Number")

### Create SAP Job

Click on the Add button next to **Job Name** to open the Create SAP Job Dialog.
![Search Button](../Resources/Images/SM/Operations/SapR3/Search-Job-Sap-Button.png "Search Button")

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
![Credentials Button](../Resources/Images/SM/Operations/SapR3/Open-Credentials-Dialog-Button.png "Credentials Button")

#### In the SAP Login dialog:

- **Machine**: Defines the SAP R3 LSAM Machine name.
- **User ID**: Defines Username for SAP Credentials.
- **Password**: Defines Password for SAP Credentials.
- **Language**: Defines the two-character language abbreviation (e.g., enter EN for English).

![SAP Login Dialog](../Resources/Images/SM/Operations/SapR3/SAP-Login-Dialog.png "SAP Login Dialog")  
**Create SAP Job Dialog** after entering credentials.
![SAP Login Dialog](../Resources/Images/SM/Operations/SapR3/Entered-Credentials-Create-Job-Dialog.png "SAP Login Dialog")

### Edit SAP Job

Open Edit SAP Job dialog by clicking on the edit button.
![Edit Job Button](../Resources/Images/SM/Operations/SapR3/Edit-Job-Button.png "Edit Job Button")
Open credentials dialog to enter credentials.
:::note
Required to enable **Query Button**
:::  
![Edit Dialog Credentials](../Resources/Images/SM/Operations/SapR3/Edit-Dialog-Credentials.png)

#### In the SAP Login dialog:

- **Machine**: Defines the SAP R3 LSAM Machine name.
- **User ID**: Defines Username for SAP Credentials.
- **Password**: Defines Password for SAP Credentials.
- **Language**: Defines the two-character language abbreviation (e.g., enter EN for English).

![SAP Login Dialog](../Resources/Images/SM/Operations/SapR3/SAP-Login-Dialog.png "SAP Login Dialog")

Click on query button after entering credentials to send request to SAP Business Warehouse system to search for job.  
![Edit Dialog Query](../Resources/Images/SM/Operations/SapR3/Edit-Query-Button.png "Query Button")  
Wait for results from SAP Business Warehouse system, your job details should show up in the edit job dialog.
![Edit Job Dialog](../Resources/Images/SM/Operations/SapR3/Edit-Job-Dialog.png "Edit Job Dialog")  
Make any changes and click **Save** to continue.

### Delete SAP Job

Open Delete SAP Job dialog by clicking on the delete button.
![Delete Job Button](../Resources/Images/SM/Operations/SapR3/Delete-Job-Button.png "Delete Job Button")

- **Machine**: Defines the SAP R3 LSAM Machine name.
- **Language**: Defines the two-character language abbreviation (e.g., enter EN for English).
- **User ID**: Defines Username for SAP Credentials.
- **Password**: Defines Password for SAP Credentials.
  ![Delete Job Dialog](../Resources/Images/SM/Operations/SapR3/Delete-Job-Dialog.png "Delete Job Dialog")
  Enter Credentials and click **Yes** button to delete job.

### Add Steps to SAP Job

Click on the Add button under **List of Steps** to open the Add SAP Step Dialog.
![Add SAP Step Button](../Resources/Images/SM/Operations/SapR3/Open-Add-Steps-Dialog-Button.png "Add SAP Step Button")

#### Add SAP Step Dialog

- **Abap Program**
  - **ABAP Program Selector**: Defines text matching the name of the desired **Abap Program** in the SAP Business Warehouse system. If unsure of the whole job name, use wildcards (\*) to expand the search.  
    ![Abap Program Dialog](../Resources/Images/SM/Operations/SapR3/Add-Steps-Dialog.png "Abap Program Dialog")
  - Click on the search button to initiate a request to the SAP R3 system to retrieve all **Abap Programs** matching the search criteria.  
    ![Query SAP Button](../Resources/Images/SM/Operations/SapR3/Query-SAP-Button.png "Query SAP Button")
  - Select **Abap Program** and click **OK** to add to step SAP Job.  
    ![Abap Query Result](../Resources/Images/SM/Operations/SapR3/Abap-Program-Query-Result.png "Abap Query Result")  
    ![Create Dialog Result](../Resources/Images/SM/Operations/SapR3/Abap-Program-Select-Result.png "Create Dialog Result")
- **External Command**
  - **External Command Selector**: Defines text matching the name of the desired **External Commmand** in the SAP Business Warehouse system. If unsure of the whole job name, use wildcards (\*) to expand the search.  
    ![External Command Dialog](../Resources/Images/SM/Operations/SapR3/External-Command-Query.png "External Command Dialog")
  - Enter External Command name OR Click on the search button to initiate a request to the SAP R3 system to retrieve all **External Commands** matching the search criteria.  
    ![Query SAP Button](../Resources/Images/SM/Operations/SapR3/Query-SAP-Button.png "Query SAP Button")
  - Select **External Command** and click **OK** to add step to SAP Job.  
    ![External Command Result](../Resources/Images/SM/Operations/SapR3/External-Command-Query-Result.png "External Command Result")  
    ![Create Dialog Result](../Resources/Images/SM/Operations/SapR3/External-Command-Select-Result.png "Create Dialog Result")
- **External Program**
  - **External Program Name**: Defines text matching the name of the desired **External Program** in the SAP Business Warehouse system.  
    ![External Program Dialog](../Resources/Images/SM/Operations/SapR3/External-Program-Query.png "External Program Dialog")
  - Enter **External Program Name** and click **OK** to add step to SAP Job.  
     ![External Program](../Resources/Images/SM/Operations/SapR3/Entered-External-Program-Name.png "External Program")  
     ![Create Dialog Result](../Resources/Images/SM/Operations/SapR3/External-Program-Select-Result.png "Create Dialog Result")

:::note
![List Button](../Resources/Images/SM/Operations/SapR3/Up-Down-Button.png "List Button")  
Use the up and down button to change the order of the steps
:::

### Abap Program Details

- Select **Abap Program** from list of steps
  ![Select Abap Program](../Resources/Images/SM/Operations/SapR3/Abap-Program-Select.png "Select Abap Program")
- **ABAP Program**: Defines the name of the Abap Program.
- **Variant**: Defines Variant for the Abap
  - **Search Variant Button**: Initiate a request to the SAP R3 system to retrieve all variants for selected abap step.
    ![Search Variant Button](../Resources/Images/SM/Operations/SapR3/Search-Variant-Button.png "Search Variant Button")
  - **Add Variant Button**: Open add variant dialog to create new variant for selected abap step.
    ![Add Variant Button](../Resources/Images/SM/Operations/SapR3/Add-Variant-Button.png "Add Variant Button")
  - **Edit Variant Button**: Open edit variant dialog to edit variant details for selected abap step.  
    **search and select variant or create new variant to enable button**.  
     ![Edit Variant Button](../Resources/Images/SM/Operations/SapR3/Edit-Variant-Button.png "Edit Variant Button")
  - **Delete Variant Button**: Remove current variant from selected abap step.  
    **search and select variant or create new variant to enable button**.  
    ![Delete Variant Button](../Resources/Images/SM/Operations/SapR3/Delete-Variant-Button.png "Delete Variant Button")
- **Language**: Defines the two-character language abbreviation (e.g., enter EN for English).
- **Print Specification Button**: Open Print Specifications Dialog to define print details.
  ![Print Specifications Button](../Resources/Images/SM/Operations/SapR3/Print-Specifications-Button.png "Print Specifications Button")

### Abap Variants

#### Search Variant Dialog

To open search variant dialog  
![Search Variant Button](../Resources/Images/SM/Operations/SapR3/Search-Variant-Button.png "Search Variant Button")  
Click on the search button to initiate a request to the SAP R3 system to retrieve all **Variants** for the selected abap step.
![Query SAP Button](../Resources/Images/SM/Operations/SapR3/Query-SAP-Button.png "Query SAP Button")  
Select **Variant** and click **OK** to apply to abap step  
![Search Variant Result](../Resources/Images/SM/Operations/SapR3/Search-Variant-Select-Result.png "Search Variant Result")  
![Search Variant Save](../Resources/Images/SM/Operations/SapR3/Search-Variant-Save.png "Search Variant Save")

#### Add Variant Dialog

To open create variant dialog  
![Add Variant Button](../Resources/Images/SM/Operations/SapR3/Add-Variant-Button.png "Add Variant Button")  
Wait for SAP Business Warehouse system to return **Variant Parameters**
![Wait For Variant Parameters](../Resources/Images/SM/Operations/SapR3/Wait-For-Variant-Parameters.png "Wait For Variant Parameters")

- **Variant Name**: Define the name for the variant being created.
- **Temporary Variant**: Create the variant in local database.
  - Temporary Variant will be created when the daily job is saved.
  - Temporary Variant will be deleted when the daily job or SAP job is deleted.
- **Variant Parameters**: Solution manager will send a request to SAP Business Warehouse system for parameter's when create variant dialog is opened.

![Create Variant Dialog](../Resources/Images/SM/Operations/SapR3/Create-New-Variant-Dialog.png "Create Variant Dialog")

Select a variant parameter to update it's values
![Update Variant Parameter](../Resources/Images/SM/Operations/SapR3/Update-Variant-Parameter-Values.png "Update Variant Parameter")
Click on the update button to update the selected parameter  
![Update Button](../Resources/Images/SM/Operations/SapR3/Update-Button.png "Update Button")

#### Edit Variant Dialog

To open edit variant dialog, select or create a variant to enable button.  
![Edit Variant Button](../Resources/Images/SM/Operations/SapR3/Edit-Variant-Button.png "Edit Variant Button")
Please wait for **Variant Parameters** to be returned
![Wait For Variant Parameters](../Resources/Images/SM/Operations/SapR3/Edit-Wait-For-Variant-Parameters.png "Wait For Variant Parameters")

- **Variant Name**: Name of variant being updated, cannot be changed.
- **Refresh Button**: Send request to check and load new parameter values.

![Edit Variant Dialog](../Resources/Images/SM/Operations/SapR3/Edit-Variant-Dialog.png "Edit Variant Dialog")

Select a variant parameter to update it's values.
![Edit Variant Parameter](../Resources/Images/SM/Operations/SapR3/Edit-Variant-Parameter-Value.png "Edit Variant Parameter")
Click on the update button to update the parameter.  
![Update Button](../Resources/Images/SM/Operations/SapR3/Update-Button.png "Update Button")

#### Delete Variant Dialog

- To remove variant from **Abap Program**, select or create a variant to enable button.  
  ![Delete Variant Button](../Resources/Images/SM/Operations/SapR3/Delete-Variant-Button.png "Delete Variant Button")
  :::note
  This will only remove the variant from the abap step and will not permanently delete the variant from SAP Business Warehouse system.
  :::

### Abap Print Specifications

- Open Print Specifications Dialog  
  ![Print Specifications Button](../Resources/Images/SM/Operations/SapR3/Print-Specifications-Button.png "Print Specifications Button")

#### General Attribute Tab

- **Output Device**: Define the output device, click on search button to query SAP Business Warehouse system for output devices.
  ![Output Device Button](../Resources/Images/SM/Operations/SapR3/Output-Device-Button.png "Output Device Button")
- **Number of Copies**: Define number of copies to print.
- **Time of Printing**: Define when to print.
- **Print Format**: Define the format for printing, click on search button to query SAP Business Warehouse system for print formats.
  :::note
  Output device must first be selected to enable query button.
  :::
  ![Print Format Button](../Resources/Images/SM/Operations/SapR3/Print-Format-Button.png "Print Format Button")  
  ![General Attribute](../Resources/Images/SM/Operations/SapR3/General-Attribute-Tab.png "General Attribute")

#### Spool Request Tab

- **Name**: Define spool request name
- **Title**: Define spool request title
- **Authorization**: Define spool request authorization  
  ![Spool Request](../Resources/Images/SM/Operations/SapR3/Spool-Request-Tab.png "Spool Request")

#### Cover Sheets Tab

- **SAP Cover page**: Define if cover page should be printed
- **Selection Cover Sheet**: Define Selection cover sheet
- **Recipient**: Define Recipient field
- **Department**: Define Department field  
  ![Copy Sheets](../Resources/Images/SM/Operations/SapR3/Copy-Sheets-Tab.png "Copy Sheets")

#### Output Options Tab

- **Spool Retention Period**: Define when to delete after printing
- **Delete Immediately After Printing**: Enable to delete immediately after printing
- **New Spool Request**: Enable to create new spool request  
  ![Output Options](../Resources/Images/SM/Operations/SapR3/Output-Options-Tab.png "Output Options")

### External Command Details

- **Command**: Name of the selected external command
- **Parameters**: Defines the parameters for the external command
- **Operating System**: Defines the operating system for the external command
- **Target Server**: Defines the target server for the external command
- **Log external output to job log**: Enable to log external output to job log
- **Log external errors to job log**: Enable to log external errors to job log
- **Job awaiting external termination**: Enable to wait for external termination
- **Active trace**: Enable to activate trace  
  ![External Command Details](../Resources/Images/SM/Operations/SapR3/External-Command-Details.png "External Command Details")

### External Program Details

- **Program**: Name of the selected external program
- **Parameters**: Defines the parameters for the external program
- **Target Server**: Defines the target server for the external program
- **Log external output to job log**: Enable to log external output to job log
- **Log external errors to job log**: Enable to log external errors to job log
- **Job awaiting external termination**: Enable to wait for external termination
- **Active trace**: Enable to activate trace  
  ![External Program Details](../Resources/Images/SM/Operations/SapR3/External-Program-Details.png "External Program Details")

### Select Execution Target

Click on the search button next to **Execution Target** to open the SAP Query dialog.  
![Search Button](../Resources/Images/SM/Operations/SapR3/Search-Exec-Sap-Button.png "Search Button")

#### In the SAP Query dialog:

- **Machine**: Defines the SAP R3 LSAM Machine name.
- **Language**: Defines the two-character language abbreviation (e.g., enter EN for English).
- **User ID**: Defines Username for SAP Credentials.
- **Password**: Defines Password for SAP Credentials.

![SAP Query Dialog](../Resources/Images/SM/Operations/SapR3/SAP-Exec-Query-Dialog.png "SAP Query Dialog")

Enter SAP Credentials and click on the search button to initiate a request to the SAP R3 system to retrieve all execution targets.

![Query SAP Button](../Resources/Images/SM/Operations/SapR3/Query-SAP-Button.png "Query SAP Button")

Select a target from the list and click **Ok** to assign it to Exec. Target in the SAP R3 Daily Job Definition.

![Exec List](../Resources/Images/SM/Operations/SapR3/Sap-Exec-Dialog-List.png "Exec List")

![Exec. Target](../Resources/Images/SM/Operations/SapR3/Sap-Exec-Target-Update.png "Exec. Target")

### Remove Execution Target

To remove **Execution Target** press the **red trashcan icon**.
![Remove Target](../Resources/Images/SM/Operations/SapR3/Sap-Exec-Target-Remove.png "Remove Target")

:::note
Click the **Save** button to update any changes made to daily job
:::
:::note
Click the **Undo** button if you wish to undo your changes made to daily job.
:::
