---
sidebar_label: 'Database Maintenance'
title: OpCon Data Maintenance
description: "Regular database maintenance helps maintain good performance across OpCon applications."
product_area: Database Administration
audience: System Administrator
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - System Configuration
last_updated: 2026-03-18
doc_type: procedural
---

# OpCon Data Maintenance

**Theme:** Configure  
**Who Is It For?** System Administrator

## What Is It?

Regular database maintenance helps maintain good performance across OpCon applications. Before using any scripts in this topic, refer to [Environment Variables](#Environm).

Continuous suggests:

- Daily backups of the "master", "msdb", and "distribution" databases. Used if the database server is lost; refer to [Job Details](#Job)
- Monthly to yearly maintenance with supplemental scripts as needed; refer to [Supplemental Stored Procedures](#Suppleme)

## When Would You Use It?

- You need to maintain good performance across OpCon applications using Regular database maintenance helps

## Why Would You Use It?

- **OpCon Data**: Regular database maintenance helps maintain good performance across OpCon applications

## Environment Variables

All database maintenance scripts use the SMA_SetDBMaintenanceScriptingVariables.cmd and SMA_SetDBEnvironmentScriptingVariables.cmd files to set up the processing environment. These files **must** be configured before any maintenance scripts will work. For settings details, refer to [Mirroring Information Worksheet](Database-Mirroring-Checklist.md#Mirrorin).

## Supplemental Stored Procedures

Continuous provides supplemental SQL stored procedures to help manage OpCon data.

:::note
A SQL user without administrator privileges must be a member of the "opconspuser" role to use these stored procedures.
:::

- [SMA_JOBAVG](#SMA_JOBA): Averages job run times in the OpCon database history
- [SMA_CLEAN_ENS](#SMA_CLEA): Cleans up "orphaned" entries in the ENSSELECTED table
- [SMA_COMPACTTOKENIDS](#SMA_COMP): Re-allocates token IDs to lower the highest token ID

### SMA_JOBAVG

The SMA_JOBAVG stored procedure calculates average start time and run time by frequency for every job it processes.

:::note
The Job Average utility uses only run times of jobs in "FINISHED OK" status (jobs Marked FINISHED OK are excluded). It uses the first run of each job per day to calculate average start times (Finished OK or Failed status).
:::

Schedule SMA_JOBAVG to run at regular intervals to keep job start and run times current. Required files are installed with the SAM-SS in the `<Configuration Directory>\Utilities\Database\` directory.

:::note
For the Configuration Directory location, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

The Job_Avg.cmd and Job_Avg_WinAuth.cmd files run SMA_JOBAVG through sqlcmd.exe and produce the output file SMA_JOBAVG.txt in the same directory.

:::caution
Do not run SMA_JOBAVG independently if SAM is configured to calculate Job Averages. Refer to [SAM Calculates Job Averages](../../administration/server-options.md#general) in the **Concepts** online help.
:::

#### Modifying the Command File

By default, SMA_JOBAVG averages the last 10 executions of all schedules and jobs, doubling the weight of the last execution. Modify the command file to change these defaults.

##### Syntax

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

To override defaults, use the following syntax in the `-Q` parameter:

`-Q"exec %DatabaseName%.dbo.SMA_JOBAVG SW1,SW2,SW3,'SW4','SW5'"`

- **SW1**: Number of job run times to average. Default: `10`
- **SW2**: Number of recent run times to give extra weight (counting backward from the last execution). Default: `1` (last execution only)
- **SW3**: Degree of extra weight applied to the run times in SW2. Default: `2` (double weight). Use `3` for triple weight, etc.
- **SW4**: Schedule name for the calculation. Default: `ALL`. Enclose specific names in single quotes
- **SW5**: Job name for the calculation. Default: `ALL`. Enclose specific names in single quotes

##### Modify the Command File

1. Log on to the SAM application server as a *Windows user* with access to the OpCon installation directories
2. Right-click on **Start** and select **Explore**
3. Browse to the **<Configuration Directory\>\\Utilities\\Database\\** directory
4. Right-click **Job_Avg.cmd** or **Job_Avg_WinAuth.cmd** and select **Edit**
5. Modify the **--Q** parameter. Insert values for SW1 through SW5 in order, with one space after the **SMA_JOBAVG** procedure name, before the closing quotation mark (")

#### Syntax

From the `<Configuration Directory>\Utilities\Database\` directory:

For SQL Authentication:

```batch
Job_Avg.cmd
```

For Windows Authentication:

```batch
Job_Avg_WinAuth.cmd
```

:::note
For the Configuration Directory location, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

#### Automating the Stored Procedure in OpCon

Continuous recommends automating Job_Avg.cmd and Job_Avg_WinAuth.cmd through OpCon daily. The interval can be adjusted based on organizational policy. Refer to the [SMA Job Average](../../objects/schedules#smautility-schedule) job definition in the SMAUtility schedule (in the **Concepts** online help).

### SMA_CLEAN_ENS

The SMA_CLEAN_ENS stored procedure cleans up "orphaned" entries in the ENSSELECTED table.

:::caution
This process is irreversible. Back up the database before running SMA_CLEAN_ENS. Refer to [Manually Backing Up the Database](Manual-Database-Backups-and-Restoration.md#Manually).
:::

The stored procedure:

- Updates an ENSSELECTED record with the latest machine/schedule name if:
  - A machine name in ENSSELECTED does not match the name in the MACHS table
  - A schedule name in ENSSELECTED does not match the name in the SNAME table
- Deletes an ENSSELECTED record if:
  - Duplicate entries exist
  - A machine ID in ENSSELECTED does not exist in the MACHS table
  - A schedule ID in ENSSELECTED does not exist in the SNAME table
  - A job ID in ENSSELECTED does not exist in the JMASTER table

#### Run SMA_CLEAN_ENS

On the OpCon Database Server:

1. Log in as a *local administrative user*
2. Go to **Start > All Programs > SQL Server Management Studio**
3. In the Connect to Server window, select **Database Engine** in the **Server type** list
4. Select the **[OpCon Database Server]** in the **Server name** list
5. Select an authentication option:
   - **Windows Authentication** to log in with the current Windows user
   - **SQL Server Authentication**, then enter *sa* in the **Login** field and the *sa* password in the **Password** field
6. Select the **Connect** button
7. Expand the **Databases** folder and select the **OpCon database**
8. Select the **New Query** button on the Standard toolbar
9. Enter the command for **SMA_CLEAN_ENS**:
   :::tip Example

   ```sql
   EXEC SMA_CLEAN_ENS
   ```

   :::
10. Select the **Execute** button or press **F5**
11. Review the feedback from the stored procedure

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

The SMA_COMPACTTHRESHIDS stored procedure re-allocates IDs for thresholds and resources in the OpCon database to lower the highest ID. This maintenance is required for customers who regularly create and delete thresholds or resources. Each create-and-delete cycle increments the next ID. The maximum ID is 2,147,483,647; if exceeded, the SAM cannot process jobs properly.

Schedule SMA_COMPACTTHRESHIDS to run at regular intervals. Command files reside in the `<Configuration Directory>\Utilities\Database\` directory.

:::note
For the Configuration Directory location, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

The Compact_ThreshIDs.cmd and Compact_ThreshIDs_WinAuth.cmd files run SMA_COMPACTTHRESHIDS through sqlcmd.exe and produce the output file SMA_COMPACTTHRESHIDS.txt in the same directory.

#### Syntax

From the `<Configuration Directory>\Utilities\Database\` directory:

For SQL Authentication:

```batch
Compact_ThreshIDs.cmd
```

For Windows Authentication:

```batch
Compact_ThreshIDs_WinAuth.cmd
```

:::note
For the Configuration Directory location, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

#### Automating the Stored Procedure in OpCon

Continuous recommends automating Compact_ThreshIDs.cmd and Compact_ThreshIDs_WinAuth.cmd through OpCon at regular intervals (monthly, weekly, daily, or hourly depending on volume). Add this job to the SMAUtility Schedule. Refer to [SMAUtility Schedule](../../objects/schedules#smautility-schedule) in the **Concepts** online help.

##### Job Details

The **Command Line** is defined under the **Syntax** section above. The Working Directory is `<Configuration Directory>\Utilities\Database\`.

:::tip Example
Using the SQL Authentication command file with SMAUtility schedule tokens:

Command Line:

```shell
"[[SMAOpConDataPath]]\utilities\database\Compact_ThreshIDs.cmd"
```

Working Directory:

```shell
"[[SMAOpConDataPath]]\utilities\database"
```

:::

Schedule this job during a period when thresholds and resources are not being deleted and recreated.

### SMA_COMPACTTOKENIDS

The SMA_COMPACTTOKENIDS stored procedure re-allocates IDs for tokens in the OpCon database to lower the highest token ID. This maintenance is required for customers who regularly create and delete tokens. Each create-and-delete cycle increments the next token ID. The maximum ID is 2,147,483,647; if exceeded, the SAM cannot process jobs properly.

Schedule SMA_COMPACTTOKENIDS to run at regular intervals. Command files reside in the `<Configuration Directory>\Utilities\Database\` directory.

:::note
For the Configuration Directory location, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

The Compact_TokenIDs.cmd and Compact_TokenIDs_WinAuth.cmd files run SMA_COMPACTTOKENIDS through sqlcmd.exe and produce the output file SMA_COMPACTTOKENIDS.txt in the same directory.

#### Syntax

From the `<Configuration Directory>\Utilities\Database\` directory:

For SQL Authentication:

```batch
Compact_TokenIDs.cmd
```

For Windows Authentication:

```batch
Compact_TokenIDs_WinAuth.cmd
```

:::note
For the Configuration Directory location, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

#### Automating the Stored Procedure in OpCon

Continuous recommends automating Compact_TokenIDs.cmd and Compact_TokenIDs_WinAuth.cmd through OpCon at regular intervals (monthly, weekly, daily, or hourly depending on volume). Add this job to the SMAUtility Schedule. Refer to [SMAUtility Schedule](../../objects/schedules#smautility-schedule) in the **Concepts** online help.

##### Job Details

The **Command Line** is defined under the **Syntax** section above. The Working Directory is `<Configuration Directory>\Utilities\Database\`.

:::tip Example
Using the SQL Authentication command file with SMAUtility schedule tokens:

Command Line:

```shell
"[[SMAOpConDataPath]]\utilities\database\Compact_TokenIDs.cmd"
```

Working Directory:

```shell
"[[SMAOpConDataPath]]\utilities\database
```

:::

Schedule this job during a period when tokens are not being deleted and recreated.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| SW1 | Number of job run times to average. | `10` | — |
| SW2 | Number of recent run times to give extra weight (counting backward from the last execution). | `1` | — |
| SW3 | Degree of extra weight applied to the run times in SW2. | `2` | — |
| SW4 | Schedule name for the calculation. | `ALL` | — |
| SW5 | Job name for the calculation. | `ALL` | — |
## Operations

### Monitoring
- Monitor threshold and token ID growth: if either reaches the maximum ID of 2,147,483,647, SAM cannot process jobs. Run `SMA_COMPACTTHRESHIDS` or `SMA_COMPACTTOKENIDS` at regular intervals to compact IDs.
- Do not run `SMA_JOBAVG` independently if SAM is configured to calculate job averages (Server Options); doing so causes redundant processing and may produce inconsistent average values.

### Common Tasks
- Run `Job_Avg.cmd` (SQL Auth) or `Job_Avg_WinAuth.cmd` (Windows Auth) from `<Configuration Directory>\Utilities\Database\` to update job average start and run times; automate daily via the SMAUtility schedule.
- Run `Compact_ThreshIDs.cmd` / `Compact_ThreshIDs_WinAuth.cmd` at regular intervals (monthly to hourly depending on volume) to prevent threshold/resource ID exhaustion; schedule during periods when thresholds are not being deleted and recreated.
- Run `Compact_TokenIDs.cmd` / `Compact_TokenIDs_WinAuth.cmd` at regular intervals to prevent token ID exhaustion; schedule during periods when tokens are not being deleted and recreated.
- Before running `SMA_CLEAN_ENS`, back up the database — the procedure permanently deletes orphaned ENSSELECTED entries and cannot be reversed.

### Alerts and Log Files
- `SMA_JOBAVG` output is written to `SMA_JOBAVG.txt` in the `<Configuration Directory>\Utilities\Database\` directory.
- `SMA_COMPACTTHRESHIDS` output is written to `SMA_COMPACTTHRESHIDS.txt` in the same directory; `SMA_COMPACTTOKENIDS` output is written to `SMA_COMPACTTOKENIDS.txt`.

## Exception Handling

**SMA_CLEAN_ENS run without a database backup results in irreversible data loss** — SMA_CLEAN_ENS permanently deletes orphaned ENSSELECTED entries and cannot be reversed — Back up the OpCon database before running SMA_CLEAN_ENS; use the backed-up copy to restore if the results are not as expected.

**SMA_JOBAVG run independently when SAM is configured to calculate job averages causes duplicate processing** — If SAM Calculates Job Averages is set to True in Server Options, the SAM already runs the same calculation after each job run; running SMA_JOBAVG independently in addition to this causes redundant processing and may produce inconsistent average values — Do not schedule or run SMA_JOBAVG independently when SAM is configured to calculate job averages; disable one method or the other.

**Threshold or token IDs reach the maximum value of 2,147,483,647 and SAM cannot process jobs** — Each create-and-delete cycle of a threshold, resource, or token increments the next ID; if the maximum is reached, the SAM cannot process jobs properly — Run SMA_COMPACTTHRESHIDS or SMA_COMPACTTOKENIDS at regular intervals to compact IDs back to lower values before the maximum is reached.

## FAQs

**Q: How many steps does the OpCon Data Maintenance procedure involve?**

The OpCon Data Maintenance procedure involves 16 steps. Complete all steps in order and save your changes.

**Q: What does OpCon Data Maintenance cover?**

This page covers Environment Variables, Supplemental Stored Procedures.

## Glossary

**SAM-SS (SAM and Supporting Services)**: The collective term for the OpCon server-side processing programs: SAM, SMANetCom, SMA Notify Handler, SMA Request Router, and SMA Start Time Calculator.

**SMAUtility Schedule**: A pre-built OpCon schedule installed during setup that contains standard maintenance jobs for audit history cleanup, job history cleanup, and BIRT report generation.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.
