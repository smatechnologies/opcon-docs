# Predefined Reports

All OpCon report files can be found in the \<Target
Directory\>\\OpConxps\\EnterpriseManager
x64\\reports\\OPCONXPS_Reports\\ folder. In order to run a report, the
report (.rptdesign) file must reside on the SAM application server. For
each report, the following information is given:

- **Description**: Explains the information the report produces.
- **File Name**: Indicates the name of the BIRT report file. This
    information is required for defining the report in Report Management
    (refer to [Using Report     Management](../Files/UI/Enterprise-Manager/Using-Report-Management.md)
     in the **Enterprise Manager** online help) and for running
    the report with the BIRT Report Generator (refer to [BIRT Report     Generator](../utilities/Command-line-Utilities/BIRT-Report-Generator.md)
     in the **Utilities** online help).
- **Primary Table**: Indicates the primary table in the OpCon database
    for the report. This information is required for defining the report
    in Report Management (refer to [Using Report     Management](../Files/UI/Enterprise-Manager/Using-Report-Management.md)
     in the **Enterprise Manager** online help).
- **Required Filters**: Indicates the data filters required by the
    report. This information is required for defining the report in the
    Report Management utility (refer to [Using Report     Management](../Files/UI/Enterprise-Manager/Using-Report-Management.md)
     in the **Enterprise Manager** online help). Refer to the
    *Required filter* information listed for each report.
