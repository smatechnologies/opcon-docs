---
title: Job Type Management
description: Step-by-step procedures for defining job details for each supported job type in Enterprise Manager Job Master.
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

# Job Type Management

Use the following links to go to the procedure for each supported job type.

- [Defining BIS Job Details](#defining-bis-job-details)
- [Defining Container Job Details](#defining-container-job-details)
- [Defining File Transfer Job Details](#defining-file-transfer-job-details)
- [Defining IBM i Job Details](#defining-ibm-i-job-details)
- [Defining Java Job Details](#defining-java-job-details)
- [Defining MCP Job Details](#defining-mcp-job-details)
- [Defining OpenVMS Job Details](#defining-openvms-job-details)
- [Defining OS 2200 Job Details](#defining-os-2200-job-details)
- [Defining SAP BW Job Details](#defining-sap-bw-job-details)
- [Defining SAP R/3 and CRM Job Details](#defining-sap-r3-and-crm-job-details)
- [Defining SQL Job Details](#defining-sql-job-details)
  - [Defining Job Action: MS SQL DTExec Job Details](#defining-job-action-ms-sql-dtexec-job-details)
  - [Defining Job Action: MS SQL Job Details](#defining-job-action-ms-sql-job-details)
  - [Defining Job Action: MS SQL Script Job Details](#defining-job-action-ms-sql-script-job-details)
  - [Defining Job Action: MySQL Job Details](#defining-job-action-mysql-job-details)
  - [Defining Job Action: Oracle Job Details](#defining-job-action-oracle-job-details)
  - [Defining Job Action: Other DB Job Details](#defining-job-action-other-db-job-details)
- [Defining Tuxedo ART Job Details](#defining-tuxedo-art-job-details)
- [Defining UNIX Job Details](#defining-unix-job-details)
  - [Defining Job Action: Run Program Job Details](#defining-job-action-run-program-job-details-unix)
  - [Defining Job Action: File Arrival Job Details](#defining-job-action-file-arrival-job-details-unix)
  - [Defining Job Action: Embedded Script Job Details](#defining-job-action-embedded-script-job-details-unix)
  - [Defining Episys Job Details](#defining-episys-job-details)
- [Defining Windows Job Details](#defining-windows-job-details)
  - [Defining Job Action: Run Program Job Details](#defining-job-action-run-program-job-details-windows)
  - [Defining Job Action: File Arrival Job Details](#defining-job-action-file-arrival-job-details-windows)
  - [Defining Job Action: Embedded Script Job Details](#defining-job-action-embedded-script-job-details-windows)
  - [Defining Command: File Copy Job Details](#defining-command-file-copy-job-details)
  - [Defining Command: File Delete Job Details](#defining-command-file-delete-job-details)
  - [Defining Command: File Move Job Details](#defining-command-file-move-job-details)
  - [Defining Command: File Rename Job Details](#defining-command-file-rename-job-details)
  - [Defining Corelation Job Details](#defining-corelation-job-details)
  - [Defining Web Services (RESTful) Job Details](#defining-web-services-restful-job-details)
  - [Defining WS_FTP Pro Job Details](#defining-ws_ftp-pro-job-details)
- [Defining z/OS Job Details](#defining-zos-job-details)

## Defining BIS Job Details

For conceptual information, refer to [BIS Job Details](../../../job-types/bis.md) in the **Concepts** online help.

To define BIS job details, complete the following steps:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
2. Enter the required field information.
3. Select the **Data Dependencies** tab and enter the required field information.
4. Select the **File Dependencies** tab and enter the required field information.
5. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

## Defining Container Job Details

For conceptual information, refer to [Container Job Type](../../../job-types/container.md) in the **Concepts** online help.

To define Container job details, complete the following steps:

1. Select **Job Master** under the **Administration** topic.
2. Select the **Schedule** in the **Schedule** list.
3. Select ![](../../../Resources/Images/EM/EMadd.png) **Add** on the **Job Master** toolbar.
4. Enter a job name in the **Name** field.
5. Select **Container** in the **Job Type** list.
6. Select a **Schedule to run as Sub-Schedule**.
7. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

## Defining File Transfer Job Details

For conceptual information, refer to [File Transfer Job Details](../../../job-types/file-transfer.md) in the **Concepts** online help.

To define File Transfer job details, complete the following steps:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
2. Ensure the **File Information** tab is selected within the **File Transfer Definition** frame.

:::note
For fields supporting tokens, use the **Global Property Selector** by pressing **Ctrl/t** to find and define tokens for global properties. You may also type a token manually. For more on tokens, refer to [Tokens](../../../objects/using-properties.md#tokens) in the **Concepts** online help.
:::

3. In the **Source Machine** list, select the machine containing the file to transfer.
4. In the **User** list, select the User ID with privileges to run the file transfer.
5. In the **Source File** field, type the path and file name (e.g., `C:\Output\Test.txt`).
6. In the **Destination Machine** list, select the machine that will receive the file.
7. In the **User** list, select the User ID with privileges to run the file transfer.
8. In the **Destination File** field, define the path and file name for the destination file:
   - To inherit the source file name, type only the destination path (e.g., `C:\Transferred Files\`).
   - To use a specific name, type the full path and file name (e.g., `C:\Transferred Files\Test.txt`).
9. Select the **Option** tab and configure the following fields:
   - **Source Data Type**
   - **Maximum Transfer Rate (kbits/s)**
   - **Destination Data Type**
   - **Compression**
   - **If File Exists**
   - **Encryption**
   - **Delete Source File**
   - **Start Transfer On**
   - **TLS Security Override**
   - *(Optional)* **Fails if preferred settings not satisfied**
10. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

## Defining IBM i Job Details

For conceptual information, refer to [IBM i Job Details](../../../job-types/ibm-i.md) in the **Concepts** online help.

To define IBM i job details, complete the following steps:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
2. Ensure the **Job Information** tab is selected in the **IBM i Definition** frame.
3. Select a **Job Type** and a user in the **User ID** list.
4. In the **Job Description** frame, select values for **Name** and **Library**.
5. In the **Library** frame, select values for **Current** and **Init Lib List**.
6. In the **Job Queue** frame, select values for **Name** and **Library**.
7. Enter the required field information in the **Call Information** or **File Arrival Information** frame, if required.
8. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

### Managing Items in the Additional Info Tab

To manage IBM i additional info settings, complete the following steps:

1. Select the **Additional Info** tab.
2. Select values for **JobQ Priority**, **Job Date**, and **Inquiry Message Replay**.
3. *(Optional)* Enter an **Accounting Code**.
4. Select a value for **Log CL Commands**.
5. In the **Output Queue** frame, select values for **Name** and **Library**.
6. In the **Message Logging** frame, select values for **Level**, **Severity**, and **Text**.
7. In the **Job Log Retention** frame, *(optional)* enter values for **Number of Occurrences** and **Number of Days**.
8. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

### Managing Items in the Messages Tab

To manage IBM i message settings, complete the following steps:

1. Select the **Messages** tab.
2. To add a message: enter the required field information, then select **Add**.
3. To edit a message: select the message in the table, modify the fields, then select **Update**.
4. To delete a message: select the message in the table, then select **Remove**.
5. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

### Managing Items in the Spool Files Tab

To manage IBM i spool file settings, complete the following steps:

1. Select the **Spool Files** tab.
2. To add a spool file: enter the required field information, then select **Add**.
3. To edit a spool file: select the spool file in the table, modify the fields, then select **Update**.
4. To delete a spool file: select the spool file in the table, then select **Remove**.
5. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

### Managing Items in the Variables Tab

To manage IBM i variable settings, complete the following steps:

1. Select the **Variables** tab.
2. To add a variable: enter the required field information, then select **Add**.
3. To edit a variable: select the variable in the table, modify the fields, then select **Update**.
4. To delete a variable: select the variable in the table, then select **Remove**.
5. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

## Defining Java Job Details

For conceptual information, refer to [Java Job Details](../../../job-types/java.md) in the **Concepts** online help.

To define Java job details, complete the following steps:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
2. In the **Java Definition** frame, select the **Operation** (Class, Command, or JAR) and enter the required field information.

### Managing Items in the Parameters Tab

To manage Java parameter settings, complete the following steps:

1. To add a parameter: enter the name/value field information, then select **Add**.
2. To edit a parameter: select the row in the table, modify the **name/value** fields, then select **Update**.
3. To delete a parameter: select the row in the table, then select **Remove**.

### Managing Items in the JVM Arguments Tab

To manage Java JVM argument settings, complete the following steps:

1. To add an argument: enter the name/value field information, then select **Add**.
2. To edit an argument: select the row in the table, modify the **name/value** fields, then select **Update**.
3. To delete an argument: select the row in the table, then select **Remove**.

:::note
A special argument definition, `JAVA_JVM_ARGS`, can be used to point to a global property that contains a list of arguments defined in arg=value pairs separated by a comma (e.g., `JAVA_JVM_ARGS=[[GLOBAL_PROPERTY]]`, where `[[GLOBAL_PROPERTY]]=[[arg1=value1,arg2=value2]]`).
:::

### Managing Items in the Environment Variables Tab

To manage Java environment variable settings, complete the following steps:

1. To add a variable: enter the name/value field information, then select **Add**.
2. To edit a variable: select the row in the table, modify the **name/value** fields, then select **Update**.
3. To delete a variable: select the row in the table, then select **Remove**.

:::note
A special argument definition, `JAVA_ENV_VARS`, can be used to point to a global property that contains a list of environment variables defined in env=value pairs separated by a comma (e.g., `JAVA_ENV_VARS=[[GLOBAL_PROPERTY]]`, where `[[GLOBAL_PROPERTY]]=[[name1=value1,name2=value2]]`).
:::

4. In the **Failure Criteria** frame, select the **Operators** and enter the exit codes.
5. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

## Defining MCP Job Details

For conceptual information, refer to [MCP Job Details](../../../job-types/mcp.md) in the **Concepts** online help.

To define MCP job details, complete the following steps:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
2. Ensure the **Job Information** tab is selected within the **MCP Definition** frame.
3. Enter a User Code and *(optional)* an Access Code.
4. Select the **MCP Job Type** and enter the required field information.
5. Select the **Pre-Run Information** tab, enter the MCP Pre-Run Type and required field information.
6. Select the **Failure Criteria** tab and enter the required field information.
7. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

## Defining OpenVMS Job Details

## Defining OS 2200 Job Details

For conceptual information, refer to [OS 2200 Job Details](../../../job-types/os-2200.md) in the **Concepts** online help.

To define OS 2200 job details, complete the following steps:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
2. Ensure the **Job Information** tab is selected within the **OS 2200 Definition** frame and enter the required field information.
3. Select the **Tokens** tab and enter the required field information.
4. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

## Defining SAP BW Job Details

For conceptual information, refer to [SAP BW Job Details](../../../job-types/sap-bw.md) in the **Concepts** online help.

To define SAP BW job details, complete the following steps:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
2. Select the **SAP Search** button. The **SAP Query** dialog opens.
3. Enter the process chain name (wildcards (`*`) are supported).
4. *(Optional)* Enter the description (wildcards (`*`) are supported).
5. Select the **Query SAP** search button.
6. Select the **Process Chain** from the results table and select **OK**. This assigns the SAP BW Process Chain to the job.
7. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

## Defining SAP R/3 and CRM Job Details

For conceptual information, refer to [SAP R/3 and CRM Job Details](../../../job-types/sap.md) in the **Concepts** online help.

To define SAP R/3 and CRM job details, complete the following steps:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.

:::note
To define an OpCon job for an SAP R/3 and CRM Tracked or Queued job, do not define any SAP-specific details and select ![Save](../../../Resources/Images/EM/EMsave.png) **Save** on the **Job Master** toolbar.
:::

### Assigning an Existing SAP Job

To assign an existing SAP job, complete the following steps:

1. Select the **SAP Search** button.
2. Enter a Job Name (wildcards (`*`) are supported) and select **Query SAP**.
3. Select the job from the results table and select **OK**.

### Creating a New SAP Job

To create a new SAP job, complete the following steps:

1. Select the **New** button. The **Create new SAP Job** dialog opens.
2. Log in to SAP, then enter a **Job Name**, **Job Class**, and **Spool Recipient**.
3. Select **Add** to add SAP Step(s). The **Add SAP Step** wizard opens. Follow the wizard to specify all required information. Repeat to add additional steps.
4. To re-assign the SAP Step order: select the step, then select the **Up** or **Down** arrows.
5. To remove an SAP Step: select the step, then select **Remove**.
6. Enter the required field information in the **Step Details** frame and select **Save**.

### Editing the SAP Job Definition

To edit the SAP job definition, complete the following steps:

1. Select **Edit**, then select the parameter to modify.
2. Modify the information and select **Save**.

### Defining Additional SAP Job Information

To define additional SAP job information, complete the following steps:

1. In the **Start SAP Job** frame, select **A.S.A.P.** or **Immediately**.
2. *(Optional)* In the **Exec. Target** frame, select **Specify an Exec. Target**, select **SAP Search**, then *(optional)* select **Query SAP**. Select an **Application Server** and select **OK**.
3. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

## Defining SQL Job Details

### Defining Job Action: MS SQL DTExec Job Details

For conceptual information, refer to [SQL Job Details](../../../job-types/sql.md) in the **Concepts** online help.

To define MS SQL DTExec job details, complete the following steps:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
2. Select **MS SQL DTExec** in the **Job Action** list.
3. Select a connection type: **SQL** or **FILE**, and enter all required information.
4. Enter the **Package File Path**.
5. *(Optional)* Enter **Other Options**.
6. Enter the failure criteria rules. Select the ![Reset to Default icon](../../../Resources/Images/EM/EMresettodefault.png "Reset to Default icon") **Reset to Default** button to reset all rows, or the ![Delete icon](../../../Resources/Images/EM/EMdelete.png "Delete icon") **Delete** button to remove a row.
7. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

### Defining Job Action: MS SQL Job Details

For conceptual information, refer to [SQL Job Details](../../../job-types/sql.md) in the **Concepts** online help.

To define MS SQL job details, complete the following steps:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
2. Select **MS SQL Job** in the **Job Action** list.
3. Enter the **Server Name\Instance**.
4. *(Optional)* Select **Windows Authentication**.
5. Select the user in the **User Id** list.
6. *(Optional)* Select **Encrypt**.
7. Enter the number for **Retry Attempts** and the **Job Name**.
8. *(Optional)* Select **Monitor Only** and enter the number of days and time for the **Monitoring End Time**.
9. *(Optional)* Enter **Other Options**.
10. Enter the failure criteria rules. Select the ![Reset to Default icon](../../../Resources/Images/EM/EMresettodefault.png "Reset to Default icon") **Reset to Default** button to reset all rows, or the ![Delete icon](../../../Resources/Images/EM/EMdelete.png "Delete icon") **Delete** button to remove a row.
11. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

### Defining Job Action: MS SQL Script Job Details

For conceptual information, refer to [SQL Job Details](../../../job-types/sql.md) in the **Concepts** online help.

To define MS SQL Script job details, complete the following steps:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
2. Select **MS SQL Script** in the **Job Action** list.
3. Enter the **Server Name\Instance** and **Database Name**.
4. *(Optional)* Select **Windows Authentication**.
5. Select the user in the **User Id** list.
6. *(Optional)* Select **Encrypt**.
7. Select the script type: **Script File** or **In Line Script**, and enter all required information.
8. To add a variable: enter the name/value field information, then select **Add**.
9. To edit a variable: select the row in the table, modify the **name/value** fields, then select **Update**.
10. To delete a variable: select the row in the table, then select **Remove**.
11. *(Optional)* Select **Use Exit Code From Script Result**.
12. *(Optional)* Enter the **File Path** and **Other Options**.
13. Enter the failure criteria rules. Select the ![Reset to Default icon](../../../Resources/Images/EM/EMresettodefault.png "Reset to Default icon") **Reset to Default** button to reset all rows, or the ![Delete icon](../../../Resources/Images/EM/EMdelete.png "Delete icon") **Delete** button to remove a row.
14. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

### Defining Job Action: MySQL Job Details

For conceptual information, refer to [SQL Job Details](../../../job-types/sql.md) in the **Concepts** online help.

To define MySQL job details, complete the following steps:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
2. Select **MySQL** in the **Job Action** list.
3. Enter the **Server Name**, **Database Name**, and **Port** number.
4. Select the user in the **User Id** list.
5. Enter the **Script File Path**.
6. To add a variable: enter the name/value field information, then select **Add**.
7. To edit a variable: select the row in the table, modify the **name/value** fields, then select **Update**.
8. To delete a variable: select the row in the table, then select **Remove**.
9. *(Optional)* Enter the **File Path** and **Other Options**.
10. Enter the failure criteria rules. Select the ![Reset to Default icon](../../../Resources/Images/EM/EMresettodefault.png "Reset to Default icon") **Reset to Default** button to reset all rows, or the ![Delete icon](../../../Resources/Images/EM/EMdelete.png "Delete icon") **Delete** button to remove a row.
11. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

### Defining Job Action: Oracle Job Details

For conceptual information, refer to [SQL Job Details](../../../job-types/sql.md) in the **Concepts** online help.

To define Oracle job details, complete the following steps:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
2. Select **Oracle** in the **Job Action** list.
3. Enter the **Server Name**, **Database Name**, and **Connection Id**.
4. Select the user in the **User Id** list.
5. Enter the **Script File Path**.
6. *(Optional)* Enter **Parameters (positional)**, **File Path**, and **Other Options**.
7. Enter the failure criteria rules. Select the ![Reset to Default icon](../../../Resources/Images/EM/EMresettodefault.png "Reset to Default icon") **Reset to Default** button to reset all rows, or the ![Delete icon](../../../Resources/Images/EM/EMdelete.png "Delete icon") **Delete** button to remove a row.
8. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

### Defining Job Action: Other DB Job Details

For conceptual information, refer to [SQL Job Details](../../../job-types/sql.md) in the **Concepts** online help.

To define Other DB job details, complete the following steps:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
2. Select **Other DB** in the **Job Action** list.
3. Select the database connection type: **ODBC Connection String**, **OleDB Connection String**, or **DSN Name**, and enter all required information.
4. *(Optional)* Select **Windows Authentication**.
5. Select the user in the **User Id** list.
6. Select the script type: **Script File** or **In Line Script**, and enter all required information.
7. To add a variable: enter the name/value field information, then select **Add**.
8. To edit a variable: select the row in the table, modify the **name/value** fields, then select **Update**.
9. To delete a variable: select the row in the table, then select **Remove**.
10. *(Optional)* Enter the **File Path** and **Other Options**.
11. Enter the failure criteria rules. Select the ![Reset to Default icon](../../../Resources/Images/EM/EMresettodefault.png "Reset to Default icon") **Reset to Default** button to reset all rows, or the ![Delete icon](../../../Resources/Images/EM/EMdelete.png "Delete icon") **Delete** button to remove a row.
12. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

## Defining Tuxedo ART Job Details

For conceptual information, refer to [Tuxedo ART Job Details](../../../job-types/tuxedo-art.md) in the **Concepts** online help.

To define Tuxedo ART job details, complete the following steps:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
2. In the **Tuxedo ART Definition** frame, enter the Script, Owner, JESRoot Directory, and Tuxedo Environment.

### Managing Items in the Parameters Tab

To manage Tuxedo ART parameter settings, complete the following steps:

1. To add a parameter: enter the name/value field information, then select **Add**.
2. To edit a parameter: select the row in the table, modify the **name/value** fields, then select **Update**.
3. To delete a parameter: select the row in the table, then select **Remove**.

### Managing Items in the Step Control Tab

To manage Tuxedo ART step control settings, complete the following steps:

1. To add a step: enter the step name, min CC, max CC, step action, and trigger message field information, then select **Add**.
2. To edit a step: select the row in the table, modify the fields, then select **Update**.
3. To delete a step: select the row in the table, then select **Remove**.

### Managing Items in the Failure Criteria Tab

To manage Tuxedo ART failure criteria settings, complete the following steps:

1. Enter the required field information.
2. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

## Defining UNIX Job Details

### Defining Job Action: Run Program Job Details {#defining-job-action-run-program-job-details-unix}

For conceptual information, refer to [UNIX Job Details](../../../job-types/unix.md) in the **Concepts** online help.

To define UNIX Run Program job details, complete the following steps:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
2. Select **Run Program** in the **Job Action** list.
3. Select the **UNIX Group ID** and **User Id** assigned to the job.
4. Enter the **NICE Value**, Prerun information, and **Parameters**.
5. Select the Operators and enter Exit Codes in the **Basic** tab.
6. *(Optional)* In the **Core Dump** frame, deselect **Fails on core dump** to not return a failed exit code on a core dump.
7. *(Optional)* In the **Signals** frame, select the Operators and enter the Signals.
8. Select the **Search Operation**, enter the **String to Search** (wildcards supported), and enter the **Exit Code**.
9. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** to define the parsing criteria. Select any row to use **Update** or **Remove**.
10. Enter the **Custom Application Log** (wildcards supported for multiple logs).
11. Enter a name in the **Env Variable Name** field and a value in the **Env Variable Value** field.
12. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** to define the environment variable. Select any row to use **Update** or **Remove**.
13. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

### Defining Job Action: File Arrival Job Details {#defining-job-action-file-arrival-job-details-unix}

For conceptual information, refer to [UNIX Job Details](../../../job-types/unix.md) in the **Concepts** online help.

To define UNIX File Arrival job details, complete the following steps:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
2. Select **File Arrival** in the **Job Action** list.
3. Select a group id/user id in the **Group Id / User Id** list.
4. In the **File Name** field, enter the file path and name. UNIX wildcard characters are supported (e.g., `/usr/local/abc*.txt`).
5. *(Optional)* Select **Sub-directory Search** to search sub-directories.
6. Specify the Start Time and End Time within which the file must arrive.
7. Specify the Duration the file size must remain stable.
8. Specify the failure criteria rules. Select the ![Reset to Default icon](../../../Resources/Images/EM/EMresettodefault.png "Reset to Default icon") **Reset to Default** button to reset all rows, or the ![Delete icon](../../../Resources/Images/EM/EMdelete.png "Delete icon") **Delete** button to remove a row.
9. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

### Defining Job Action: Embedded Script Job Details {#defining-job-action-embedded-script-job-details-unix}

For conceptual information, refer to [UNIX Job Details](../../../job-types/unix.md) in the **Concepts** online help.

To define UNIX Embedded Script job details, complete the following steps:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
2. Select **Embedded Script** in the **Job Action** list.
3. Select the **Group Id / User Id** assigned to the job.
4. Select the script to associate with the job. The **Script Type** field populates automatically.
5. Select the version of the script and the runner. The **Run Command Template** field populates automatically.
6. Enter any argument(s) to pass to the script at runtime.
7. Specify the failure criteria rules. Select the ![Reset to Default icon](../../../Resources/Images/EM/EMresettodefault.png "Reset to Default icon") **Reset to Default** button to reset all rows, or the ![Delete icon](../../../Resources/Images/EM/EMdelete.png "Delete icon") **Delete** button to remove a row.
8. Enter a name in the **Env Variable Name** field and a value in the **Env Variable Value** field.
9. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** to define the environment variable. Select any row to use **Update** or **Remove**.
10. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

### Defining Episys Job Details

For conceptual information, refer to [UNIX Job Sub-Types](../../../job-types/unix.md#UNIX) in the **Concepts** online help.

To define Episys job details, complete the following steps:

1. Select **Job Master** under the **Administration** topic.
2. Select the **Schedule** in the **Schedule** list.
3. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the **Job Master** toolbar.
4. Enter a job name in the **Name** field.
5. Select **UNIX** in the **Job Type** list.
6. Select the appropriate Episys sub-type in the **Job Sub-Type** list.
7. Complete [Steps 6-13 of the Adding Jobs](Adding-Jobs.md) section.
8. Select the **UNIX Group ID** and **User ID** assigned to the job.
9. Enter the required information in the remaining fields.
10. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

## Defining Windows Job Details

### Defining Job Action: Run Program Job Details {#defining-job-action-run-program-job-details-windows}

For conceptual information, refer to [Windows Job Details](../../../job-types/windows.md) in the **Concepts** online help.

To define Windows Run Program job details, complete the following steps:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
2. Select **Run Program** in the **Job Action** list.
3. Select a user id in the **User Id** list.
4. Select the Job Priority and/or whether to Run in Command Shell.
5. Enter the Prerun information and/or Command line details, then enter the remaining field information.
6. Select the Operators and enter Exit Codes in the **Basic** tab.
7. Select the **Search Operation**, enter the **String to Search** (wildcards supported), and enter the **Exit Code**.
8. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** to define the parsing criteria. Select any row to use **Update** or **Remove**.
9. Enter the **Custom Application Log** (wildcards supported for multiple logs).
10. Enter a name in the **Env Variable Name** field and a value in the **Env Variable Value** field.
11. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** to define the environment variable. Select any row to use **Update** or **Remove**.
12. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

### Defining Job Action: File Arrival Job Details {#defining-job-action-file-arrival-job-details-windows}

For conceptual information, refer to [Windows Job Details](../../../job-types/windows.md) in the **Concepts** online help.

Follow the steps for the appropriate Microsoft Agent version:

- [File Arrival for Microsoft Agent versions 16.01.00 and higher](#file-arrival-for-microsoft-agent-versions-160100-and-higher)
- [File Arrival for Microsoft Agent version 15.3 and versions leading up to 16.01.00](#file-arrival-for-microsoft-agent-version-153-and-versions-leading-up-to-160100)

#### File Arrival for Microsoft Agent versions 16.01.00 and higher

To define Windows File Arrival job details for Agent versions 16.01.00 and higher, complete the following steps:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
2. Select **File Arrival** in the **Job Action** list.
3. Select a user id in the **User Id** list.
4. In the **File Name** field, enter the file path and name. Windows wildcard characters are supported (e.g., `C:\Folder\Filename?ABC*.txt`).
5. *(Optional)* Select **Sub-directory Search** to search sub-directories.
6. Specify the Start Time and End Time within which the file must arrive.
7. Specify the Duration the file size must remain stable.
8. Specify the failure criteria rules. Select the ![Reset to Default icon](../../../Resources/Images/EM/EMresettodefault.png "Reset to Default icon") **Reset to Default** button to reset all rows, or the ![Delete icon](../../../Resources/Images/EM/EMdelete.png "Delete icon") **Delete** button to remove a row.
9. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

#### File Arrival for Microsoft Agent version 15.3 and versions leading up to 16.01.00

To define Windows File Arrival job details for Agent version 15.3 up to 16.01.00, complete the following steps:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
2. Select **File Arrival** in the **Job Action** list.
3. In the **File Name** field, enter the file path and name. Windows wildcard characters are supported (e.g., `C:\Folder\Filename?ABC*.txt`).

   :::note
   Standard Windows wildcard characters include the asterisk (`*`) for zero or more characters, and the question mark (`?`) for a single character.
   :::

4. Specify the Start Time and End Time within which the file must arrive.
5. Specify the Duration the file size must remain stable.
6. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

### Defining Job Action: Embedded Script Job Details {#defining-job-action-embedded-script-job-details-windows}

For conceptual information, refer to [Windows Job Details](../../../job-types/windows.md) in the **Concepts** online help.

To define Windows Embedded Script job details, complete the following steps:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
2. Select **Embedded Script** in the **Job Action** list.
3. Select the **User ID** assigned to the job.
4. Select the script to associate with the job. The **Script Type** field populates automatically.
5. Select the version of the script and the runner. The **Run Command Template** field populates automatically.
6. Enter any argument(s) to pass to the script at runtime.
7. Enter the **Working Directory** for the job.
8. Specify the failure criteria rules. Select the ![Reset to Default icon](../../../Resources/Images/EM/EMresettodefault.png "Reset to Default icon") **Reset to Default** button to reset all rows, or the ![Delete icon](../../../Resources/Images/EM/EMdelete.png "Delete icon") **Delete** button to remove a row.
9. Enter a name in the **Env Variable Name** field and a value in the **Env Variable Value** field.
10. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** to define the environment variable. Select any row to use **Update** or **Remove**.
11. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

### Defining Command: File Copy Job Details

For conceptual information, refer to [Windows Job Details](../../../job-types/windows.md) in the **Concepts** online help.

To define Command: File Copy job details, complete the following steps:

1. Select **Job Master** under the **Administration** topic.
2. Select the **Schedule** in the **Schedule** list.
3. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the **Job Master** toolbar.
4. Enter a job name in the **Name** field.
5. Select **Windows** in the **Job Type** list.
6. Select **Command: File Copy** in the **Job Sub-Type** list.
7. Complete [Steps 6-13 of the Adding Jobs](Adding-Jobs.md) section.
8. Select the **User ID** assigned to the job.
9. Enter the required information in the remaining fields.
10. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

### Defining Command: File Delete Job Details

For conceptual information, refer to [Windows Job Details](../../../job-types/windows.md) in the **Concepts** online help.

To define Command: File Delete job details, complete the following steps:

1. Select **Job Master** under the **Administration** topic.
2. Select the **Schedule** in the **Schedule** list.
3. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the **Job Master** toolbar.
4. Enter a job name in the **Name** field.
5. Select **Windows** in the **Job Type** list.
6. Select **Command: File Delete** in the **Job Sub-Type** list.
7. Complete [Steps 6-13 of the Adding Jobs](Adding-Jobs.md) section.
8. Select the **User ID** assigned to the job.
9. Enter the required information in the remaining fields.
10. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

### Defining Command: File Move Job Details

For conceptual information, refer to [Command: File Move](../../../job-types/windows.md#Command:3) in the **Concepts** online help.

To define Command: File Move job details, complete the following steps:

1. Select **Job Master** under the **Administration** topic.
2. Select the **Schedule** in the **Schedule** list.
3. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the **Job Master** toolbar.
4. Enter a job name in the **Name** field.
5. Select **Windows** in the **Job Type** list.
6. Select **Command: File Move** in the **Job Sub-Type** list.
7. Complete [Steps 6-13 of the Adding Jobs](Adding-Jobs.md) section.
8. Select the **User ID** assigned to the job.
9. Enter the required information in the remaining fields.
10. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

### Defining Command: File Rename Job Details

For conceptual information, refer to [Windows Job Details](../../../job-types/windows.md) in the **Concepts** online help.

To define Command: File Rename job details, complete the following steps:

1. Select **Job Master** under the **Administration** topic.
2. Select the **Schedule** in the **Schedule** list.
3. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the **Job Master** toolbar.
4. Enter a job name in the **Name** field.
5. Select **Windows** in the **Job Type** list.
6. Select **Command: File Rename** in the **Job Sub-Type** list.
7. Complete [Steps 6-13 of the Adding Jobs](Adding-Jobs.md) section.
8. Select the **User ID** assigned to the job.
9. Enter the required information in the remaining fields.
10. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

### Defining Corelation Job Details

For conceptual information, refer to [Windows Job Details](../../../job-types/windows.md) in the **Concepts** online help.

To define Corelation job details, complete the following steps:

1. Select **Job Master** under the **Administration** topic.
2. Select the **Schedule** in the **Schedule** list.
3. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the **Job Master** toolbar.
4. Enter a job name in the **Name** field.
5. Select **Windows** in the **Job Type** list.
6. Select **Corelation** in the **Job Sub-Type** list.
7. Complete [Steps 6-13 of the Adding Jobs](Adding-Jobs.md) section.
8. Select the **User ID** assigned to the job.
9. Enter the required information in the remaining fields.
10. *(Optional)* Select a parameter format type: **Batch Options** or **Parameters**.
11. Enter the name/value field information and select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** to define parameters. Select any parameter to use **Update** or **Remove**.
12. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

### Defining Web Services (RESTful) Job Details

For conceptual information, refer to [Web Services (RESTful) Sub-Type](https://help.smatechnologies.com/opcon/connectors/webservices/latest/Files/Connectors/Web-Services-(RESTful)/Job-Definition.md#Web) in the **Web Services (RESTful) Connector** online help.

To define Web Services (RESTful) job details, complete the following steps:

1. Select **Job Master** under the **Administration** topic.
2. Select the **Schedule** in the **Schedule** list.
3. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the **Job Master** toolbar.
4. Enter a job name in the **Name** field.
5. Select **Windows** in the **Job Type** list.
6. Select **Web Services (RESTful)** in the **Job Sub-Type** list.
7. Complete [Steps 6-13 of the Adding Jobs](Adding-Jobs.md) section.

:::note
For fields supporting tokens, use the **Global Property Selector** by pressing **Ctrl/t** to find and define tokens for global properties. You may also type a token manually. For more on tokens, refer to [Tokens](../../../objects/using-properties.md#tokens) in the **Concepts** online help.
:::

8. Select the **User ID** assigned to the job.
9. Ensure the **Job Details** tab is selected within the **Web Services (RESTful) Definition** frame.
10. Enter the Connector Location (path where the Web Services (RESTful) Connector is installed on the target Windows system).
11. Enter the URL to call the RESTful web services.
12. Select the **Operation** type: DELETE, GET, POST, POST_POLL, or PUT, and enter all required information for the selected operation.
13. Enter a user name and encrypted password if authentication is required; otherwise, leave blank. For more information, refer to [Encrypting Passwords](Menus.md#Encrypti).
14. Select the **SSL** tab and define the SSL information.
15. Select the **Failure Criteria** tab.
16. *(Optional)* Enter a Pattern Match Value string.
17. Define the Exit Codes (select an operator and enter an integer).
18. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

### Defining WS_FTP Pro Job Details

For conceptual information, refer to [Windows Job Details](../../../job-types/windows.md) in the **Concepts** online help.

To define WS_FTP Pro job details, complete the following steps:

1. Select **Job Master** under the **Administration** topic.
2. Select the **Schedule** in the **Schedule** list.
3. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the **Job Master** toolbar.
4. Enter a job name in the **Name** field.
5. Select **Windows** in the **Job Type** list.
6. Select **WS_FTP Pro** in the **Job Sub-Type** list.
7. Complete [Steps 6-13 of the Adding Jobs](Adding-Jobs.md) section.

:::note
For fields supporting tokens, use the **Global Property Selector** by pressing **Ctrl/t** to find and define tokens for global properties. You may also type a token manually. For more on tokens, refer to [Tokens](../../../objects/using-properties.md#tokens) in the **Concepts** online help.
:::

8. Select the **User ID** assigned to the job.
9. Enter the required information in the remaining fields.
10. *(Optional)* Enter more detailed failure criteria rules in the **Advanced Failure Criteria** frame. Select the ![Reset to Default icon](../../../Resources/Images/EM/EMresettodefault.png "Reset to Default icon") **Reset to Default** button to reset all rows, or the ![Remove icon](../../../Resources/Images/EM/EMremove.png "Remove icon") **Delete** button to remove a row.
11. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

## Defining z/OS Job Details

For conceptual information, refer to [z/OS Job Details](../../../job-types/zos.md) in the **Concepts** online help.

To define z/OS job details, complete the following steps:

1. Complete [Steps 1-13 of the Adding Jobs](Adding-Jobs.md) section.
2. In the **z/OS Definition** frame, select a **z/OS Job Type**.
3. Enter the remaining field information under **Sysplex** and **Failure criteria**.
4. In **Batch Details** within the **JCL** tab, enter the JCL information.
5. In **Batch Details** within the **Restart** tab:
   - Select the Normal and Restart information under **Duplicate Dataset Action**.
   - Select the GDG Regression information.

### Managing Items on the Step Control Tab

To manage z/OS step control settings, complete the following steps:

1. Select the **Step Control** tab.
2. To add a step: enter a step name, select a **Step Action**, enter a trigger message if required, then select **Add**.
3. To re-assign the step order: right-click the **Step** and select **Move Up** or **Move Down**.
4. To edit a step: select the **Step**, modify the field information, then select **Update**.
5. To delete a step: select the **Step**, select **Remove**, then select **OK** in the **Delete Item** dialog.

### Managing Items on the File Tab

To manage z/OS file resource settings, complete the following steps:

1. Select the **File** tab.
2. To add a file resource: enter a DSN name, **Generations** value, **Condition**, **When** condition, *(optional)* job name, then select **Add**.
3. To re-assign the file resource order: right-click the DSN and select **Move Up** or **Move Down**.
4. To edit a file resource: select the DSN, modify the field information, then select **Update**.
5. To delete a file resource: select the DSN, select **Remove**, then select **OK** in the **Delete Item** dialog.

### Managing Items on the Message Tab

To manage z/OS message trigger settings, complete the following steps:

1. Select the **Message** tab.
2. To add a message trigger: enter a key, Generations value, **When** condition, and *(optional)* job name, Offset, and length, then select **Add**.
3. To re-assign the message order: right-click the key and select **Move Up** or **Move Down**.
4. To edit a message: select the key in the table, modify the field information, then select **Update**.
5. To delete a message: select the key in the table, select **Remove**, then select **OK** in the **Delete Item** dialog.

### Managing Items on the Job/Task Tab

To manage z/OS job/task resource settings, complete the following steps:

1. Select the **Job/Task** tab.
2. To add a job/task resource: enter a job/task name, select an option in **Job/Task Must Be**, then select **Add**.
3. To re-assign the job/task order: right-click the job/task and select **Move Up** or **Move Down**.
4. To edit a job/task resource: select the job/task in the table, modify the field information, then select **Update**.
5. To delete a job/task resource: select the job/task in the table, select **Remove**, then select **OK** in the **Delete Item** dialog.

### Managing Items on the Remaining Tabs

To complete z/OS job definition, complete the following steps:

1. Select the **Tape Devices** tab and enter the required field information.
2. Select the **REXX** tab and enter the required field information.
3. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

### Verifying and Managing JCL

The **JCL/SYSOUT Access** button provides access to a tool for verifying and maintaining the JCL.

#### Setting the JCL Selection for a Job

To set the JCL selection for a job, complete the following steps:

1. Select **JCL/SYSOUT Access**. The **JCL/Sysout Access** dialog opens.
2. Enter the **Member Name**, **View JCL DD Name**, and **Save JCL DD Name**.
3. Select **Save JCL**, then close the dialog.

#### Verifying the JCL Selection for a Job

To verify the JCL selection, complete the following steps:

1. In **Batch Details** under the **JCL** tab, verify or enter a Member Name. If the member name matches the first word of the job name, you may leave this field blank.
2. Verify or enter the DDNAME.
3. Save the job definition if any changes were made (**Ctrl+S**).
4. Select **JCL/Sysout Access**. The **JCL/Sysout Access** dialog opens.
5. Select **View JCL**.
   - If the results are correct, close the editor and the **JCL/Sysout Access** dialog.
   - If the results are not correct, close the editor and review the **DDNAME** and **Member Name**.

#### Editing the Production JCL

To edit the production JCL, complete the following steps:

1. Select **JCL/Sysout Access**. The **JCL/Sysout Access** dialog opens.
2. Select **View JCL** and edit the JCL. If using an external editor, save the results before closing and confirm loading the results.
3. Select **OK**.
4. Modify the **Save JCL DD Name** to match the production library.
5. Select **Save JCL**, then close the dialog.

#### Editing the JCL for a Single Job Instance

To edit the JCL for a single job instance, complete the following steps:

1. Select **JCL/Sysout Access**. The **JCL/Sysout Access** dialog opens.
2. Select **View JCL** and edit the JCL. If using an external editor, save the results before closing and confirm loading the results.
3. Select **OK**.
4. Ensure the **Save JCL DD Name** starts with `TEMP`. If not, change it to a `TEMP...` DD Name configured on the z/OS Agent.
5. Select **Save JCL**, then close the dialog.
6. Enter the new value in the **Override DDNAME** field if the **Save JCL DD Name** was changed in step 4.
7. Ensure the **Temporary Member** field is blank.

#### Editing the Submitted JCL Directly for Restarts

To edit the submitted JCL directly for restarts, complete the following steps:

1. Select **JCL/Sysout Access**. The **JCL/Sysout Access** dialog opens.
2. Enter `0` in the **Outlimit** field and select **View Sysout**.
3. *(Optional)* Edit the JCL.
4. Select **Copy to clipboard**, then close the editor.
5. Select **View JCL**, select and delete the existing contents, then paste the clipboard contents into the editor.
6. Select **OK**, then select **Save JCL**.
7. Close the **JCL/Sysout Access** dialog.
