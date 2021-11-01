# Job Type Management

Use the quick links to access instructions on how to:

- [Defining BIS Job Details](#Defining_BIS_Job_Details)
- [Defining Container Job Details](#Defining_Container_Job_Details)
- [Defining File Transfer Job     Details](#Defining_File_Transfer_Job_Details)
- [Defining IBM i Job Details](#Defining_IBM_i_Job_Details)
- [Defining Java Job Details](#Defining_Java_Job_Details)
- [Defining MCP Job Details](#Define_MCP_Job_Details)
- [Defining OpenVMS Job Details](#Defining_OpenVMS_Job_Details)
- [Defining OS 2200 Job Details](#Defining_OS_2200_Job_Details)
- [Defining SAP BW Job Details](#Defining_SAP_BW_Job_Details)
- [Defining SAP R/3 and CRM Job     Details](#Defining_SAP_R/3_and_CRM_Job_Details)
- [Defining SQL Job Details](#Defining5)
  - [Defining Job Action: MS SQL DTExec Job         Details](#Defining6)
  - [Defining Job Action: MS SQL Job Details](#Defining7)

  - [Defining Job Action: MS SQL Script Job         Details](#Defining8)
  - [Defining Job Action: MySQL Job Details](#Defining9)

  - [Defining Job Action: Oracle Job Details](#Defining10)

  - [Defining Job Action: Other DB Job Details](#Defining11)

- [Defining Tuxedo ART Job     Details](#Defining_Tuxedo_Job_Details)
- [Defining UNIX Job Details](#Defining_UNIX_Job_Details)
  - [Defining Job Action: Run Program Job         Details](#Defining3)
  - [Defining Job Action: File Arrival Job         Details](#Defining)
  - [Defining Job Action: Embedded Script Job         Details](#Defining4)
  - [Defining Episys Job Details](#Defining2)
- [Defining Windows Job Details](#Defining_Windows_Job_Details)
  - [Defining Job Action: Run Program Job         Details](#Defining_Run_Program_Job_Details)
  - [Defining Job Action: File Arrival Job         Details](#Defining_File_Arrival_Job_Details)
  - [Defining Job Action: Embedded Script Job         Details](#Defining_Job_Action:_Command_Script_Job_Details)

  - [Defining Command: File Copy Job         Details](#Defining_Command:File_Copy_Job_Details)
  - [Defining Command: File Delete Job         Details](#Defining_Command:File_Delete_Job_Details)

  - [Defining Command: File Move Job         Details](#Defining_Command:_File_Move_Job_Details)

  - [Defining Command: File Rename Job         Details](#Defining_Command:File_Rename_Job_Details)

  - [Defining Corelation Job         Details](#Defining_Corelation_Job_Details)
  - [Defining Web Services (RESTful) Job         Details](#Defining_Web_Services_(RESTful)_Job_Details)

  - [Defining WS_FTP Pro Job         Details](#Defining_WS_FTP_Pro_Job_Details)
- [Defining z/OS Job Details](#Defining_z/OS_Job_Details)

## Defining BIS Job Details

For conceptual information, refer to [BIS Job Details](../../../job-types/bis.md) in the
**Concepts** online help.

To define job details:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
    Then, proceed to Step 2 below to define the platform-specific
    job information.
2. Enter the *field information*.
3. Click on the **Data Dependencies** tab.
4. Enter the *field information*.
5. Click on the **File Dependencies** tab.
6. Enter the *field information*.
7. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.

## Defining Container Job Details

For conceptual information, refer to [Container Job Type](../../../job-types/container.md) in the
**Concepts** online help.

To define job details:

1. Double-click on **Job Master** under the **Administration** topic.
    The **Job Master** screen displays.
2. Select the **Schedule** in the **Schedule** drop-down list.
3. Click ![](../../../Resources/Images/EM/EMadd.png) **Add** on the
    **Job Master** toolbar.
4. Enter a *job name* in the **Name** text box.
5. Select **Container** in the **Job Type** drop-down list.
6. Select a **Schedule to run as Sub-Schedule**.
7. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.

## Defining File Transfer Job Details

For conceptual information, refer to [File Transfer Job Details](../../../job-types/file-transfer.md)
 in the **Concepts** online help.

To define job details:

Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
Then, proceed to Step 2 below to define the platform-specific job
information.

Ensure that the **File Information** tab is selected within the **File
Transfer Definition** frame.

:::note
For the fields supporting tokens, use the **Global Property Selector** by pressing the **Ctrl/t** keyboard shortcut to find and define tokens for global properties easily. You may also type a token manually.] [For more information on tokens, refer to [Tokens](../../../objects/using-properties.md#tokens) in the **Concepts** online help.
:::

In the **Source Machine** drop-down list, select the **machine**
containing the file to be transferred.

In the **User** drop-down list, select the **User ID** with privileges
to execute the file transfer.

In the **Source File** text box, type the path and file name for the
source file (e.g., C:\\Output\\Test.txt).

In the **Destination Machine** drop-down list, select the **machine**
that will receive the file.

In the **User** drop-down list, select the **User ID** with privileges
to execute the file transfer.

In the **Destination File** text box, define the *path and file name*
for the destination file:

a.  To inherit the file name from the Source Machine, type only the path
    to the preferred location (e.g., C:\\Transferred Files\\).
b.  To give the destination file a specific name, type the path and file
    name (e.g., C:\\Transferred Files\\Test.txt).

Click on the **Option** tab.

Select the **Source Data Type**.

Select the **Maximum Transfer Rate (kbits/s)**.

Select the **Destination Data Type**.

Select a **Compression** option.

Select an **If File Exists** option.

Select an **Encryption** option.

Select the **Delete Source File** option.

Select the **Start Transfer On** option.

Select the **TLS Security Override** option.

*(Optional)* Select the **Fails if preferred settings
not satisfied** checkbox.

Click ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon")
**Save** on the **Job Master** toolbar.

## Defining IBM i Job Details

For conceptual information, refer to [IBM i Job Details](../../../job-types/ibm-i.md) in
the **Concepts** online help.

To define job details:

Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
Then, proceed to Step 2 below to define the platform-specific job
information.

Ensure that the **Job Information** tab is selected in the **IBM i
Definition** frame.

Select a **Job Type**.

Select a **user** in the **User ID** drop-down list.

**In the Job Description frame**:

Select a *value* in the **Name** drop-down list.

Select a *value* in the **Library** drop-down list.

**In the Library frame**:

Select a *value* in the **Current** drop-down list.

Select a *value* in the **Init Lib List** drop-down list.

**In the Job Queue frame**:

Select a *value* in the **Name** drop-down list.

Select a *value* in the **Library** drop-down list.

Enter the *field information* in the **Call Information** or **File
Arrival Information** frame, if required by the selected job type.

Click ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon")
**Save** on the **Job Master** toolbar.

Managing Items in the Additional Info tab

Click on the **Additional Info** tab.

Select a *value* in the **JobQ Priority** drop-down list.

Select a *value* in the **Job Date** drop-down list.

*(Optional)* Enter an **Accounting Code**.

Select a *value* in the **Log CL Commands** drop-down list.

Select a *value* in the **Inquiry Message Replay** drop-down list.

**In the Output Queue frame**:

Select a *value* in the **Name** drop-down list.

Select a *value* in the **Library** drop-down list.

**In the Message Logging frame**:

Select a *value* in the **Level** drop-down list.

Select a *value* in the **Severity** drop-down list.

Select a *value* in the **Text** drop-down list.

**In the Job Log Retention frame**:

*(Optional)* Enter the *number* for **Number of
Occurrences**.

*(Optional)* Enter the *number* for **Number of Days**.

Click ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on
the **Job Master** toolbar.

Managing Items in the Messages tab

Click on the **Messages** tab.

Add messages by:

a.  Entering the *field information*.
b.  Clicking the **Add** button.

Edit messages by:

a.  Selecting the preferred **message** in the defined messages table.
b.  Modifying the **fields** above the table.
c.  Clicking the **Update** button.

Delete messages by:

a.  Selecting the preferred **message** in the defined messages table.
b.  Clicking the **Remove** button.

Click ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon")
**Save** on the **Job Master** toolbar.

Managing Items in the Spool Files tab

Click on the **Spool Files** tab.

Add spool files by:

a.  Entering the *field information*.
b.  Clicking the **Add** button.

Edit spool files by:

a.  Selecting the **spool file** in the defined spool files table.
b.  Modifying the **fields** above the table.
c.  Click the **Update** button.

Delete spool files by:

a.  Selecting the **spool file** in the defined spool files table.
b.  Clicking the **Remove** button.

Click ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon")
**Save** on the **Job Master** toolbar.

Managing Items in the Variables tab

Click on the **Variables** tab.

Add variable definitions for IBM i Dynamic Variable names by:

a.  Entering the *field information*.
b.  Clicking the **Add** button.

Edit variables by:

a.  Selecting the **variable definition** in the defined variables
    table.
b.  Modifying the **fields** above the table.
c.  Clicking the **Update** button.

Delete variables by:

a.  Selecting the **variable definition** in the defined variables
    table.
b.  Clicking the **Remove** button.

Click ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon")
**Save** on the **Job Master** toolbar.

## Defining Java Job Details

For conceptual information, refer to [Java Job Details](../../../job-types/java.md) in the
**Concepts** online help.

To define job details:

Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
Then, proceed to Step 2 below to define the platform-specific job
information.

**In the Java Definition frame:**

Select the **Operation** (Class, Command, or JAR).

Enter the *field information* for the Class, Command, or JAR operation.

**Managing Items in the Parameters tab**

Add parameters by:

a.  Entering the *name/value field information*.
b.  Clicking the **Add** button.

Edit parameters by:

a.  Selecting the desired row in the defined parameters table.
b.  Modifying the **name/value** fields above the table.
c.  Clicking the **Update** button.

Delete parameters by:

a.  Selecting the desired row in the defined parameters table.
b.  Clicking the **Remove** button.

Managing Items in the JVM Arguments tab

Add arguments by:

a.  Entering the *name/value field information*.
b.  Clicking the **Add** button.

Edit arguments by:

a.  Selecting the desired row in the defined arguments table.
b.  Modifying the **name/value** fields above the table.
c.  Clicking the **Update** button.

Delete arguments by:

a.  Selecting the desired row in the defined arguments table.
b.  Clicking the **Remove** button.

:::note
A special argument definition, JAVA_JVM_ARGS, can be used to point to a global property that contains a list of arguments defined in arg=value pairs separated by a comma (e.g., JAVA_JVM_ARGS=\[\[GLOBAL_PROPERTY\]\], where \[\[GLOBAL_PROPERTY\]\]=\[\[arg1=value1,arg2=value2\]\]).
:::

Managing Items in the Environment Variables tab

Add variables by:

a.  Entering the *name/value field information*.
b.  Clicking the **Add** button.

Edit variables by:

a.  Selecting the desired row in the defined variables table.
b.  Modifying the **name/value** fields above the table.
c.  Clicking the **Update** button.

Delete variables by:

a.  Selecting the desired row in the defined variables table.
b.  Clicking the **Remove** button.

:::note
A special argument definition, JAVA_ENV_VARS, can be used to point to a global property that contains a list of environment variables defined in env=value pairs separated by a comma (e.g., JAVA_ENV_VARS=\[\[GLOBAL_PROPERTY\]\], where \[\[GLOBAL_PROPERTY\]\]=\[\[name1=value1,name2=value2\]\]).
:::

**In the Failure Criteria frame:**

Select the **Operators** and enter the *Exit Codes*.

Click ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon")
**Save** on the **Job Master** toolbar.

## Define MCP Job Details

For conceptual information, refer to [MCP Job Details](../../../job-types/mcp.md) in the
**Concepts** online help.

To define job details:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
    Then, proceed to Step 2 below to define the platform-specific
    job information.
2. Ensure that the **Job Information** tab is selected within the **MCP
    Definition** frame.
3. Enter a *User Code*.
4. *(Optional)* Enter an *Access Code*.
5. Select the **MCP Job Type**.
6. Enter the *field information*.
7. Click on the **Pre-Run Information** tab.
8. Enter the *MCP Pre-Run Type*.
9. Enter the *field information*.
10. Click on the **Failure Criteria** tab.
11. Enter the *field information*.
12. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.

## Defining OS 2200 Job Details

For conceptual information, refer to [OS 2200 Job Details](../../../job-types/os-2200.md) in
the **Concepts** online help.

To define job details:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
    Then, proceed to Step 2 below to define the platform-specific
    job information.
2. Ensure that the **Job Information** tab is selected with the **OS
    2200 Definition** frame.
3. Enter the *field information*.
4. Click on the **Tokens** tab.
5. Enter the *field information*.
6. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.

## Defining SAP BW Job Details

For conceptual information, refer to [SAP BW Job Details](../../../job-types/sap-bw.md) in
the **Concepts** online help.

To define job details:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
    Then, proceed to Step 2 below to define the platform-specific
    job information.
2. Click the **SAP Search** button. The **SAP Query** dialog displays.
3. Enter the *process chain name* (wildcards (\*) can be used to expand
    the search).
4. *(Optional)* Enter the *description* (wildcards (\*)
    can be used to expand the search).
5. Click the **Query SAP** search button.
6. Select the **Process Chain** from the results table.
7. Click the **OK** button. This assigns the existing SAP BW Process
    Chain to the job.
8. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.

## Defining SAP R/3 and CRM Job Details

For conceptual information, refer to [SAP R/3 and CRM Job Details](../../../job-types/sap.md)
 in the **Concepts** online help.

To define job details:

Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
Then, proceed to Step 2 below to define the platform-specific job
information.

:::note
To define the OpCon job for an SAP R/3 and CRM Tracked or Queued job, do not define any SAP-specific details and click ![Save](../../../Resources/Images/EM/EMsave.png) **Save** on the **Job Master**] toolbar.
:::

**In the SAP R/3 and CRM Definition frame:**

Assign an existing SAP Job

Click the **SAP Search** button to define a specific SAP job to run.

Enter a *Job Name* (wildcards (\*) can be used to expand the search).

Click the **Query SAP** search button.

Select the **job** from the search results table.

Click the **OK** button.

Create a new SAP Job

Click the **New** button. The **Create new SAP Job** dialog displays.

Log in to SAP.

Enter a **Job Name**.

Select a **Job Class**.

Enter a **Spool Recipient**.

Click the **Add** button to add SAP Step(s). The **Add SAP Step** wizard
displays.

Follow the wizard to specify or enter all necessary information.

Repeat Steps 12 and 13 to add additional SAP Steps.

Re-assign the SAP Step order by:

a.  Clicking on the SAP Step to re-assign.
b.  Clicking on the **Up** and/or **Down** arrows.

Remove an SAP Step by:

a.  Clicking on the SAP Step to remove.
b.  Clicking the **Remove** button.

Enter the *field information* in the **Step Details** frame.

Click the **Save** button.

Edit the SAP Job Definition

Click the **Edit** button.

Click on the **parameter** to modify.

Modify the **information**.

Click the **Save** button.

Define Additional SAP Job Information

**In the Start SAP Job frame:**

Select the **A.S.A.P.** or **Immediately** radio button.

**In the Exec. Target frame:**

*(Optional)* Select the **Specify an Exec. Target**
checkbox.

Click the **SAP Search** button.

*(Optional)* Click the **Query SAP** search button.

Select an **Application Server** from the list.

Click **OK**.

Click ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon")
**Save** on the **Job Master** toolbar.

## Defining SQL Job Details

### Defining Job Action: MS SQL DTExec Job Details

For conceptual information, refer to [SQL Job Details](../../../job-types/sql.md) in the
**Concepts** online help.

To define job details:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
    Then, proceed to Step 2 below to define the platform-specific
    job information.
2. Select **MS SQL DTExec** in the **Job Action** drop-down list.
3. Select a *connection type* to perform: **SQL** or **FILE**.
    a.  (If SQL is selected): Enter all *required information*.
    b.  (If FILE is selected): Enter all *required information*.
4. Enter the **Package File Path**.
5. *(Optional)* Enter the **Other Options**.
6. Enter the *failure criteria rules*. Click the ![Reset to Default     icon](../../../Resources/Images/EM/EMresettodefault.png "Reset to Default icon") **Reset
    to Default** icon next to the first row to reset all rows to default
    values. Click the ![Delete     icon](../../../Resources/Images/EM/EMdelete.png "Delete icon") **Delete**
    icon next to a row to delete.
7. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.

### Defining Job Action: MS SQL Job Details

For conceptual information, refer to [SQL Job Details](../../../job-types/sql.md) in the
**Concepts** online help.

To define job details:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
    Then, proceed to Step 2 below to define the platform-specific
    job information.
2. Select **MS SQL Job** in the **Job Action** drop-down list.
3. Enter the **Server Name\\Instance**.
4. *(Optional)* Select the **Windows Authentication**
    checkbox.
5. Select the **user** in the **User Id** drop-down list.
6. *(Optional)* Select the **Encrypt** checkbox.
7. Enter the *number* for **Retry Attempts**.
8. Enter the **Job Name**.
9. *(Optional)* Select the **Monitor Only** checkbox.
10. *(Optional)* Enter the *number of days* and *time*
    for the **Monitoring End Time**.
11. *(Optional)* Enter the **Other Options**.
12. Enter the *failure criteria rules*. Click the ![Reset to Default     icon](../../../Resources/Images/EM/EMresettodefault.png "Reset to Default icon") **Reset
    to Default** icon next to the first row to reset all rows to default
    values. Click the ![Delete     icon](../../../Resources/Images/EM/EMdelete.png "Delete icon") **Delete**
    icon next to a row to delete.
13. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.

### Defining Job Action: MS SQL Script Job Details

For conceptual information, refer to [SQL Job Details](../../../job-types/sql.md) in the
**Concepts** online help.

To define job details:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
    Then, proceed to Step 2 below to define the platform-specific
    job information.
2. Select **MS SQL Script** in the **Job Action** drop-down list.
3. Enter the **Server Name\\Instance**.
4. Enter the **Database Name**.
5. *(Optional)* Select the **Windows Authentication**
    checkbox.
6. Select the **user** in the **User Id** drop-down list.
7. *(Optional)* Select the **Encrypt** checkbox.
8. Select the *script type* to use: **Script File** or **In Line
    Script**.
    a.  (If Script File is selected): Enter all *required information*.
    b.  (If In Line Script is selected): Enter all *required information*.
9. Add variables by:
    a.  Entering the *name/value field information*.
    b.  Clicking the **Add** button.
10. Edit variables by:
    a.  Selecting the desired row in the defined variables table.
    b.  Modifying the **name/value** fields above the table.
    c.  Clicking the **Update** button.
11. Delete variables by:
    a.  Selecting the desired row in the defined variables table.
    b.  Clicking the **Remove** button.
12. *(Optional)* Select the **Use Exit Code From Script
    Result** checkbox.
13. *(Optional)* Enter the **File Path**.
14. *(Optional)* Enter the **Other Options**.
15. Enter the *failure criteria rules*. Click the ![Reset to Default     icon](../../../Resources/Images/EM/EMresettodefault.png "Reset to Default icon") **Reset
    to Default** icon next to the first row to reset all rows to default
    values. Click the ![Delete     icon](../../../Resources/Images/EM/EMdelete.png "Delete icon") **Delete**
    icon next to a row to delete.
16. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.

### Defining Job Action: MySQL Job Details

For conceptual information, refer to [SQL Job Details](../../../job-types/sql.md) in the
**Concepts** online help.

To define job details:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
    Then, proceed to Step 2 below to define the platform-specific
    job information.
2. Select **MySQL** in the **Job Action** drop-down list.
3. Enter the **Server Name**.
4. Enter the **Database Name**.
5. Select the **user** in the **User Id** drop-down list.
6. Enter the **Port** number.
7. Enter the **Script File Path**.
8. Add variables by:
    a.  Entering the *name/value field information*.
    b.  Clicking the **Add** button.
9. Edit variables by:
    a.  Selecting the desired row in the defined variables table.
    b.  Modifying the **name/value** fields above the table.
    c.  Clicking the **Update** button.
10. Delete variables by:
    a.  Selecting the desired row in the defined variables table.
    b.  Clicking the **Remove** button.
11. *(Optional)* Enter the **File Path**.
12. *(Optional)* Enter the **Other Options**.
13. Enter the *failure criteria rules*. Click the ![Reset to Default     icon](../../../Resources/Images/EM/EMresettodefault.png "Reset to Default icon") **Reset
    to Default** icon next to the first row to reset all rows to default
    values. Click the ![Delete     icon](../../../Resources/Images/EM/EMdelete.png "Delete icon") **Delete**
    icon next to a row to delete.
14. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.

### Defining Job Action: Oracle Job Details

For conceptual information, refer to [SQL Job Details](../../../job-types/sql.md) in the
**Concepts** online help.

To define job details:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
    Then, proceed to Step 2 below to define the platform-specific
    job information.
2. Select **Oracle** in the **Job Action** drop-down list.
3. Enter the **Server Name**.
4. Enter the **Database Name**.
5. Select the **user** in the **User Id** drop-down list.
6. Enter the **Connection Id**.
7. Enter the **Script File Path**.
8. *(Optional)* Enter the **Parameters (positional)**.
9. *(Optional)* Enter the **File Path**.
10. *(Optional)* Enter the **Other Options**.
11. Enter the *failure criteria rules*. Click the ![Reset to Default     icon](../../../Resources/Images/EM/EMresettodefault.png "Reset to Default icon") **Reset
    to Default** icon next to the first row to reset all rows to default
    values. Click the ![Delete     icon](../../../Resources/Images/EM/EMdelete.png "Delete icon") **Delete**
    icon next to a row to delete.
12. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.

### Defining Job Action: Other DB Job Details

For conceptual information, refer to [SQL Job Details](../../../job-types/sql.md) in the
**Concepts** online help.

To define job details:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
    Then, proceed to Step 2 below to define the platform-specific
    job information.
2. Select **Other DB** in the **Job Action** drop-down list.
3. Select the *database connection type* to use: **ODBC Connection
    String**, **OleDB Connection String**, or **DSN Name**.
    a.  (If ODBC Connection String is selected): Enter         all *required information*.
    b.  (If OleDB Connection String is selected): Enter         all *required information*.
    c.  (If DSN Name is selected): Enter all *required         information*.
4. *(Optional)* Select the **Windows Authentication**
    checkbox.
5. Select the **user** in the **User Id** drop-down list.
6. Select the *script type* to use: **Script File** or **In Line
    Script**.
    a.  (If Script File is selected): Enter all         *required information*.
    b.  (If In Line Script is selected): Enter all         *required information*.
7. Add variables by:
    a.  Entering the *name/value field information*.
    b.  Clicking the **Add** button.
8. Edit variables by:
    a.  Selecting the desired row in the defined variables table.
    b.  Modifying the **name/value** fields above the table.
    c.  Clicking the **Update** button.
9. Delete variables by:
    a.  Selecting the desired row in the defined variables table.
    b.  Clicking the **Remove** button.
10. *(Optional)* Enter the **File Path**.
11. *(Optional)* Enter the **Other Options**.
12. Enter the *failure criteria rules*. Click the ![Reset to Default     icon](../../../Resources/Images/EM/EMresettodefault.png "Reset to Default icon") **Reset
    to Default** icon next to the first row to reset all rows to default
    values. Click the ![Delete     icon](../../../Resources/Images/EM/EMdelete.png "Delete icon") **Delete**
    icon next to a row to delete.
13. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.

## Defining Tuxedo ART Job Details

For conceptual information, refer to [Tuxedo ART Job Details](../../../job-types/tuxedo-art.md)
in the **Concepts** online help.

To define job details:

Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
Then, proceed to Step 2 below to define the platform-specific job
information.

**In the Tuxedo ART Definition frame:**

Enter the *Script*.

Enter the *Owner*.

Enter the *JESRoot Directory*.

Enter the *Tuxedo Environment*.

**Managing Items in the Parameters tab**

Add parameter(s) by:

a.  Entering the *name/value field information*.
b.  Clicking the **Add** button.

Edit parameter(s) by:

a.  Selecting the desired row in the defined Parameters table.
b.  Modifying the **name/value** fields above the table.
c.  Clicking the **Update** button.

Delete parameter(s) by:

a.  Selecting the desired row in the defined Parameters table.
b.  Clicking the **Remove** button.

Managing Items in the Step Control tab

Add step(s) by:

a.  Entering the *step name/min CC/max CC/step action/trigger message
    field information*.
b.  Clicking the **Add** button.

Edit step(s) by:

a.  Selecting the desired row in the defined Steps table.
b.  Modifying the **step name/min CC/max CC/step action/trigger
    message** fields above the table.
c.  Clicking the **Update** button.

Delete step(s) by:

a.  Selecting the desired row in the defined Steps table.
b.  Clicking the **Remove** button.

Managing Items in the Failure Criteria tab

Enter the *field information*.

Click ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon")
**Save** on the **Job Master** toolbar.

## Defining UNIX Job Details

### Defining Job Action: Run Program Job Details

For conceptual information, refer to [UNIX Job Details](../../../job-types/unix.md) in the
**Concepts** online help.

To define job details:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
    Then, proceed to Step 2 below to define the platform-specific
    job information.
2. Select **Run Program** in the **Job Action** drop-down list.
3. Select the **UNIX Group ID** and **User Id** assigned to the job.
4. Enter the **NICE Value**.
5. Enter the *Prerun* information.
6. Enter the **Parameters**.
7. Select the *Operators* and enter *Exit Codes* in the **Basic** tab.
8. *(Optional)* Deselect the **Fails on core dump**
    checkbox in the **Core Dump** frame to not return a failed exit code
    on a core dump.
9. *(Optional)* Select the **Operators** and enter the
    *Signals* in the **Signals** frame.
10. Select the **Search Operation** from the drop-down menu.
11. Enter the **String to Search**. Wildcard characters are supported in
    the string.
12. Enter the **Exit Code**.
13. Click the ![Add     icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add**
    button to define the parsing criteria. Once defined, you can select
    any row in the table and use the ![Update     icon](../../../Resources/Images/EM/EMresettodefault.png "Update icon") **Update**
    button to update or the ![Remove     icon](../../../Resources/Images/EM/EMremove.png "Remove icon") **Remove**
    button to delete it.
14. Enter the **Custom Application Log**. Wildcard characters are
    supported for specifying multiple logs.
15. Enter a *name* in the **Env Variable Name** field.
16. Enter a *value* in the **Env Variable Value** field.
17. Click the ![Add     icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add**
    button to define the parsing criteria. Once defined, you can select
    any row in the table and use the ![Update     icon](../../../Resources/Images/EM/EMresettodefault.png "Update icon") **Update**
    button to update or the ![Remove     icon](../../../Resources/Images/EM/EMremove.png "Remove icon") **Remove**
    button to delete it.
18. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.

### Defining Job Action: File Arrival Job Details

For conceptual information, refer to [UNIX Job Details](../../../job-types/unix.md) in the
**Concepts** online help.

To define job details:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
    Then, proceed to Step 2 below to define the platform-specific
    job information.
2. Select **File Arrival** in the **Job Action** drop-down list.
3. Select a **group id/user id** in the **Group Id / User Id**
    drop-down list.
4. Enter the *file path and name of the file to detect* in the **File
    Name** text box. UNIX wildcard characters are supported in the file
    name (e.g., /usr/local/abc\*.txt).
5. *(Optional)* Select the **Sub-directory Search**
    checkbox to search sub-directories under the file path specified.
6. Specify the time frame (*Start Time* and *End Time*) within which
    the file must arrive in the directory.
7. Specify the amount of time (*Duration*) the file size must remain
    stable until the file has finished arriving.
8. Specify the desired *failure criteria rules*. Click the ![Reset to     Default icon](../../../Resources/Images/EM/EMresettodefault.png "Reset to Default icon")
    **Reset to Default** icon next to the first row to reset all rows to
    default values. Click the ![Delete     icon](../../../Resources/Images/EM/EMdelete.png "Delete icon")
    **Delete** icon next to a row to delete.
9. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.

### Defining Job Action: Embedded Script Job Details

For conceptual information, refer to [UNIX Job Details](../../../job-types/unix.md) in the
**Concepts** online help.

To define job details:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
    Then, proceed to Step 2 below to define the platform-specific
    job information.
2. Select **Embedded Script** in the **Job Action** drop-down list.
3. Select the **Group Id / User Id** assigned to the job.
4. Select the **script** that you wish to associate with the job. The
    **Script Type** field will populate to show the type of script
    selected.
5. Select the **version of the script** that you want.
6. Select the **runner** that will be used to run the script. The **Run
    Command Template** field will populate to show the syntax for the
    runner.
7. Enter any *argument(s)* that you wish to pass to the script at
    runtime.
8. Specify the desired *failure criteria rules*. Click the ![Reset to     Default icon](../../../Resources/Images/EM/EMresettodefault.png "Reset to Default icon")
    **Reset to Default** icon next to the first row to reset all rows to
    default values. Click the ![Delete     icon](../../../Resources/Images/EM/EMdelete.png "Delete icon")
    **Delete** icon next to a row to delete.
9. Enter a *name* in the **Env Variable Name** field.
10. Enter a *value* in the **Env Variable Value** field.
11. Click the ![Add     icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add**
    button to define the parsing criteria. Once defined, you can select
    any row in the table and use the ![Update     icon](../../../Resources/Images/EM/EMresettodefault.png "Update icon") **Update**
    button to update or the ![Remove     icon](../../../Resources/Images/EM/EMremove.png "Remove icon") **Remove**
    button to delete it.
12. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.

### Defining Episys Job Details

For conceptual information, refer to [UNIX Job Sub-Types](../../../job-types/unix.md#UNIX)
in the **Concepts** online help.

To define job details:

1. Double-click on **Job Master** under the **Administration** topic.
    The **Job Master** screen displays.
2. Select the **Schedule** in the **Schedule** drop-down list.
3. Click ![Add     icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on
    the **Job Master** toolbar.
4. Enter a *job name* in the **Name** text box.
5. Select **UNIX** in the **Job Type** drop-down list.
6. Select **Episys:** in the **Job Sub-Type** drop-down list.
7. Complete [Steps 6-13 of the Adding Jobs](Adding-Jobs.md) section.
    Then, proceed to Step 8 below to define the platform-specific
    job information.
8. Select the **UNIX Group ID** and **User ID** assigned to the job.
9. Enter the *required information* in the remaining fields.
10. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.

## Defining Windows Job Details

### Defining Job Action: Run Program Job Details

For conceptual information, refer to [Windows Job Details](../../../job-types/windows.md) in
the **Concepts** online help.

To define job details:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
    Then, proceed to Step 2 below to define the platform-specific
    job information.
2. Select **Run Program** in the **Job Action** drop-down list.
3. Select a **user id** in the **User Id** drop-down list.
4. Select the *Job Priority* and/or whether to *Run in Command Shell*.
5. Enter the *Prerun information* and/or enter the *Command line
    details*.
6. Enter the remaining *field information*.
7. Select the *Operators* and enter *Exit Codes* in the **Basic** tab.
8. Select the **Search Operation** from the drop-down menu.
9. Enter the **String to Search**. Windows wildcard characters are
    supported in the string.
10. Enter the **Exit Code**.
11. Click the ![Add     icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add**
    button to define the parsing criteria. Once defined, you can select
    any row in the table and use the ![Update     icon](../../../Resources/Images/EM/EMresettodefault.png "Update icon") **Update**
    button to update or the ![Remove     icon](../../../Resources/Images/EM/EMremove.png "Remove icon") **Remove**
    button to delete it.
12. Enter the **Custom Application Log**. Windows wildcard characters
    are supported for specifying multiple logs.
13. Enter a *name* in the **Env Variable Name** field.
14. Enter a *value* in the **Env Variable Value** field.
15. Click the ![Add     icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add**
    button to define the parsing criteria. Once defined, you can select
    any row in the table and use the ![Update     icon](../../../Resources/Images/EM/EMresettodefault.png "Update icon") **Update**
    button to update or the ![Remove     icon](../../../Resources/Images/EM/EMremove.png "Remove icon") **Remove**
    button to delete it.
16. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.

### Defining Job Action: File Arrival Job Details

For conceptual information, refer to [Windows Job Details](../../../job-types/windows.md) in
the **Concepts** online help.

Follow the steps for the appropriate Microsoft LSAM version:

- [File Arrival for Microsoft LSAM versions 16.01.00 and     higher](#File)
- [File Arrival for Microsoft LSAM version 15.3 and versions leading     up to 16.01.00](#File2)

#### File Arrival for Microsoft LSAM versions 16.01.00 and higher

To define job details:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
    Then, proceed to Step 2 below to define the platform-specific
    job information.
2. Select **File Arrival** in the **Job Action** drop-down list.
3. Select a **user id** in the **User Id** drop-down list.
4. Enter the *file path and name of the file to detect* in the **File
    Name** text box. Windows wildcard characters are supported in the
    file name (e.g., C:\\Folder\\Filename?ABC\*.txt).
5. *(Optional)* Select the **Sub-directory Search**
    checkbox to search sub-directories under the file path specified.
6. Specify the time frame (*Start Time* and *End Time*) within which
    the file must arrive in the directory.
7. Specify the amount of time (*Duration*) the file size must remain
    stable until the file has finished arriving.
8. Specify the desired *failure criteria rules*. Click the ![Reset to     Default icon](../../../Resources/Images/EM/EMresettodefault.png "Reset to Default icon")
    **Reset to Default** icon next to the first row to reset all rows to
    default values. Click the ![Delete     icon](../../../Resources/Images/EM/EMdelete.png "Delete icon")
    **Delete** icon next to a row to delete.
9. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.

#### File Arrival for Microsoft LSAM version 15.3 and versions leading up to 16.01.00

To define job details:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
    Then, proceed to Step 2 below to define the platform-specific
    job information.

2. Select **File Arrival** in the **Job Action** drop-down list.

3. Enter the *file path and name of the file to detect* in the **File
    Name** text box. Windows wildcard characters are supported in the
    file name (e.g., C:\\Folder\\Filename?ABC\*.txt).

   :::note
   Standard Windows wildcard characters include the asterisk (\*) for zero or more characters, and the question mark (?) for a single character.
   :::

4. Specify the time frame (*Start Time* and *End Time*) within which
    the file must arrive in the directory.

5. Specify the amount of time (*Duration*) the file size must remain
    stable until the file has finished arriving.

6. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.

### Defining Job Action: Embedded Script Job Details

For conceptual information, refer to [Windows Job Details](../../../job-types/windows.md) in
the **Concepts** online help.

To define job details:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
    Then, proceed to Step 2 below to define the platform-specific
    job information.
2. Select **Embedded Script** in the **Job Action** drop-down list.
3. Select the **User ID** assigned to the job.
4. Select the **script** that you wish to associate with the job. The
    **Script Type** field will populate to show the type of script
    selected.
5. Select the **version of the script** that you want.
6. Select the **runner** that will be used to run the script. The **Run
    Command Template** field will populate to show the syntax for the
    runner.
7. Enter any *argument(s)* that you wish to pass to the script at
    runtime.
8. Enter the **Working Directory** for the job.
9. Specify the desired *failure criteria rules*. Click the ![Reset to     Default icon](../../../Resources/Images/EM/EMresettodefault.png "Reset to Default icon")
    **Reset to Default** icon next to the first row to reset all rows to
    default values. Click the ![Delete     icon](../../../Resources/Images/EM/EMdelete.png "Delete icon")
    **Delete** icon next to a row to delete.
10. Enter a *name* in the **Env Variable Name** field.
11. Enter a *value* in the **Env Variable Value** field.
12. Click the ![Add     icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add**
    button to define the parsing criteria. Once defined, you can select
    any row in the table and use the![Update     icon](../../../Resources/Images/EM/EMresettodefault.png "Update icon") **Update**
    button to update or the ![Remove     icon](../../../Resources/Images/EM/EMremove.png "Remove icon") **Remove**
    button to delete it.
13. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.

### Defining Command: File Copy Job Details

For conceptual information, refer to [Job Type Management](#Command:) in the **Concepts** online help.

To define job details:

1. Double-click on **Job Master** under the **Administration** topic.
    The **Job Master** screen displays.
2. Select the **Schedule** in the **Schedule** drop-down list.
3. Click ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon")
    **Add** on the **Job Master** toolbar.
4. Enter a *job name* in the **Name** text box.
5. Select **Windows** in the **Job Type** drop-down list.
6. Select **Command: File Copy** in the **Job Sub-Type** drop-down
    list.
7. Complete [Steps 6-13 of the Adding Jobs](Adding-Jobs.md) section.
    Then, proceed to Step 8 below to define the platform-specific
    job information.
8. Select the **User ID** assigned to the job.
9. Enter the *required information* in the remaining fields.
10. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.

### Defining Command: File Delete Job Details

For conceptual information, refer to [Job Type Management](#Command:2) in the **Concepts** online help.

To define job details:

1. Double-click on **Job Master** under the **Administration** topic.
    The **Job Master** screen displays.
2. Select the **Schedule** in the **Schedule** drop-down list.
3. Click ![Add     icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on
    the **Job Master** toolbar.
4. Enter a *job name* in the **Name** text box.
5. Select **Windows** in the **Job Type** drop-down list.
6. Select **Command: File Delete** in the **Job Sub-Type** drop-down
    list.
7. Complete [Steps 6-13 of the Adding Jobs](Adding-Jobs.md) section.
    Then, proceed to Step 8 below to define the platform-specific
    job information.
8. Select the **User ID** assigned to the job.
9. Enter the *required information* in the remaining fields.
10. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.

### Defining Command: File Move Job Details

For conceptual information, refer to [Command: File Move](../../../job-types/windows.md#Command:3)
 in the **Concepts** online help.

To define job details:

1. Double-click on **Job Master** under the **Administration** topic.
    The **Job Master** screen displays.
2. Select the **Schedule** in the **Schedule** drop-down list.
3. Click ![Add     icon](../../../Resources/Images/EM/EMadd.png "Add icon")**Add** on
    the **Job Master** toolbar.
4. Enter a *job name* in the **Name** text box.
5. Select **Windows** in the **Job Type** drop-down list.
6. Select **Command: File Move** in the **Job Sub-Type** drop-down
    list.
7. Complete [Steps 6-13 of the Adding Jobs](Adding-Jobs.md) section.
    Then, proceed to Step 8 below to define the platform-specific
    job information.
8. Select the **User ID** assigned to the job.
9. Enter the *required information* in the remaining fields.
10. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon")**Save**
    on the **Job Master** toolbar.

### Defining Command: File Rename Job Details

For conceptual information, refer to [Job Type Management](#Command:4) in the **Concepts** online help.

To define job details:

1. Double-click on **Job Master** under the **Administration** topic.
    The **Job Master** screen displays.
2. Select the **Schedule** in the **Schedule** drop-down list.
3. Click ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon")
    **Add** on the **Job Master** toolbar.
4. Enter a *job name* in the **Name** text box.
5. Select **Windows** in the **Job Type** drop-down list.
6. Select **Command: File Rename** in the **Job Sub-Type** drop-down
    list.
7. Complete [Steps 6-13 of the Adding Jobs](Adding-Jobs.md) section.
    Then, proceed to Step 8 below to define the platform-specific
    job information.
8. Select the **User ID** assigned to the job.
9. Enter the *required information* in the remaining fields.
10. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.

### Defining Corelation Job Details

For conceptual information, refer to [Job Type Management](#Corelati) in the **Concepts** online help.

To define job details:

1. Double-click on **Job Master** under the **Administration** topic.
    The **Job Master** screen displays.
2. Select the **Schedule** in the **Schedule** drop-down list.
3. Click ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon")
    **Add** on the **Job Master** toolbar.
4. Enter a *job name* in the **Name** text box.
5. Select **Windows** in the **Job Type** drop-down list.
6. Select **Corelation** in the **Job Sub-Type** drop-down list.
7. Complete [Steps 6-13 of the Adding Jobs](Adding-Jobs.md) section.
    Then, proceed to Step 8 below to define the platform-specific
    job information.
8. Select the **User ID** assigned to the job.
9. Enter the *required information* in the remaining fields.
10. *(Optional)* Select a parameter format type: Batch
    Options or Parameters.
11. Enter the *name/value* field information and click the![Add     icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add**
    button to define parameters. Once defined, you can select any
    parameter and use the![Update     icon](../../../Resources/Images/EM/EMresettodefault.png "Update icon")
    **Update** button to update or the ![Remove     icon](../../../Resources/Images/EM/EMremove.png "Remove icon")
    **Remove** button to delete it.
12. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.

### Defining Web Services (RESTful) Job Details

For conceptual information, refer to [Web Services (RESTful) Sub-Type](https://help.smatechnologies.com/opcon/connectors/webservices/latest/Files/Connectors/Web-Services-(RESTful)/Job-Definition.md#Web)
 in the **Web Services (RESTful) Connector** online help.

To define job details:

Double-click on **Job Master** under the **Administration** topic. The
**Job Master** screen displays.

Select the **Schedule** in the **Schedule** drop-down list.

Click ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon")
**Add** on the **Job Master** toolbar.

Enter a *job name* in the **Name** text box.

Select **Windows** in the **Job Type** drop-down list.

Select **Web Services (RESTful)** in the **Job Sub-Type** drop-down
list.

Complete [Steps 6-13 of the Adding Jobs](Adding-Jobs.md) section.
Then, proceed to Step 8 below to define the platform-specific job
information.

In the Web Services (RESTful) Definition frame:

:::note
For the fields supporting tokens, use the **Global Property Selector** by pressing the **Ctrl/t** keyboard shortcut to easily find and define tokens for global properties. You may also type a token manually.] [For more information on tokens, refer to [Tokens](../../../objects/using-properties.md#tokens) in the **Concepts** online help.
:::

Select the **User ID** assigned to the job.

Ensure that the **Job Details** tab is selected within the **Web
Services (RESTful) Definition** frame.

Enter the *Connector Location* (path where the Web Services (RESTful)
Connector software is installed on the target Windows system).

Enter the *URL* to call the RESTful web services based on the operation.

Select the type of **Operation** to perform: DELETE, GET, POST,
POST_POLL, or PUT.

a.  (If GET is selected): Enter all *required     information* under **Query Response (GET)**.
b.  (If POST or PUT is selected): Enter all *required     information* under **Message Body (POST/PUT)**.
c.  (If POST_POLL is selected): Enter all *required     information* under **Message Body (POST_POLL)**.

Enter a *user name* to authenticate with the web service if required;
otherwise, leave blank.

Enter the encrypted *password* associated with the defined user if
authentication is required; otherwise, leave blank. For more
information, refer to [Encrypting Passwords](Menus.md#Encrypti).

Click on the **SSL** tab.

Define the **SSL information**.

Click on the **Failure Criteria** tab.

*(Optional)* Enter the *Pattern Match Value* string for
the connector to search for within the returned data for a match).

Define the **Exit Codes** (select an operator and enter an integer).

Click ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon")
**Save** on the **Job Master** toolbar.

### Defining WS_FTP Pro Job Details

For conceptual information, refer to [Job Type Management](#WS_FTP) in the **Concepts** online help.

To define job details:

Double-click on **Job Master** under the **Administration** topic. The
**Job Master** screen displays.

Select the **Schedule** in the **Schedule** drop-down list.

Click ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon")
**Add** on the **Job Master** toolbar.

Enter a *job name* in the **Name** text box.

Select **Windows** in the **Job Type** drop-down list.

Select **WS_FTP Pro** in the **Job Sub-Type** drop-down list.

Complete [Steps 6-13 of the Adding Jobs](Adding-Jobs.md) section.
Then, proceed to Step 8 below to define the platform-specific job
information.

**In the WS_FTP Pro Definition frame:**

:::note
For the fields supporting tokens, use the **Global Property Selector** by pressing the **Ctrl/t** keyboard shortcut to easily find and define tokens for global properties. You may also type a token manually.] [For more information on tokens, refer to [Tokens](../../../objects/using-properties.md#tokens) in the **Concepts** online help.
:::

Select the **User ID** assigned to the job.

Enter the *required information* in the remaining fields.

*(Optional)* Enter more detailed failure criteria rules
in the **Advanced Failure Criteria** frame.

a.  Click the![Reset to Default     icon](../../../Resources/Images/EM/EMresettodefault.png "Reset to Default icon")
    **Reset to Default** button next to the first row to reset all rows
    to default values.
b.  Click the ![Remove     icon](../../../Resources/Images/EM/EMremove.png "Remove icon")
    **Delete** button next to the row to delete.

Click ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon")
**Save** on the **Job Master** toolbar.

## Defining z/OS Job Details

For conceptual information, refer to [z/OS Job Details](../../../job-types/zos.md) in the
**Concepts** online help.

To define job details:

Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
Then, proceed to Step 2 below to define the platform-specific job
information.

**In the z/OS Definition frame:**

Select a **z/OS Job Type**.

Enter the remaining *field information* under **Sysplex**.

Enter the remaining *field information* under **Failure criteria**.

**In Batch Details within the JCL tab:**

Enter the *JCL* information.

**In Batch Details within the Restart tab:**

Select the **Normal** and **Restart** information under **Duplicate
Dataset Action**.

Select the *GDG Regression* information.

Manage Items on the Step Control Tab

Click on the **Step Control** tab.

Add Steps by:

a.  Entering a **step name**.
b.  Selecting a **Step Action**.
c.  Entering a *trigger message*, if the **Step Action** choice is
    **Send Trigger Message To SAM** or **Set Restart Step**.
d.  Clicking the **Add** button.

Re-assign the Step order by:

a.  Right-clicking on the **Step** to re-assign.
b.  Clicking on the **Move Up** or **Move Down** arrow.

Edit Steps by:

a.  Clicking on the **Step**.
b.  Modifying the *field information*.
c.  Clicking the **Update** button.

Delete Steps by:

a.  Clicking on the **Step**.
b.  Clicking the **Remove** button. A **Delete Item** dialog displays.
c.  Clicking the **OK** button.

Manage Items on the File Tab

Click on the **File** tab.

Add file resources by:

a.  Entering a *DSN name* in the **Dataset** text box.
b.  Entering or selecting a **value** in the **Generations** text box.
c.  Selecting a **Condition**.
d.  Selecting a **When** condition.
e.  *(Optional)* Entering a **job name**.
f.  Clicking the **Add** button.

Re-assign the file resource order by:

a.  Right-clicking on the DSN to re-assign.
b.  Clicking on the **Move** **Up** or **Move Down** arrow.

Edit file resources by:

a.  Clicking on the DSN.
b.  Modifying the **field information**.
c.  Clicking the **Update** button.

Delete file resources by:

a.  Clicking on the DSN.
b.  Clicking the **Remove** button. A **Delete Item** dialog displays.
c.  Clicking the **OK** button.

Manage Items on the Message Tab

Click on the **Message** tab.

Add message triggers by:

a.  Entering a *key* in the **Key** text box.
b.  Entering a *value* in the **Generations** text box.
c.  Selecting a **When** condition.
d.  *(Optional)* Entering a *job name*.
e.  *(Optional)* Entering a *value* in the **Offset**
    text box .
f.  *(Optional)* Entering a *length*.
g.  Clicking the **Add** button.

Re-assign the message order by:

a.  Right-clicking on the key.
b.  Clicking on the **Move Up** or **Move Down** arrow.

Edit messages by:

a.  Selecting the key in the defined **Message** table.
b.  Modifying the *field information*.
c.  Clicking the **Update** button.

Delete messages by:

a.  Selecting the key in the defined **Message** table.
b.  Clicking the **Remove** button. A **Delete Item** dialog displays.
c.  Clicking the **OK** button.

Manage Items on the Job/Task Tab

Click on the **Job/Task** tab.

Add job/task resources by:

a.  Entering a *job/task name* in the **Job/Task** text box .
b.  Selecting an **option** in the **Job/Task Must Be** drop-down list.
c.  Clicking the **Add** button.

Re-assign the job/task order by:

a.  Right-clicking on the job/task to re-assign.
b.  Clicking on the **Move Up** or **Move Down** arrow.

Edit job/task resources by:

a.  Selecting the job/task in the defined **Job Task** table.
b.  Modifying the *field information*.
c.  Clicking the **Update** button.

Delete job/task resources by:

a.  Selecting the job/task in the defined **Job Task** table.
b.  Clicking the **Remove** button. A **Delete Item** dialog displays.
c.  Clicking the **OK** button.

Manage Items on the remaining Tabs

Click on the **Tape Devices** tab.

Enter the *field information*.

Click on the **REXX** tab.

Enter the *field information*.

Click ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon")
**Save** on the **Job Master** toolbar.

Verify and Manage JCL

The **JCL/SYSOUT Access** button provides access to a tool for verifying
and maintaining the JCL.

Set the JCL selection for a job by:

**In the JCL/SYSOUT Access frame within z/OS Definition:**

a.  Clicking on the **JCL/SYSOUT Access** button. The **JCL/Sysout
    Access** dialog displays.
b.  Entering the **Member Name**.
c.  Entering the **View JCL DD Name**.
d.  Entering the **Save JCL DD Name**.
e.  Clicking the **Save JCL** button.
f.  Closing the **JCL/Sysout Access** dialog.

Verify the JCL selection for a job by:

**In Batch Details under the JCL tab:**

Verifying or entering a *Member Name*. If the member name is the same as
the first word of the job name, you can leave this field blank.

Verifying or entering the *DDNAME*.

Saving the job definition if any changes were made (Ctrl+S).

**In the JCL/SYSOUT Access frame within z/OS Definition:**

Clicking the **JCL/Sysout Access** button. The **JCL/Sysout Access**
dialog displays.

Clicking the **View JCL** button.

i.  If the results are correct, close the editor and **JCL/Sysout
    Access** dialog.
ii. If the results are not correct, close the editor and review the
    **DNAME** and **Member Name**.

Edit the production JCL by:

**In the JCL/SYSOUT Access frame within z/OS Definition:**

a.  Clicking the **JCL/Sysout Access** button. The **JCL/Sysout Access**
    dialog displays.
b.  Clicking the **View JCL** button.
c.  Editing the JCL. If you use an external editor, be sure to save the
    results before closing and confirm that you want to load the
    results.
d.  Clicking the **OK** button.
e.  Modifying the **Save JCL DD Name** to match the production library.
f.  Clicking the **Save JCL** button.
g.  Closing the **JCL/Sysout Access** dialog.

Edit the JCL for a single job instance by:

**In the JCL/SYSOUT Access frame within z/OS Definition:**

a.  Clicking the **JCL/Sysout Access** button. The **JCL/Sysout Access**
    dialog displays.
b.  Clicking the **View JCL** button.
c.  Editing the JCL. If you use an external editor, be sure to save the
    results before closing and confirm that you want to load the
    results.
d.  Clicking the **OK** button.
e.  Making sure the **Save JCL DD Name** starts with "TEMP". If it
    does not, change it to a "TEMP\..." **DD Name** that is configured
    on the z/OS Agent.
f.  Clicking the **Save JCL** button.
g.  Closing the **JCL/Sysout Access** dialog.
h.  Entering the new value in the **Override DDNAME** text box if you
    changed the **Save JCL DD Name** in Step e.
i.  Making sure the **Temporary Member** text box is blank.

Edit the submitted JCL directly for restarts by:

**In the JCL/SYSOUT Access frame within z/OS Definition:**

a.  Clicking the **JCL/Sysout Access** button. The **JCL/Sysout Access**
    dialog displays.
b.  Entering "0" in the **Outlimit** text box.
c.  Clicking the **View Sysout** button.
d.  *(Optional)* Editing the JCL.
e.  Clicking the **Copy to clipboard** button.
f.  Closing the editor.
g.  Clicking the **View JCL** button.
h.  Selecting and deleting the existing contents.
i.  Pasting the contents of the clipboard into the editor.
j.  Clicking the **OK** button.
k.  Clicking the **Save JCL** button.
l.  Closing the **JCL/Sysout Access** dialog.