- **Parameters**: Indicates the parameters to use when specifying the
    required filters for the -p switches in the BIRT Report Generator
    syntax. For additional information, refer to
    [Parameters](../utilities/Command-line-Utilities/BIRT-Report-Generator.md#Paramete2)
     in the **Utilities** online help.

## Annual Plan Dates by Calendar

  ----------------------------------------------------------------------------------------------

**Description**: Shows all defined dates on user-defined calendars, sorted by calendar name
  **File Name**: xref15
  **Primary Table**: CALDESC
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  ----------------------------------------------------------------------------------------------

## Comparative Job Execution Statistics

:::warning
This report becomes more CPU intensive as the amount of Job History in the database increases.
:::

+----------------------------------------------------------------------+
| **Description**: Shows the estimated and average runtimes for all    |
| jobs in the HISTORY table by schedule.                               |
+----------------------------------------------------------------------+
| **File Name**: admin03                                               |
+----------------------------------------------------------------------+
| **Primary Table**: JMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules                                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>"                                |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Cross-reference Schedules and Jobs by Job Name

  ---------------------------------------------------------------------------------------------------

**Description**: Sorted by job name, this report shows all jobs and their associated schedule(s)
  **File Name**: xref10
  **Primary Table**: JMASTER
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  ---------------------------------------------------------------------------------------------------

## Cross-reference Schedules and Jobs by Schedule Name

  ------------------------------------------------------------------------------------------------------

**Description**: Sorted by schedule name, this report shows all schedules and their associated jobs
  **File Name**: xref07
  **Primary Table**: JMASTER
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  ------------------------------------------------------------------------------------------------------

## Current Threshold and Resource Values

  --------------------------------------------------------------------------------------------------------------------------------------

**Description**: Shows all threshold/resource names with their descriptions and values. Also presents how many resources are in use
  **File Name**: admin11
  **Primary Table**: THRESH
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  --------------------------------------------------------------------------------------------------------------------------------------

## Current OpCon Instance Property Values

  --------------------------------------------------------------------------------------------------

**Description**: Shows all OpCon instance property names with their descriptions and values
  **File Name**: admin09
  **Primary Table**: TOKEN
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  --------------------------------------------------------------------------------------------------

## Daily Job Information by Machine

+----------------------------------------------------------------------+
| **Description**: Shows jobs in the Daily tables with associated job  |
| dependencies and subsequent jobs, sorted by machine and schedule     |
| date. Additionally, the last page includes the total number of jobs  |
| in the report.                                                       |
+----------------------------------------------------------------------+
| **File Name**: skdrep24                                              |
+----------------------------------------------------------------------+
| **Primary Table**: SMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates, Schedules, Departments         |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
| -p"DEPTID=\<value\>"                                               |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../utilities                                                |
| /Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE), |
| [-p                                                                  | | SKDID](../Utilitie                                                   |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID), |
| and [-p                                                              | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Daily Jobs Assigned to Each Machine in a Group

+----------------------------------------------------------------------+
| **Description**: Shows jobs by schedule date so user(s) will know    |
| the impact of removing a machine from a group and/or know which jobs |
| are configured for a Machine Group that was modified. The report     |
| uses a special filter for selecting machines.                        |
+----------------------------------------------------------------------+
| **File Name**: skdrep39                                              |
+----------------------------------------------------------------------+
| **Primary Table**: SMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: \<None\>                                       |
+----------------------------------------------------------------------+
| **Parameters**: -p "MACHS_MACHID=\<value\>"                        |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | MACHS_MACHID](../utilities/Com                                       |
| mand-line-Utilities/BIRT-Report-Generator.md#-p_MACHS_MACHID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Daily Schedule by Date

+----------------------------------------------------------------------+
| **Description**: Shows the details of each job in the Daily tables,  |
| including all dependencies, threshold/resource updates, and OpCon    |
| events, sorted by schedule. Additionally, the last page includes the |
| total number of jobs in the report.                                  |
+----------------------------------------------------------------------+
| **File Name**: dailyskd                                              |
+----------------------------------------------------------------------+
| **Primary Table**: SMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates, Schedules, Departments         |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
| -p"DEPTID=\<value\>"                                               |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../utilities                                                |
| /Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE), |
| [-p                                                                  | | SKDID](../Utilitie                                                   |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID), |
| and [-p                                                              | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Daily Schedule by Start Time

:::note
The Customize Regional Options (Control Panel\>Regional Options\>Customize) for this Report must have a . (period) set for the Decimal parameter.
:::

+----------------------------------------------------------------------+
| **Description**: Shows the details of each job in the Daily tables,  |
| including all dependencies, threshold/resource updates, and OpCon    |
| events, sorted by start time. Additionally, the last page includes   |
| the total number of jobs in the report.                              |
|                                                                      |
|                                                                      |
|                                                                      |
| **Note:** Remember that the start time of a job before it has        |
| started running is the estimated start time of the job. Once the job |
| starts, the start time is the actual start time of the job.          |
|                                                                      |
|                                                                      |
+----------------------------------------------------------------------+
| **File Name**: skdrep35                                              |
+----------------------------------------------------------------------+
| **Primary Table**: SMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates, Schedules, Departments         |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
| -p"DEPTID=\<value\>"                                               |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../utilities                                                |
| /Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE), |
| [-p                                                                  | | SKDID](../Utilitie                                                   |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID), |
| and [-p                                                              | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Duplicate Roles

  --------------------------------------------------------------------------------

**Description**: Shows OpCon User Roles that are duplicates of each other
  **File Name**: Admin22
  **Primary Table**: ROLES
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  --------------------------------------------------------------------------------

## ENS Definitions

+----------------------------------------------------------------------+
| **Description**: Shows notification groups, triggers, and            |
| notifications defined for each trigger defined within Notification   |
| Management.                                                          |
+----------------------------------------------------------------------+
| **File Name**: admin23                                               |
+----------------------------------------------------------------------+
| **Primary Table**: ENSMESSAGES                                       |
+----------------------------------------------------------------------+
| **Required Filters**: \<None\>                                       |
+----------------------------------------------------------------------+
| **Parameters**: -p"ENSOPTIONS_OPTION=\<value\>"                    |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | ENSOPTIONS_OPTION](../utilities/Command-                             |
| line-Utilities/BIRT-Report-Generator.md#-p_ENSOPTIONS_OPTION) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Estimated Run Time by Schedule

+----------------------------------------------------------------------+
| **Description**: List the estimated run times for the frequency of   |
| each job, sorted by schedule.                                        |
+----------------------------------------------------------------------+
| **File Name**: xref19                                                |
+----------------------------------------------------------------------+
| **Primary Table**: JKSD                                              |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules                                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>"                                |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Event Details by Schedule

+----------------------------------------------------------------------+
| **Description**: Shows the OpCon events associated with each job in  |
| the Master tables, sorted by schedule.                               |
+----------------------------------------------------------------------+
| **File Name**: xref05                                                |
+----------------------------------------------------------------------+
| **Primary Table**: JEVENTS                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules                                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>"                                |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Event Details by Schedule Date

+----------------------------------------------------------------------+
| **Description**: Shows the OpCon events associated with each job in  |
| the Daily tables, sorted by schedule date.                           |
+----------------------------------------------------------------------+
| **File Name**: xref06                                                |
+----------------------------------------------------------------------+
| **Primary Table**: SEVENTS                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates, Schedules                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../Utilitie                                                 |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE) |
| and [-p                                                              | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Failed Jobs by Date

+----------------------------------------------------------------------+
| **Description**: Shows failed jobs and all associated information,   |
| sorted by schedule date.                                             |
+----------------------------------------------------------------------+
| **File Name**: skdrep09                                              |
+----------------------------------------------------------------------+
| **Primary Table**: HISTORY                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates, Schedules, Departments         |
+----------------------------------------------------------------------+
| **Parameters**: -p"HISTORY_SKDDATE=\<value\>"                      |
| -p"SKDID=\<value\>" -p"DEPTID=\<value\>"                         |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | HISTORY_SKDDATE](../utilities/Command                                |
| -line-Utilities/BIRT-Report-Generator.md#-p_HISTORY_SKDDATE), |
| [-p                                                                  | | SKDID](../Utilitie                                                   |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID), |
| and [-p                                                              | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Failed Jobs with History Notes

+----------------------------------------------------------------------+
| **Description**: Shows job history, associated history notes, and    |
| job completion comments for failed jobs, sorted by schedule. The     |
| report uses a special filter for selecting months from the history.  |
+----------------------------------------------------------------------+
| **File Name**: skdrep31                                              |
+----------------------------------------------------------------------+
| **Primary Table**: HISTORY                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules, Departments                         |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>" -p"DEPTID=\<value\>"         |
| -p"HISTORY_JSTART= \<value\>"                                      |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utilitie                                                   |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID), |
| [-p                                                                  | | DEPTID](../Utilitie                                                  |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID), |
| and [-p                                                              | | HISTORY_JSTART](../utilities/Comma                                   |
| nd-line-Utilities/BIRT-Report-Generator.md#-p_HISTORY_JSTART) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Frequencies and Associated Jobs

+----------------------------------------------------------------------+
| **Description**: Shows frequencies with associated schedules and     |
| jobs, sorted                                                         |
|                                                                      |
| by frequency name.                                                   |
+----------------------------------------------------------------------+
| **File Name**: skdrep20                                              |
+----------------------------------------------------------------------+
| **Primary Table**: JSKD                                              |
+----------------------------------------------------------------------+
| **Required Filters**: \<None\>                                       |
+----------------------------------------------------------------------+
| **Parameters**: \<None\>                                             |
+----------------------------------------------------------------------+

## Index of Reports

  --------------------------------------------------------------------------------------------------------------------

**Description**: Provides a list of all reports currently available in the OpCon database, sorted by Report Title
  **File Name**: SMARptIndex
  **Primary Table**: REPORTS
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  --------------------------------------------------------------------------------------------------------------------

## Job Count by Date and Schedule

+----------------------------------------------------------------------+
| **Description**: Shows the number of jobs for a schedule date,       |
| sorted by date then by schedule.                                     |
+----------------------------------------------------------------------+
| **File Name**: Admin08                                               |
+----------------------------------------------------------------------+
| **Primary Table**: SMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates, Schedules                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../Utilitie                                                 |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE) |
| and [-p                                                              | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job Count by Machine for Jobs in Wait Machine Status

+----------------------------------------------------------------------+
| **Description**: Provides a count of the number of jobs in a Wait    |
| Machine status on individual machines, sorted by machine name and    |
| operating system (OS) type.                                          |
+----------------------------------------------------------------------+
| **File Name**: skdrep23                                              |
+----------------------------------------------------------------------+
| **Primary Table**: SMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates, Schedules                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
| -p"DEPTID=\<value\>"                                               |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../utilities                                                |
| /Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE), |
| [-p                                                                  | | SKDID](../utilities/C                                                |
| ommand-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID),and |
| [-p                                                                  | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job Count by Month and Department

  ----------------------------------------------------------------------------------------------------------------

**Description**: Shows the number of jobs executed for each month in history, sorted by month then department
  **File Name**: admin05
  **Primary Table**: HISTORY
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  ----------------------------------------------------------------------------------------------------------------

## Job Count by Month and Machine

  --------------------------------------------------------------------------------------------------------

**Description**: Shows the number of jobs run on each machine in the database sorted by month and year
  **File Name**: admin19
  **Primary Table**: HISTORY
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  --------------------------------------------------------------------------------------------------------

## Job Count by Schedule Date

+----------------------------------------------------------------------+
| **Description**: Shows the number of jobs executed based on the      |
| schedule date of the jobs.                                           |
+----------------------------------------------------------------------+
| **File Name**: admin06                                               |
+----------------------------------------------------------------------+
| **Primary Table**: HISTORY                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates, Schedules                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../Utilitie                                                 |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE) |
| and [-p                                                              | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job Count by Start Date

+----------------------------------------------------------------------+
| **Description**: Shows the number of jobs executed based on the      |
| actual start date of the jobs.                                       |
+----------------------------------------------------------------------+
| **File Name**: admin01                                               |
+----------------------------------------------------------------------+
| **Primary Table**: HISTORY                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates, Schedules                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../Utilitie                                                 |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE) |
| and [-p                                                              | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job Dependencies and Documentation by Date

+----------------------------------------------------------------------+
| **Description**: Sorted by schedule date, shows jobs with            |
| dependencies and corresponding                                       |
|                                                                      |
| job/frequency documentation                                          |
+----------------------------------------------------------------------+
| **File Name**: skdrep18                                              |
+----------------------------------------------------------------------+
| **Primary Table**: SMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates, Schedules                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../Utilitie                                                 |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE) |
| and [-p                                                              | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job Dependencies by Originating Schedule

+----------------------------------------------------------------------+
| **Description**: Shows jobs with dependencies, sorted by the         |
| originating schedule.                                                |
+----------------------------------------------------------------------+
| **File Name**: xref11                                                |
+----------------------------------------------------------------------+
| **Primary Table**: JDEPJOB                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules                                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>"                                |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Jobs Dependencies by Schedule Date and Start Time

+----------------------------------------------------------------------+
| **Description**: Shows jobs in the order they execute according to   |
| their dependency chain, sorted by schedule date.                     |
+----------------------------------------------------------------------+
| **File Name**: xref18                                                |
+----------------------------------------------------------------------+
| **Primary Table**: SDEPJOB                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates, Schedules                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../Utilitie                                                 |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE) |
| and [-p                                                              | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job Dependencies by Subsequent Schedule

+----------------------------------------------------------------------+
| **Description**: Shows jobs with dependencies, sorted by the         |
| subsequent schedule.                                                 |
+----------------------------------------------------------------------+
| **File Name**: xref01                                                |
+----------------------------------------------------------------------+
| **Primary Table**: JDEPJOB                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules                                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>"                                |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job Dependency Hierarchical Listing of Scheduled Jobs

+----------------------------------------------------------------------+
| **Description**: Shows all jobs that are dependent on the defined    |
| job and all jobs that the defined job is dependent on, sorted by     |
| schedule.                                                            |
|                                                                      |
|                                                                      |
|                                                                      |
| **Note**: If a date is defined and no schedules built for that date  |
| have any jobs with dependencies, it is possible to have no data for  |
| a date.                                                              |
+----------------------------------------------------------------------+
| **File Name**: xref04                                                |
+----------------------------------------------------------------------+
| **Primary Table**: SMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates, Schedules                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../Utilitie                                                 |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE) |
| and [-p                                                              | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job Details for Machine Group

+----------------------------------------------------------------------+
| **Description**: Shows the primary details of jobs for a defined     |
| Machine Group. Specifically, this report aids administrators in      |
| determining if a machine can be added to a group to run the jobs     |
| already configured on the group. The report uses a special filter    |
| for selecting machine groups.                                        |
+----------------------------------------------------------------------+
| **File Name**: skdrep38                                              |
+----------------------------------------------------------------------+
| **Primary Table**: JMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: \<None\>                                       |
+----------------------------------------------------------------------+
| **Parameters**: -p"MACHGRPS_MACHGRPID=\<value\>"                   |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | MACHGRPS_MACHGRPID](../utilities/Command-l                           |
| ine-Utilities/BIRT-Report-Generator.md#-p_MACHGRPS_MACHGRPID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job History by Date

+----------------------------------------------------------------------+
| **Description**: Shows the jobs in the primary history table, their  |
| finish status, associated runtime information, and machine each job  |
| was executed on, sorted by date. The report uses a special filter    |
| for selecting one history date.                                      |
+----------------------------------------------------------------------+
| **File Name**: skdrep06                                              |
+----------------------------------------------------------------------+
| **Primary Table**: HISTORY                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules                                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>"                                |
| -p"HISTORY_SKDDATE=\<value\>"                                      |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| and [-p                                                              | | HISTORY_SKDDATE](../utilities/Comman                                 |
| d-line-Utilities/BIRT-Report-Generator.md#-p_HISTORY_SKDDATE) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job History by Date with History Notes

+----------------------------------------------------------------------+
| **Description**: Shows job history, associated history notes, and    |
| job completion comments, sorted by schedule. The report uses a       |
| special filter for selecting one history date.                       |
+----------------------------------------------------------------------+
| **File Name**: skdrep52                                              |
+----------------------------------------------------------------------+
| **Primary Table**: HISTORY                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules, Departments                         |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>"                                |
| -p"HISTORY_SKDDATE=\<value\>"                                      |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| and [-p                                                              | | HISTORY_SKDDATE](../utilities/Comman                                 |
| d-line-Utilities/BIRT-Report-Generator.md#-p_HISTORY_SKDDATE) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job History by Department

+----------------------------------------------------------------------+
| **Description**: Shows the jobs in the primary history table, their  |
| finish status, associated runtime information, and department.       |
| Sorted by department.                                                |
+----------------------------------------------------------------------+
| **File Name**: skdrep26                                              |
+----------------------------------------------------------------------+
| **Primary Table**: HISTORY                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates, Schedules, Departments         |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
| -p"DEPTID=\<value\>"                                               |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../utilities                                                |
| /Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE), |
| [-p                                                                  | | SKDID](../Utilitie                                                   |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID), |
| and [-p                                                              | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job History by Department (original format)

+----------------------------------------------------------------------+
| **Description**: Shows the jobs in the primary history table, their  |
| finish status, associated runtime information, and department.       |
| Sorted by department. This original report separates the date and    |
| time columns for exporting purposes.                                 |
+----------------------------------------------------------------------+
| **File Name**: skdrep26of.rptdesign                                  |
+----------------------------------------------------------------------+
| **Primary Table**: HISTORY                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates, Schedules, Departments         |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
| -p"DEPTID=\<value\>"                                               |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../utilities                                                |
| /Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE), |
| [-p                                                                  | | SKDID](../Utilitie                                                   |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID), |
| and [-p                                                              | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job History by Schedule

+----------------------------------------------------------------------+
| **Description**: Shows the jobs in the primary history table, their  |
| finish status, associated runtime information, and machine each job  |
| was executed on. Sorted by schedule. The report begins from the      |
| table's most recent entry.                                          |
+----------------------------------------------------------------------+
| **File Name**: skdrep05                                              |
+----------------------------------------------------------------------+
| **Primary Table**: HISTORY                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules                                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>"                                |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job History by Schedule (Alternate)

+----------------------------------------------------------------------+
| **Description**: Shows the jobs in the primary history table, their  |
| finish status, associated runtime information, and machine each job  |
| was executed on. Every row will display the job name. Sorted by      |
| schedule. The report begins from the table's most recent entry. The |
| report uses a special filter for selecting months from history.      |
+----------------------------------------------------------------------+
| **File Name**: skdrep47                                              |
+----------------------------------------------------------------------+
| **Primary Table**: HISTORY                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules                                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>" -p"HISTORY_JSTART=\<value\>" |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| and [-p                                                              | | HISTORY_JSTART](../utilities/Comma                                   |
| nd-line-Utilities/BIRT-Report-Generator.md#-p_HISTORY_JSTART) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job History by Start Date

+----------------------------------------------------------------------+
| **Description**: Shows the jobs in the primary history table, their  |
| finish status, associated run time information, and machine each job |
| was executed on, sorted by start date.                               |
+----------------------------------------------------------------------+
| **File Name**: skdrep19                                              |
+----------------------------------------------------------------------+
| **Primary Table**: HISTORY                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules                                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>"                                |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help                                                                 |
+----------------------------------------------------------------------+

## Job History by Start Time

+----------------------------------------------------------------------+
| **Description**: Shows the jobs in the primary history table, their  |
| finish status, associated runtime information, and machine each job  |
| was executed on, sorted by start time. The report uses a special     |
| filter for selecting [one history date.                   | |  |
+----------------------------------------------------------------------+
| **File Name**: skdrep34                                              |
+----------------------------------------------------------------------+
| **Primary Table**: HISTORY                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules                                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>"                                |
| -p"HISTORY_SKDDATE=\<value\>"                                      |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| and [-p                                                              | | HISTORY_SKDDATE](../utilities/Comman                                 |
| d-line-Utilities/BIRT-Report-Generator.md#-p_HISTORY_SKDDATE) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job History Archive by Date

+----------------------------------------------------------------------+
| **Description**: Shows the jobs in the archive table, their finish   |
| status, associated runtime information, and machine each job was     |
| executed on, sorted by date. The report uses a special filter for    |
| selecting one history date.                                          |
+----------------------------------------------------------------------+
| **File Name**: skdrep08                                              |
+----------------------------------------------------------------------+
| **Primary Table**: HISTARC                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules                                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>"                                |
| -p"HISTARC_SKDDATE=\<value\>"                                      |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| and [-p                                                              | | HISTARC_SKDDATE](../utilities/Comman                                 |
| d-line-Utilities/BIRT-Report-Generator.md#-p_HISTARC_SKDDATE) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job History Archive by Schedule

:::caution
This report returns records for all dates in the history archive table which could contain very large volumes of data, thereby causing the report to run out of memory. SMA Technologies recommends customers with large volumes of data use the Job History Archive by Date report to get a smaller report.
:::

+----------------------------------------------------------------------+
| **Description**: Shows all history that has been archived, sorted by |
| schedule.                                                            |
+----------------------------------------------------------------------+
| **File Name**: skdrep07                                              |
+----------------------------------------------------------------------+
| **Primary Table**: HISTARC                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules                                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>"                                |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job History Count by Month

:::note
The "Job Count Average by Month" graph in the report charts the job count average for each month. Each point is calculated by taking the total number of jobs run in a month and dividing that by the actual number of days jobs ran.
:::

+----------------------------------------------------------------------+
| **Description**: Shows the job count from history for each month in  |
| the selected year.                                                   |
+----------------------------------------------------------------------+
| **File Name**: stt010                                                |
+----------------------------------------------------------------------+
| **Primary Table**: HISTORY                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Year                                           |
+----------------------------------------------------------------------+
| **Parameters**: -p"YEAR=\<yyyy\>"                                  |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | YEAR](../Utili                                                       |
| ties/Command-line-Utilities/BIRT-Report-Generator.md#-p_YEAR) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job List by Access Code

+----------------------------------------------------------------------+
| **Description**: Lists all jobs and their associated schedule names, |
| sorted by Access Code.                                               |
+----------------------------------------------------------------------+
| **File Name**: skdrep30                                              |
+----------------------------------------------------------------------+
| **Primary Table**: JMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules, Departments                         |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>" -p"DEPTID=\<value\>"         |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| and [-p                                                              | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job List by Department

+----------------------------------------------------------------------+
| **Description**: Lists all jobs and their associated schedule names, |
| sorted by Department.                                                |
+----------------------------------------------------------------------+
| **File Name**: skdrep48                                              |
+----------------------------------------------------------------------+
| **Primary Table**: JMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules, Departments                         |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>" -p"DEPTID=\<value\>"         |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| and [-p                                                              | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job List by Job Name

+----------------------------------------------------------------------+
| **Description**: Lists all jobs and their associated schedule names, |
| sorted by job name.                                                  |
+----------------------------------------------------------------------+
| **File Name**: skdrep22                                              |
+----------------------------------------------------------------------+
| **Primary Table**: JMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules, Departments                         |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>" -p"DEPTID=\<value\>"         |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| and [-p                                                              | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job List by Machine

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Description**: Lists all jobs and their associated machines, sorted by machine and schedule name. Additionally, the report shows if a machine is the primary or alternate machine for the job
  **File Name**: skdrep25
  **Primary Table**: MACHS
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Job List by Tag

+----------------------------------------------------------------------+
| **Description**: Lists all jobs and their associated schedule names, |
| sorted by Tag.                                                       |
+----------------------------------------------------------------------+
| **File Name**: skdrep55                                              |
+----------------------------------------------------------------------+
| **Primary Table**: JMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules, Departments                         |
+----------------------------------------------------------------------+
| **Parameters**: -p"TAGNAME=\<value\>"                              |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | TAGNAME](../Utilitie                                                 |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-p_TAGNAME) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job Master Additions and Deletions by Date

+----------------------------------------------------------------------+
| **Description**: Shows all jobs that have been added and deleted     |
| from OpCon, sorted by audit date. The report uses a special filter   |
| for selecting dates from the audit records.                          |
+----------------------------------------------------------------------+
| **File Name**: admin16                                               |
+----------------------------------------------------------------------+
| **Primary Table**: AUDITRECSVIEW                                     |
+----------------------------------------------------------------------+
| **Required Filters**: \<None\>                                       |
+----------------------------------------------------------------------+
| **Parameters**: -p"AUDITHST_SQLDATE=\<value\>"                     |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | AUDITHST_SQLDATE](../utilities/Command                               |
| -line-Utilities/BIRT-Report-Generator.md#-p_AUDITHST_SQLDATE) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job Master by Schedule

+----------------------------------------------------------------------+
| **Description**: Shows all details of jobs, including all            |
| dependencies, threshold/resource updates, and OpCon events, sorted   |
| by schedule. Additionally, the last page includes the total number   |
| of jobs and frequencies in the report.                               |
+----------------------------------------------------------------------+
| **File Name**: jmaster                                               |
+----------------------------------------------------------------------+
| **Primary Table**: JMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules, Departments, Job Types              |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>" -p"DEPTID=\<value\>"         |
| -p"JOBTYPEID=\<value\>"                                            |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID,](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| [-p                                                                  | | DEPTID](../Utilitie                                                  |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID), |
| and [-p                                                              | | JOBTYPEID](../utilities/                                             |
| Command-line-Utilities/BIRT-Report-Generator.md#-p_JOBTYPEID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job Status Breakdown by Month

+----------------------------------------------------------------------+
| **Description**: Based on a selected year, shows the total number of |
| jobs that completed in a month, broken down by status.               |
+----------------------------------------------------------------------+
| **File Name**: stt012                                                |
+----------------------------------------------------------------------+
| **Primary Table**: HISTORY                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Year                                           |
+----------------------------------------------------------------------+
| **Parameters**: -p"YEAR=\<yyyy\>"                                  |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | YEAR](../Utili                                                       |
| ties/Command-line-Utilities/BIRT-Report-Generator.md#-p_YEAR) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job Status Breakdown by Year

  ---------------------------------------------------------------------------------------------------------------------

**Description**: Shows the total number of jobs that completed in every year in the history, broken down by status
  **File Name**: stt011
  **Primary Table**: HISTORY
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  ---------------------------------------------------------------------------------------------------------------------

## Job Status by Date

+----------------------------------------------------------------------+
| **Description**: Shows the jobs, their current status, associated    |
| departments and frequencies, and termination information, sorted by  |
| schedule date.                                                       |
+----------------------------------------------------------------------+
| **File Name**: skdrep01                                              |
+----------------------------------------------------------------------+
| **Primary Table**: SMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates, Schedules, Departments         |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
| -p"DEPTID=\<value\>"                                               |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../utilities                                                |
| /Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE), |
| [-p                                                                  | | SKDID](../Utilitie                                                   |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID), |
| and [-p                                                              | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job Status by Department

+----------------------------------------------------------------------+
| **Description**: Shows the jobs, their current status, associated    |
| departments and frequencies, and termination information, sorted by  |
| department and schedule date.                                        |
+----------------------------------------------------------------------+
| **File Name**: skdrep03                                              |
+----------------------------------------------------------------------+
| **Primary Table**: SMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates, Schedules, Departments         |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
| -p"DEPTID=\<value\>"                                               |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../utilities                                                |
| /Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE), |
| [-p                                                                  | | SKDID](../Utilitie                                                   |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID), |
| and [-p                                                              | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job Status by Status

+----------------------------------------------------------------------+
| **Description**: Shows the jobs, and all associated dates and times, |
| sorted by job status.                                                |
+----------------------------------------------------------------------+
| **File Name**: skdrep02                                              |
+----------------------------------------------------------------------+
| **Primary Table**: SMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates, Schedules, Departments         |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
| -p"DEPTID=\<value\>"                                               |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../utilities                                                |
| /Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE), |
| [-p                                                                  | | SKDID](../Utilitie                                                   |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID), |
| and [-p                                                              | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job Status by Status with Recurrence History

+----------------------------------------------------------------------+
| **Description**: Shows the jobs, and all associated dates and times  |
| with the history of all executions of the job for each date, sorted  |
| by job status.                                                       |
+----------------------------------------------------------------------+
| **File Name**: skdrep44                                              |
+----------------------------------------------------------------------+
| **Primary Table**: SMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates, Schedules, Departments         |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
| -p"DEPTID=\<value\>"                                               |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../utilities                                                |
| /Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE), |
| [-p                                                                  | | SKDID](../Utilitie                                                   |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID), |
| and [-p                                                              | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job Status Count by Machine and Year

+----------------------------------------------------------------------+
| **Description**: Shows the job count for a selected Job Status,      |
| grouped by year and machine.                                         |
+----------------------------------------------------------------------+
| **File Name**: stt005                                                |
+----------------------------------------------------------------------+
| **Primary Table**: HISTORY                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Job Status                                     |
+----------------------------------------------------------------------+
| **Parameters**: -p"JOB_STATUS=\<job status code\>"                 |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | JOB_STATUS](../utilities/C                                           |
| ommand-line-Utilities/BIRT-Report-Generator.md#-p_JOB_STATUS) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job Status Count by Month, Year and Schedule

:::note
The History table does not include jobs that missed their latest start time, or were canceled; therefore, those records cannot appear in the report.
:::

+----------------------------------------------------------------------+
| **Description**: Shows the job count for a selected Job Status,      |
| sorted by month for a selected year. Also, you can configure the     |
| report to highlight cells in the table if the job count is higher    |
| than a specific number.                                              |
+----------------------------------------------------------------------+
| **File Name**: stt002                                                |
+----------------------------------------------------------------------+
| **Primary Table**: HISTORY                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Job Status, Year, Highlight (default value is  |
| 10)                                                                  |
+----------------------------------------------------------------------+
| **Parameters**: -p"JOB_STATUS=\<job status code\>"                 |
| -p"HIGHLIGHT=\<number\>" -p"YEAR=\<yyyy\>"                       |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | JOB_STATUS](../utilities/Co                                          |
| mmand-line-Utilities/BIRT-Report-Generator.md#-p_JOB_STATUS), |
| [-p                                                                  | | HIGHLIGHT](../utilities/C                                            |
| ommand-line-Utilities/BIRT-Report-Generator.md#-p_HIGHLIGHT), |
| and [-p                                                              | | YEAR](../Utili                                                       |
| ties/Command-line-Utilities/BIRT-Report-Generator.md#-p_YEAR) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Job Status Count by Schedule and Year

+----------------------------------------------------------------------+
| **Description**: Shows the job history count for a selected Job      |
| Status, grouped by year and schedule.                                |
+----------------------------------------------------------------------+
| **File Name**: stt001                                                |
+----------------------------------------------------------------------+
| **Primary Table**: HISTORY                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Job Status                                     |
+----------------------------------------------------------------------+
| **Parameters**: -p"JOB_STATUS=\<job status code\>"                 |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | JOB_STATUS](../utilities/C                                           |
| ommand-line-Utilities/BIRT-Report-Generator.md#-p_JOB_STATUS) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Jobs in Run Sequence

:::note
The start option does not ignore preruns or maximum concurrent job limitations on a machine.
:::

+----------------------------------------------------------------------+
| **Description**: Shows the jobs, their schedule, frequency, current  |
| status, and time-related information, sorted by schedule and         |
| estimated start time.                                                |
+----------------------------------------------------------------------+
| **File Name**: skdrep29                                              |
+----------------------------------------------------------------------+
| **Primary Table**: SMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates, Schedules, Departments         |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
| -p"DEPTID=\<value\>"                                               |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../utilities                                                |
| /Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE), |
| [-p                                                                  | | SKDID](../Utilitie                                                   |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID), |
| and [-p                                                              | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Jobs Not in Use for a Year

+----------------------------------------------------------------------+
| **Description**: Shows the list of jobs still in the Master that     |
| never ran during a selected year.                                    |
+----------------------------------------------------------------------+
| **File Name**: rep001                                                |
+----------------------------------------------------------------------+
| **Primary Table**: JMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Year                                           |
+----------------------------------------------------------------------+
| **Parameters**: -p"YEAR=\<yyyy\>"                                  |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | YEAR](../Utili                                                       |
| ties/Command-line-Utilities/BIRT-Report-Generator.md#-p_YEAR) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Jobs on Annual Plan Calendar by Calendar

  -----------------------------------------------------------------------------------------------------------------------------

**Description**: Shows all jobs using a Positive Annual Plan Calendar and the dates each job runs, sorted by calendar name
  **File Name**: xref08
  **Primary Table**: CALDESC
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  -----------------------------------------------------------------------------------------------------------------------------

## Jobs on Annual Plan Calendar by Schedule

+----------------------------------------------------------------------+
| **Description**: Shows all jobs using a Positive Annual Plan         |
| Calendar and the dates each job runs, sorted by schedule.            |
+----------------------------------------------------------------------+
| **File Name**: xref12                                                |
+----------------------------------------------------------------------+
| **Primary Table**: JSKD                                              |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules                                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>"                                |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Jobs Using a Calendar

+----------------------------------------------------------------------+
| **Description**: Shows jobs using an Annual Plan Calendar, sorted by |
| schedule. The report uses a special filter for selecting calendars.  |
+----------------------------------------------------------------------+
| **File Name**: xref03                                                |
+----------------------------------------------------------------------+
| **Primary Table**: JSKD                                              |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules, Calendars                           |
+----------------------------------------------------------------------+
| **Parameters**: -p"CALDESC_CALID=\<value\>"                        |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | CALDESC_CALID](../utilities/Comm                                     |
| and-line-Utilities/BIRT-Report-Generator.md#-p_CALDESC_CALID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Jobs with a Start Offset

+----------------------------------------------------------------------+
| **Description**: Shows jobs with a Start Offset other than 00:00.    |
| Includes a job's schedule, frequency, and time-related information, |
| sorted by schedule.                                                  |
+----------------------------------------------------------------------+
| **File Name**: xref16                                                |
+----------------------------------------------------------------------+
| **Primary Table**: JSKD                                              |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules                                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>"                                |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Jobs with Cross-Day Dependencies by Schedule

+----------------------------------------------------------------------+
| **Description**: Shows jobs with cross-day dependencies plus related |
| jobs and their schedules, sorted by schedule.                        |
+----------------------------------------------------------------------+
| **File Name**: xref17                                                |
+----------------------------------------------------------------------+
| **Primary Table**: JDEPJOB                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules                                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>"                                |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Jobs with Initial Status of Disable Frequency

+----------------------------------------------------------------------+
| **Description**: Shows the details of all jobs with a build status   |
| of "Disable Frequency", sorted by schedule.                        |
+----------------------------------------------------------------------+
| **File Name**: skdrep50                                              |
+----------------------------------------------------------------------+
| **Primary Table**: JMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules, Departments                         |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>" -p"DEPTID=\<value\>"         |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| and [-p                                                              | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Jobs with Initial Status of Do Not Schedule

+----------------------------------------------------------------------+
| **Description**: Shows the details of all jobs with a build status   |
| of "Do Not Schedule", sorted by schedule.                          |
+----------------------------------------------------------------------+
| **File Name**: skdrep10                                              |
+----------------------------------------------------------------------+
| **Primary Table**: JMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules, Departments                         |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>" -p"DEPTID=\<value\>"         |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| and [-p                                                              | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Jobs with Initial Status of On Hold

+----------------------------------------------------------------------+
| **Description**: Shows the details of all jobs with a build status   |
| of "On Hold", sorted by schedule.                                  |
+----------------------------------------------------------------------+
| **File Name**: skdrep33                                              |
+----------------------------------------------------------------------+
| **Primary Table**: JMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules, Departments                         |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>" -p"DEPTID=\<value\>"         |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| and [-p                                                              | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Jobs with Initial Status of To be Skipped

+----------------------------------------------------------------------+
| **Description**: Shows the details of all jobs with a build status   |
| of "To be Skipped", sorted by schedule.                            |
+----------------------------------------------------------------------+
| **File Name**: skdrep51                                              |
+----------------------------------------------------------------------+
| **Primary Table**: JMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules, Departments                         |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>" -p"DEPTID=\<value\>"         |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| and [-p                                                              | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Machine Details by Machine Group

  ----------------------------------------------------------------------------------------

**Description**: Shows machines and all relevant information, sorted by machine group
  **File Name**: admin02
  **Primary Table**: MACHGRPS
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  ----------------------------------------------------------------------------------------

## Machine Details by OS Type

  ----------------------------------------------------------------------------------

**Description**: Shows machines and all relevant information, sorted by OS Type
  **File Name**: admin04
  **Primary Table**: MACHS
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  ----------------------------------------------------------------------------------

## Master Job Count by Agent Type

  --------------------------------------------------------------------------------------------------------

**Description**: Shows the job count in the Master, grouped by Agent Type (derived from the Job Type)
  **File Name**: stt007
  **Primary Table**: JMASTER
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  --------------------------------------------------------------------------------------------------------

## Master Job Count by Job Type and Sub-Type

  -------------------------------------------------------------------------------------------

**Description**: Shows the job count in the Master, grouped by Job Type and Job Sub-Type
  **File Name**: stt008
  **Primary Table**: JMASTER
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  -------------------------------------------------------------------------------------------

## Master Job Count by Machine and Machine Group

  -------------------------------------------------------------------------------------------

**Description**: Shows the job count in the Master, grouped by Machine and Machine Group
  **File Name**: stt006
  **Primary Table**: JMASTER
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  -------------------------------------------------------------------------------------------

## Master Job Count by Schedule

  --------------------------------------------------------------------------------

**Description**: Shows the job count in the Master tables, sorted by schedule
  **File Name**: stt009
  **Primary Table**: JMASTER
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  --------------------------------------------------------------------------------

## Master Job List with Selected Initial Build Status

+----------------------------------------------------------------------+
| **Description**: Shows a list of Master jobs in a selected Build     |
| Status, sorted by Schedule and Job Name.                             |
+----------------------------------------------------------------------+
| **File Name**: rep006                                                |
+----------------------------------------------------------------------+
| **Primary Table**: JSKD                                              |
+----------------------------------------------------------------------+
| **Required Filters**: Job Status                                     |
+----------------------------------------------------------------------+
| **Parameters**: -p"JOB_BUILD_STATUS=\<build status ID\>"           |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | JOB_BUILD_STATUS](../utilities/Command                               |
| -line-Utilities/BIRT-Report-Generator.md#-p_JOB_BUILD_STATUS) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Master Jobs with Advanced Frequency Settings

+----------------------------------------------------------------------+
| **Description**: Shows a list of Master jobs with a selected         |
| Advanced Frequency Setting, sorted by Schedule and Job Name. The     |
| report only contains results where the date for the Advanced         |
| Frequency Setting is in the future.                                  |
+----------------------------------------------------------------------+
| **File Name**: rep005                                                |
+----------------------------------------------------------------------+
| **Primary Table**: JSKD_AUX                                          |
+----------------------------------------------------------------------+
| **Required Filters**: Advance Frequency Code                         |
+----------------------------------------------------------------------+
| **Parameters**: -p"ADV_FREQUENCY=\<advanced frequency code\>"      |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | ADV_FREQUENCY](../utilities/Comm                                     |
| and-line-Utilities/BIRT-Report-Generator.md#-p_ADV_FREQUENCY) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Master Jobs with Latest Start Offset or Max Run Time

  -----------------------------------------------------------------------------------------------------------------------------------

**Description**: Shows the list of Master jobs with a Missed Start Time or Max Run Time defined, sorted by Schedule and Job Name
  **File Name**: rep007
  **Primary Table**: JSKD
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  -----------------------------------------------------------------------------------------------------------------------------------

## Master Jobs with Search Text

+----------------------------------------------------------------------+
| **Description**: Shows the list of Master jobs containing the        |
| defined search text within a specified field code.                   |
+----------------------------------------------------------------------+
| **File Name**: rep002                                                |
+----------------------------------------------------------------------+
| **Primary Table**: JMASTER_AUX                                       |
+----------------------------------------------------------------------+
| **Required Filters**: JAFC and VALUE                                 |
+----------------------------------------------------------------------+
| **Parameters**: -p"JAFC=\<field code\>" -p"VALUE=\<search         |
| text\>"                                                             |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | JAFC](../Utili                                                       |
| ties/Command-line-Utilities/BIRT-Report-Generator.md#-p_JAFC) |
| and [-p                                                              | | VALUE](../Utilit                                                     |
| ies/Command-line-Utilities/BIRT-Report-Generator.md#-p_VALUE) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Master Jobs with Threshold/Resource Dependencies

  -------------------------------------------------------------------------------------------------------------------------------------------------------------

**Description**: Shows the list of Master jobs that have threshold/resource dependencies, along with the threshold/resource name on which each job depends
  **File Name**: rep004
  **Primary Table**: JDEPTHR
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  -------------------------------------------------------------------------------------------------------------------------------------------------------------

## Master Jobs with Threshold/Resource Updates

  ---------------------------------------------------------------------------------------------------------------------------------------------------------

**Description**: Shows the list of Master jobs that update thresholds or resources, along with the threshold/resource that will be updated by each job
  **File Name**: rep003
  **Primary Table**: JTHR
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  ---------------------------------------------------------------------------------------------------------------------------------------------------------

## Monthly Count of Jobs That Failed More Than Once

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Description**: Sorted in descending order by month, provides a count of all jobs that failed more than once during the month. Includes start date, schedule name, and job name
  **File Name**: admin12
  **Primary Table**: HISTORY
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Not Completed Jobs by Date

+----------------------------------------------------------------------+
| **Description**: Shows the status of jobs that have not completed    |
| their run, with status and associated information, sorted by         |
| schedule date.                                                       |
+----------------------------------------------------------------------+
| **File Name**: skdrep04                                              |
+----------------------------------------------------------------------+
| **Primary Table**: SMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates, Schedules, Departments         |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
| -p"DEPTID=\<value\>"                                               |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../utilities                                                |
| /Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE), |
| [-p                                                                  | | SKDID](../Utilitie                                                   |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID), |
| and [-p                                                              | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Residual Dependencies by Schedule Date

+----------------------------------------------------------------------+
| **Description**: Reports all jobs that have not completed and the    |
| originating dependencies the jobs are awaiting. Also presents the    |
| subsequent dependencies affected. This report is sorted by schedule. |
+----------------------------------------------------------------------+
| **File Name**: admin10                                               |
+----------------------------------------------------------------------+
| **Primary Table**: SMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates, Schedules, Departments         |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
| -p"DEPTID=\<value\>"                                               |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../utilities                                                |
| /Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE), |
| [-p                                                                  | | SKDID](../Utilitie                                                   |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID), |
| and [-p                                                              | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Resource Requirements by Schedule

+----------------------------------------------------------------------+
| **Description**: Shows jobs in the Master tables that require a      |
| resource, sorted by schedule.                                        |
+----------------------------------------------------------------------+
| **File Name**: xref13                                                |
+----------------------------------------------------------------------+
| **Primary Table**: JDEPTHR                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules                                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>"                                |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Roles and Privileges

  ------------------------------------------------------------------------------------------------------------------------------------

**Description**: Shows OpCon roles, the users in each role, and all related departmental and non-departmental function privileges
  **File Name**: admin21
  **Primary Table**: ROLES
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  ------------------------------------------------------------------------------------------------------------------------------------

## SAP Failed Jobs by Date

+----------------------------------------------------------------------+
| **Description**: Shows failed SAP jobs and all associated            |
| information, sorted by schedule date.                                |
+----------------------------------------------------------------------+
| **File Name**: skdrep54                                              |
+----------------------------------------------------------------------+
| **Primary Table**: HISTORY                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates, Schedules, Departments         |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
| -p"DEPTID=\<value\>"                                               |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../utilities                                                |
| /Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE), |
| [-p                                                                  | | SKDID](../Utilitie                                                   |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID), |
| and [-p                                                              | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## SAP Job Status in Run Order

+----------------------------------------------------------------------+
| **Description**: Shows the SAP jobs, their current status,           |
| associated frequencies, and termination information, sorted in run   |
| order. The report determines run order using the actual start time   |
| or estimated start time of each job depending on whether the job has |
| started or not.                                                      |
+----------------------------------------------------------------------+
| **File Name**: skdrep53                                              |
+----------------------------------------------------------------------+
| **Primary Table**: SMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates, Schedules, Departments         |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
| -p"DEPTID=\<value\>"                                               |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../utilities                                                |
| /Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE), |
| [-p                                                                  | | SKDID](../Utilitie                                                   |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID), |
| and [-p                                                              | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Schedule Details by Schedule

+----------------------------------------------------------------------+
| **Description**: Shows all details of schedules from administration, |
| sorted by schedule.                                                  |
+----------------------------------------------------------------------+
| **File Name**: admin18                                               |
+----------------------------------------------------------------------+
| **Primary Table**: SNAME                                             |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules                                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>"                                |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Schedule Status by Date

+----------------------------------------------------------------------+
| **Description**: Shows the schedules, their status, and all          |
| associated information, sorted by schedule date.                     |
+----------------------------------------------------------------------+
| **File Name**: skdrep11                                              |
+----------------------------------------------------------------------+
| **Primary Table**: SSTATUS                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates,Schedules                       |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../Utilitie                                                 |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE) |
| and [-p                                                              | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Schedule Status by Schedule

+----------------------------------------------------------------------+
| **Description**: Shows the schedules, their status, and all          |
| associated information, sorted by schedule.                          |
+----------------------------------------------------------------------+
| **File Name**: skdrep13                                              |
+----------------------------------------------------------------------+
| **Primary Table**: SSTATUS                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates,Schedules                       |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../Utilitie                                                 |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE) |
| and [-p                                                              | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Schedule Status by Status

+----------------------------------------------------------------------+
| **Description**: Shows the schedules, their status, and all          |
| associated information, sorted by schedule status.                   |
+----------------------------------------------------------------------+
| **File Name**: skdrep12                                              |
+----------------------------------------------------------------------+
| **Primary Table**: SSTATUS                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule Dates,Schedules                       |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDDATE=\<value\>" -p"SKDID=\<value\>"        |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDDATE](../Utilitie                                                 |
| s/Command-line-Utilities/BIRT-Report-Generator.md#-p_SKDDATE) |
| and [-p                                                              | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Threshold Dependencies by Schedule

+----------------------------------------------------------------------+
| **Description**: Shows jobs in the Master tables that are dependent  |
| upon a threshold, and all associated information, sorted by          |
| schedule.                                                            |
+----------------------------------------------------------------------+
| **File Name**: xref02                                                |
+----------------------------------------------------------------------+
| **Primary Table**: JDEPTHR                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules                                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>"                                |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Threshold Post Processes by Schedule

+----------------------------------------------------------------------+
| **Description**: Shows jobs that set thresholds. Report includes     |
| present threshold value as well as the threshold value immediately   |
| following the job.                                                   |
+----------------------------------------------------------------------+
| **File Name**: admin15                                               |
+----------------------------------------------------------------------+
| **Primary Table**: JTHR                                              |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules                                      |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>"                                |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Top X Failed Jobs for Selected Month

+----------------------------------------------------------------------+
| **Description**: Shows a list of the top 'X' (e.g., Top 10) failed |
| jobs in history for a selected month and year.                       |
+----------------------------------------------------------------------+
| **File Name**: stt003                                                |
+----------------------------------------------------------------------+
| **Primary Table**: HISTORY                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Year, Month, Top (default value is 10)         |
+----------------------------------------------------------------------+
| **Parameters**: -p"YEAR=\<yyyy\>" -p"MONTH=\<mm\>"               |
| -p"TOP=\<number\>"                                                 |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | YEAR](../Utilit                                                      |
| ies/Command-line-Utilities/BIRT-Report-Generator.md#-p_YEAR), |
| [-p                                                                  | | MONTH](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_MONTH), |
| and [-p                                                              | | TOP](../Util                                                         |
| ities/Command-line-Utilities/BIRT-Report-Generator.md#-p_TOP) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Top X Longest Running Jobs for Selected Month

+----------------------------------------------------------------------+
| **Description**: Shows a list of the top 'X' (e.g., Top 10) jobs   |
| from history that took the longest time to run during a selected     |
| month and year.                                                      |
+----------------------------------------------------------------------+
| **File Name**: stt004                                                |
+----------------------------------------------------------------------+
| **Primary Table**: HISTORY                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Year, Month, Top (default value is 10)         |
+----------------------------------------------------------------------+
| **Parameters**: -p"YEAR=\<yyyy\>" -p"MONTH=\<mm\>"               |
| -p"TOP=\<number\>"                                                 |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | YEAR](../Utilit                                                      |
| ies/Command-line-Utilities/BIRT-Report-Generator.md#-p_YEAR), |
| [-p                                                                  | | MONTH](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_MONTH), |
| and [-p                                                              | | TOP](../Util                                                         |
| ities/Command-line-Utilities/BIRT-Report-Generator.md#-p_TOP) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Total vs Unique Job Summary

+----------------------------------------------------------------------+
| **Description**: Shows the count of all job names in the database    |
| and the count of how many of those job names are unique.             |
+----------------------------------------------------------------------+
| **File Name**: skdrep27                                              |
+----------------------------------------------------------------------+
| **Primary Table**: JMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedule, Department                           |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>" -p"DEPTID=\<value\>"         |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| and [-p                                                              | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## Unique Task Counts

  -----------------------------------------------------------------------------------------

**Description**: Shows the description of the unique task counts, including job counts
  **File Name**: uniquetaskcount
  **Primary Table**: TASKCOUNTS
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  -----------------------------------------------------------------------------------------

## Unisys File Dependencies by Schedule

+----------------------------------------------------------------------+
| **Description**: Lists file dependencies for OS 2200 and Unisys BIS  |
| jobs, sorted by schedule and job name.                               |
+----------------------------------------------------------------------+
| **File Name**: skdrep28                                              |
+----------------------------------------------------------------------+
| **Primary Table**: JMASTER                                           |
+----------------------------------------------------------------------+
| **Required Filters**: Schedules, Departments                         |
+----------------------------------------------------------------------+
| **Parameters**: -p"SKDID=\<value\>" -p"DEPTID=\<value\>"         |
|                                                                      |
|                                                                      |
|                                                                      |
| For detailed syntax requirements, refer to [-p                       | | SKDID](../Utiliti                                                    |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-_p_SKDID) |
| and [-p                                                              | | DEPTID](../Utiliti                                                   |
| es/Command-line-Utilities/BIRT-Report-Generator.md#-p_DEPTID) |
| in the **BIRT Report Generator** section of the **Utilities** online |
| help.                                                                |
+----------------------------------------------------------------------+

## User Accounts and Privileges

  -------------------------------------------------------------------------------------------------------------------------------------

**Description**: Shows OpCon User Accounts, Role Membership, and all related departmental and non-departmental function privileges
  **File Name**: admin07
  **Primary Table**: USERS
  **Required Filters**: \<None\>
  **Parameters**: \<None\>
  -------------------------------------------------------------------------------------------------------------------------------------

:::
