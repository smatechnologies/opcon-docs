---
sidebar_label: 'Database Maintenance'
---

# OpCon Data Maintenance

Regular database maintenance for OpCon helps to maintain good performance for all of the OpCon applications. Before using any of the scripts in this topic, refer to [Environment Variables](#Environm).

This section describes the scripts used to maintain the database through OpCon. SMA Technologies suggests:

- Daily backups of the "master", "msdb", and "distribution" databases to provide further data protection. These backups are used in the event of the loss of the database server, refer to [Job Details](#Job).
- Monthly to yearly maintenance with supplemental scripts depending on the need, refer to [Supplemental Stored     Procedures](#Suppleme).

## Environment Variables

All database maintenance scripts distributed by SMA Technologies use the SMA_SetDBMaintenanceScriptingVariables.cmd and SMA_SetDBEnvironmentScriptingVariables.cmd files to set up the processing environment. These command files **must** be configured before any of the database maintenance scripts will work as documented in this topic. For information on settings in the scripting variables files, refer to [Mirroring Information Worksheet](Database-Mirroring-Checklist.md#Mirrorin).

## Supplemental Stored Procedures

SMA Technologies provides several supplemental SQL stored procedures to aid in managing the OpCon data.

:::note
A SQL user without administrator privileges must be a member of the "opconspuser" role to use the following supplemental stored procedures.
:::

- [SMA_JOBAVG](#SMA_JOBA): Averages the run time of jobs in the OpCon database history.
- [SMA_CLEAN_ENS](#SMA_CLEA): Cleans up "orphaned" entries in the ENSSELECTED table of the OpCon database.
- [SMA_COMPACTTOKENIDS](#SMA_COMP): Re-allocates the IDs for the tokens in the OpCon database to lower the number of the highest token ID.

### SMA_JOBAVG

The SMA_JOBAVG stored procedure will automatically calculate average start time and run time by frequency for every job it processes.

:::note
The Job Average utility only uses the run times of jobs in the "FINISHED OK" status. Jobs that are Marked FINISHED OK are not considered. It also uses the first run of the job each day to calculate average start times (Finished OK or Failed status).
:::

The SMA_JOBAVG stored procedure should be scheduled to run at regular intervals to keep job start and run times up to date. The following sections describe the use of the stored procedure and the command files. Installed with the SAM-SS, the required files are in the <Configuration Directory\>\\Utilities\\Database\\ directory.

:::note
The Configuration Directory location is based on where you installed your programs. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

The Job_Avg.cmd and Job_Avg_WinAuth.cmd files run the SMA_JOBAVG stored procedure through sqlcmd.exe. The command files produces the output file SMA_JOBAVG.txt in the same directory as the command file to record the results of the stored procedure.

:::caution
You should not execute SMA_JOBAVG independently if you chose to have SAM calculate Job Averages. For more information, refer to [SAM Calculates Job Averages](../../administration/server-options.md#general) in the **Concepts** online help.
:::

#### Modifying the Command File

The Job_Avg.cmd file runs the SMA_JOBAVG stored procedure through sqlcmd.exe. The stored procedure defaults to averaging with the last 10 executions of all schedules and all jobs while doubling the weight of the last execution of each job. If any one of the default behaviors is not desired, modify the command file to set the desired options.

##### Syntax

The contents of the command files contain the following information:

For SQL Authentication:

```batch
call .\\SMA_SetDBEnvironmentScriptingVariables.cmd
sqlcmd -S%OpConxpsSQLInstance% -Uopconsam -P%opconsamDefault% -Q"exec %DatabaseName%.dbo.SMA_JOBAVG" \> SMA_JOBAVG.txt
```

For Windows Authentication:

```batch

call .\\SMA_SetDBEnvironmentScriptingVariables.cmd
sqlcmd -S%OpConxpsSQLInstance% -E -Q"exec %DatabaseName%.dbo.SMA_JOBAVG" \> SMA_JOBAVG.txt
```

If desired, the default behavior of the stored procedure can be changed by modifying the desired command file to use the following syntax in the -Q parameter:

`-Q"exec %DatabaseName%.dbo.SMA_JOBAVG SW1,SW2,SW3,'SW4','SW5'"`

- **SW1**: Defines the number of job run times to be averaged. Specify the desired value, or use the word DEFAULT as a place holder to accept the default of 10.
- **SW2**: The number of job run times (backward from the last execution) to be given extra weight in the average. Specify the desired value, or use the word DEFAULT as a place holder to accept the default of 1 (denote the last execution of the job). The value of 2 indicates the last two executions and so forth.
- **SW3**: The number indicating the degree of extra weight to be placed on the job (s) listed in SW2. Specify the desired value, or use the word DEFAULT as a place holder to accept the default of 2 (indicating that the run time of the job(s) would be weighted twice as much). The value of 3 would triple the weight and so forth.
- **SW4**: Specifies the Schedule name for the calculation. Specify the desired value, or use the word DEFAULT as a place holder to accept the default of ALL. If a specific schedule is listed, it must be enclosed in single quotes.
- **SW5**: Specifies the Job name for the calculation. Specify the desired value, or use the word DEFAULT as a place holder to accept the default of ALL. If a specific job is listed, it must be enclosed in single quotes.

##### Modify the Command File

1. Log on to the SAM application server as a *Windows user* with access to the OpCon installation directories.
2. Right-click on **Start** and select **Explore**.
3. Browse to the **<Configuration Directory\>\\Utilities\\Database\\** directory.
4. Right-click the **Job_Avg.cmd** or **Job_Avg_WinAuth.cmd** file and select **Edit**.
5. Modify the **--Q** parameter. Insert the values for SW1 through SW5, as desired. These values must be in order, must start with one space after the **SMA_JOBAVG** stored procedure name, and must precede the closing quotation mark (") for the command.

#### Syntax

The following is the syntax for executing the command files from the <Configuration Directory\>\\Utilities\\Database\\ directory:

For SQL Authentication:

```batch
Job_Avg.cmd
```

For Windows Authentication:

```batch
Job_Avg_WinAuth.cmd
```

:::note
The Configuration Directory location is based on where you installed your programs. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

#### Automating the Stored Procedure in OpCon

SMA Technologies recommends automating the Job_Avg.cmd and Job_Avg_WinAuth.cmd through OpCon daily. The OpCon administrator can determine the interval based on organizational policy and system needs. For information on automating this command file, refer to the [SMA Job Average](../../objects/schedules#smautility-schedule) job definition in the SMAUtility schedule (found in the **Concepts** online help).

### SMA_CLEAN_ENS

The SMA_CLEAN_ENS stored procedure cleans up "orphaned" entries in the ENSSELECTED table of the OpCon database.

:::caution
This process is irreversible. SMA Technologies recommends backing up the database before executing SMA_CLEAN_ENS. For information on manually backing up the database, refer to [Manually Backing Up the Database](Manual-Database-Backups-and-Restoration.md#Manually).
:::

The stored procedure performs the following actions:

- Updates an ENSSELECTED table record with the latest machine/schedule name if:
  - A machine name in ENSSELECTED does not match the name in the main machine (MACHS) table.
  - A schedule name in ENSSELECTED does not match the name in the main schedule (SNAME) table.
- Deletes an ENSSELECTED record if:
  - Duplicate entries
  - A group of machine triggers in ENSSELECTED contains a machine ID that does not exist in the main machine (MACHS) table.
  - A schedule's ID in ENSSELECTED does not exist in the main schedule (SNAME) table.
  - A schedule in ENSSELECTED contains a job ID that does not exist in the main job (JMASTER) table.

#### Execute SMA_CLEAN_ENS

On the OpCon Database Server:

1. Log in as a *local administrative user*.
2. Use menu path: **Start \> All Programs \> SQL Server Management Studio**.
3. In the Connect to Server window: Select **Database Engine** in the **Server type** drop-down list.
4. Select the desired \[OpCon Database Server\] in the **Server name** drop-down list.
5. Select one of the following options in the **Authentication**drop-down list:
   - **Windows Authentication** to log in with the current Windows User with local administrative authority.
   - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box.
6. Click the **Connect** button.
7. In the Microsoft SQL Server Management Studio window: Expand (+) the **Databases** folder and select the **OpCon database**.
8. On the Standard toolbar: Click the **New Query** button.
9. Enter the *command* for the **SMA_CLEAN_ENS** stored procedure.
   :::tip Example

   ```sql
   EXEC SMA_CLEAN_ENS
   ```

   :::
10. Click the **Execute** button or press **F5**.
11. View the feedback from stored procedure.

:::tip Example
The following is a summary displayed by the execution of SMA CLEAN_ENS:

```sql
==============================================================
NUMBER OF MACHINE REFERENCES UPDATED: 0
NUMBER OF MACHINE REFERENCES REMOVED: 0
NUMBER OF SCHEDULE REFERENCES UPDATED: 0
NUMBER OF SCHEDULE REFERENCES REMOVED: 0
NUMBER OF JOB REFERENCES REMOVED: 1
--------------------------------------------------------------
TOTAL REFERENCES UPDATED: 0
TOTAL REFERENCES REMOVED: 1
==============================================================
```

:::

### SMA_COMPACTTHRESHIDS

The SMA_COMPACTTHRESHIDS stored procedure re-allocates the IDs for the thresholds and resources in the OpCon database to lower the number of the highest ID. This maintenance is necessary for customers who create and delete thresholds or resources regularly. As each threshold or resource is created and deleted, the next ID is incremented to the next highest number. The highest possible ID for a threshold or resource is 2,147,483,647. If the ID is exceeded, the SAM is unable to continue processing jobs properly.

The SMA_COMPACTTHRESHIDS stored procedure should be scheduled to run at regular intervals to keep the "next" token ID value below the maximum. SMA Technologies provides command files for automating the maintenance of Threshold and Resource IDs. These files reside in the <Configuration Directory\>\\Utilities\\Database\\ directory.

:::note
The Configuration Directory location is based on where you installed your programs. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

The Compact_ThreshIDs.cmd and Compact_ThreshIDs_WinAuth.cmd files run the SMA_COMPACTTHRESHIDS stored procedure through sqlcmd.exe. The command files produce the output file SMA_COMPACTTHRESHIDS.txt in the same directory as the command file to record the results of the stored procedure.

#### Syntax

The following is the syntax for executing the command files from the <Configuration Directory\>**\\Utilities\\Database\\** directory:

For SQL Authentication:

```batch
Compact_ThreshIDs.cmd
```

For Windows Authentication:

```batch
Compact_ThreshIDs_WinAuth.cmd
```

:::note
The Configuration Directory location is based on where you installed your programs. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

#### Automating the Stored Procedure in OpCon

SMA Technologies recommends automating the Compact_ThreshIDs.cmd and Compact_ThreshIDs_WinAuth.cmd through OpCon at regular intervals (once per month, week, day, or hour depending on volume of tokens created and deleted). This job can be added to the SMAUtility Schedule to keep all OpCon maintenance jobs together. For additional information, refer to [SMAUtility Schedule](../../objects/schedules#smautility-schedule) in the **Concepts** online help.

##### Job Details

The **Command Line** is determined under the **Syntax** heading above. The Working Directory is <Configuration Directory\>\\Utilities\\Database\\.

:::tip Example
The example below uses the SQL Authentication command file and tokens that resolve to the OpCon properties defined for use with the SMAUtility schedule.

Command Line:

```shell
"[[SMAOpConDataPath]]\utilities\database\Compact_ThreshIDs.cmd"
```

Working Directory:

```shell
"[[SMAOpConDataPath]]\utilities\database"
```

:::

SMA Technologies recommends scheduling this job during a time that thresholds and resources are not being deleted and recreated.

### SMA_COMPACTTOKENIDS

The SMA_COMPACTTOKENIDS stored procedure re-allocates the IDs for the tokens in the OpCon database to lower the number of the highest token ID. This maintenance is necessary for customers who create and delete tokens regularly. As each token is created and deleted, the next token ID is incremented to the next highest number. The highest possible ID for a token is 2,147,483,647. If the ID is exceeded, the SAM is unable to continue processing jobs properly.

The SMA_COMPACTTOKENIDS stored procedure should be scheduled to run at regular intervals to keep the "next" token ID value below the maximum. SMA Technologies provides command files for automating the maintenance of token IDs. These files reside in the <Configuration Directory\>\\Utilities\\Database\\ directory.

:::note
The Configuration Directory location is based on where you installed your programs. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

The Compact_TokenIDs.cmd and Compact_TokenIDs_WinAuth.cmd files run the SMA_COMPACTTOKENIDS stored procedure through sqlcmd.exe. The command files produce the output file SMA_COMPACTTOKENIDS.txt in the same directory as the command file to record the results of the stored procedure.

#### Syntax

The following is the syntax for executing the command files from the <Configuration Directory\>**\\Utilities\\Database\\** directory:

For SQL Authentication:

```batch
Compact_TokenIDs.cmd
```

For Windows Authentication:

```batch
Compact_TokenIDs_WinAuth.cmd
```

:::note
The Configuration Directory location is based on where you installed your programs. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

#### Automating the Stored Procedure in OpCon

SMA Technologies recommends automating the Compact_TokenIDs.cmd and Compact_TokenIDs_WinAuth.cmd through OpCon at regular intervals (once per month, week, day, or hour depending on volume of tokens created and deleted). This job can be added to the SMAUtility Schedule to keep all OpCon maintenance jobs together. For additional information, refer to [SMAUtility Schedule](../../objects/schedules#smautility-schedule) in the **Concepts** online help.

##### Job Details

The **Command Line** is determined under the **Syntax** heading above. The Working Directory is <Configuration Directory\>\\Utilities\\Database\\.

:::tip Example
The example below uses the SQL Authentication command file and tokens that resolve to the OpCon properties defined for use with the SMAUtility schedule.

Command Line:

```shell
"[[SMAOpConDataPath]]\utilities\database\Compact_TokenIDs.cmd"
```

Working Directory:

```shell
"[[SMAOpConDataPath]]\utilities\database
```

:::

SMA Technologies recommends scheduling this job during a time that tokens are not being deleted and recreated.
