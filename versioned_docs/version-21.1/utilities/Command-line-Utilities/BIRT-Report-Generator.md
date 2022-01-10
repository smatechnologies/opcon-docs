# BIRT Report Generator

The BIRT Report Generator utility (BIRTRptgen.exe) calls the BIRTPROCESSOR handler to execute reports created with the Business Intelligence and Reporting Tools (BIRT). SMA Technologies distributes many predefined reports with OpCon that can be scheduled using the BIRT Report Generator program. BIRTrptgen.exe is installed with the SAM to the <Target Directory\>\\OpConxps\\Utilities\\ directory. All reports executed by the BIRT Report Generator must exist in the following folder: `<Target Directory>\OpConxps\SAM\BIRT\ReportEngine\OpConXPS_Reports`

During installation, the Report Generator schedule should have been imported. On this schedule, SMA Technologies has provided one template job for every distributed report. For more information, refer to [Report Generator Schedule](../../objects/schedules.md#report-generator-schedule).

## Syntax

Use the following syntax for the BIRTRptgen.exe program in the <Target Directory\>\\OpConxps\\Utilities\\:

`BIRTRptgen.exe --r<report> [-j[[$JOBID]]] [-t<file type] [-o<output target file>] [-p<parameters>]`

### Parameters

The following describes the command-line parameters:

- **BIRTRptgen.exe**: The name of the BIRT Report Generator program.
- **-r** <report\>: Defines file name for the report to run.
  - This parameter is required.
  - No file extension needs to be given.
- **-j\[\[$JOBID\]\]**: The unique internal job number for the job when it executes. Define this parameter if you would like to see the final output location and file name in the "Additional Job Information" for a job from any Operations Job Information view.
  - The value of \[\[$JOBID\]\] is the only way to accurately retrieve the unique internal job number on each execution of the job.
- **-t** <file type\>: Defines the format of the file.
  - This parameter is optional. If not specified, the default is PDF.
  - Valid options are PDF, HTML, and XLS.

    :::note
    When reports are exported to XLS format, the following limitations are applied:

    - The final XLS file will not contain the report header and footer.
    - Report charts are not exported into the XLM format.
    :::

- **-o** <output target file\>: Defines the path or email address to send the report to.
  - This parameter is optional. If not specified, the default path is the <Output Directory\>\\SAM\\Log\\Reports folder.
  - The default report name is <report\>\_<message bus ID\>.<format type\>.
  - Use a path for the target folder and file name on any network machine that the system account on the SAM server has access to (e.g., C:\\My Reports\\new report name). Use a full path or a UNC; however, only UNC shares shared to "Everyone" will be successful. The BIRTPROCESSOR runs as the local system account on the SAM application server and will have limited network access.
  - Use an email address. To send to multiple addresses, separate them with semicolons (e.g., test\@smatechnologies.com;testgrp\@smatechnologies.com).
  - The attached file name will always be <report\>\_<message bus ID\>.<format type\>.
- **-p** <parameters\>: Defines all of the connection and selection criteria for the job. Refer to the next section for a [Parameters](#Paramete). For information on the required parameters for each report, refer to the descriptions in the [Reports](../../reports/predefined.md) online help.

:::note
Date ranges should be written as oldest to newest date.
:::

#### Parameters

- -p **Driver_URL**
  - Definition: Defines the connection path to the database. Only specif this parameter to connect to some other database than this OpCon database.
  - For SQL Authentication, use the following syntax and also supply the User_Name and User_Password parameters: `-p "Driver_URL=jdbc:jtds:sqlserver://servername/databasename"`
  - For Windows Authentication, use the following syntax and also supply the User_Name and User_Password parameters: `-p "Driver_URL=jdbc:jtds:sqlserver://servername/databasename;domain=<name>"`
- -p **User_Name**
  - Definition: Defines SQL or Windows User ID to connect to the database. Only specify this parameter to connect to some other database than this OpCon database.
  - Syntax for SQL: `-p "User_Name=UserName"`
- -p **User_Password**
  - Definition: Defines the a clear text password for SQL or Windows User ID to connect to the database. Only specify this parameter to connect to some other database than this OpCon database.
  - Syntax: `-p "User_Password=UserPassword"`
- -p **SKDDATE**
  - Definition: Defines the schedule date(s) for the report.
  - Syntax: `-p "SKDDATE=<date>"`
  - The <date\> can be either a Microsoft formatted date or in the format of CCYY-MM-DD. For the current schedule date, use the  \[\[$SCHEDULE DATEMS\]\] token.
  - For all dates, use: `-p "SKDDATE>0"`
  - For a range of Dates, use: `-p "SKDDATE=<date> to <date>"`
- -p **SKDID**
  - Definition: Defines the schedule ID(s) for the report.
  - Syntax: -p `"SKDID=<schedule>"`
  - The <schedule\> can be a Schedule ID or a Schedule Name. For current schedule ID, use the \[\[$SCHEDULE ID\]\] token
  - For all schedules, use: `-p "SKDID>0"`
  - For multiple schedules, separate the list of IDs or Names with commas (e.g., `-p "SKDID=1,2,3"` **- or -** `-p "SKDID=MySchedule1,MySchedule2"`)
- -p **DEPTID**
  - Definition: Defines the department ID(s) for the report.
  - Syntax: `-p "DEPTID=<department>"`
  - The <department\> can be a Department ID or a Department Name.
  - For all departments, use: `-p "DEPTID>0"`
  - For multiple departments, separate the list of IDs or Names with commas (e.g., `-p "DEPTID=1,2,3"` **- or -** `-p "DEPTID=MyDepartment1,MyDepartment2"`)
- -p **JOBTYPEID**
  - This is an optional parameter.
  - Definition: Defines the job type ID(s) for the report.
  - Syntax: `-p "JOBTYPEID=<job type>"`
  - The <job type\> can be one of the following:
    - -1 = Null
    - 1 = File Transfer
    - 3 = Windows
    - 4 = OpenVMS
    - 5 = IBM i
    - 6 = UNIX
    - 7 = OS 2200
    - 9 = MCP
    - 11 = BIS
    - 12 = z/OS
    - 13 = SAP R/3 and CRM
    - 14 = SAP BW
    - 15 = Container
    - 17 = Java
    - 18 = Tuxedo ART
  - For multiple job types, separate the list of IDs with commas (e.g., `-p "JOBTYPEID=1,2,3"`)
- -p **ENSOPTIONS_OPTION**
  - Definition: Defines the tab from Notification Management against which to run the report.
  - Syntax: `-p "ENSOPTION_OPTION=<option>"`
  - The <option\> can be **M** (Machines), **S** (Schedules), or **J** (Jobs)
- -p **MACHS_MACHID**
  - Definition: Defines the machine ID(s) for the report.
  - Syntax: `-p "MACHS_MACHID=<machine>"`
  - The <machine\> can be a Machine ID or a Machine Name.
  - For all machines, use: `-p "MACHS_MACHID>0`"
  - For multiple machines, separate the list of IDs or Names with commas (e.g., `-p "MACHS_MACHID=1,2,3"` **- or -** `-p "MACHS_MACHID=Windows1,Windows2"`)
- -p **MACHGRPS_MACHGRPID**
  - Definition: Defines the machine group ID(s) for the report.
  - Syntax: `-p "MACHGRPS_MACHGRPID=<group>"`
  - The <group\> can be a Machine Group ID or a Machine Group Name.
  - For all machine groups, use: `-p "MACHGRPS_MACHGRPID>0"`
  - For multiple machine groups, separate the list of IDs or Names with commas (e.g., `-p "MACHGRPS_MACHGRPID=1,2,3"` **- or -** `-p "MACHGRPS_MACHGRPID=WindowsGRP1,WindowsGRP2"`)
- -p **HISTORY_JSTART**
  - Definition: Defines the month in job history for the report.
  - Syntax: `-p "History_JSTART=CCYYMM"`
  - Example: `-p "History_JSTART=201103"`
- -p **HISTARC_SKDDATE**
  - Definition: Defines the date(s) in the history archive table for the report.
  - Syntax: `-p "HISTARC_SKDDATE=<date>"`
  - Example: `-p "HISTARC_SKDDATE=2011-03-31"`
  - The <date\> can be either a Microsoft formatted date or in the format of CCYY-MM-DD.
  - For all dates, use: `-p "HISTARC_SKDDATE>0"`
  - For a range of Dates, use: `-p "HISTARC_SKDDATE=<date> to<date>"`
- -p **HISTORY_SKDDATE**
  - Definition: Defines the date(s) in the history table for the report.
  - Syntax: `-p "HISTORY_SKDDATE=<date>"`
  - Example: `-p "HISTORY_SKDDATE=2011-03-31"`
  - The <date\> can be either a Microsoft formatted date or in the format of CCYY-MM-DD.
  - For all dates, use: `-p "HISTORY_SKDDATE>0"`
  - For reports that support a range of Dates, use: `-p "HISTORY_SKDDATE=<date> to <date>"`
- -p **AUDITHST_SQLDATE**
  - Definition: Defines the date(s) in the history view table for the report.
  - Syntax: `-p "AUDITHST_SQLDATE=<date>"`
  - Example: `-p "AUDITHST_SQLDATE=2011-03-31"`
  - The <date\> can be either a Microsoft formatted date or in the format of CCYY-MM-DD.
  - For all dates, use: `-p "AUDITHST_SQLDATE>0"`
  - For a range of Dates, use: `-p "AUDITHST_SQLDATE=<date> to <date>"`
- -p **CALDESC_CALID**
  - Definition: Defines the calendar ID(s) for the report.
  - Syntax: `-p "CALDESC_CALID=<calendar>"`
  - The <calendar\> can be a Calendar ID or a Calendar Name.
  - For all calendars, use: `-p "CALDESC_CALID>0"`
  - For multiple calendars, separate the list of IDs or Names with commas (e.g., `-p "CALDESC_CALID=1,2,3"` **- or -** `-p "CALDESC_CALID=Master Holiday,Fiscal"`)
- -p **TAGNAME**
  - Definition: Defines the Tag Name(s) for the report.
  - Syntax: `-p "TAGNAME=<tag name>"`
  - For multiple Tags, separate the list of Tag Names with commas (e.g., `-p "TAGNAME=Critical,Accounting"`)
- -p **JOB_BUILD_STATUS**
  - Definition: Defines the build status of the job.
  - Syntax: `-p"JOB_BUILD_STATUS=<build status ID>"`
  - The <build status ID\> can be one of the following:
    - 0 = On Hold
    - 99 = Releases
    - -1 = To Be Skipped
    - -99 = Disable Frequency
    - 1000 = Disable Build (in the Job Details frame)
- -p **JAFC**
  - Definition: Defines the JAFC for the report.
  - Syntax: `-p"JAFC=<field code>"`
  - The <field code\> can be one of the following:
    - 3003 = Windows: Command Line
    - 3004 = Windows: Working Directory
    - 5008 = IBMi: Job Information (Job Description Name)
    - 5010 = IBMi: Job Information (Job Queue Name)
    - 5022 = IBMi: Call Information (Call)
    - 6001 = Unix: Start Image
    - 6002 = Unix: Parameters
- -p **VALUE**
  - Definition: Defines the user-defined text filter for the report.
  - Syntax: -p"VALUE=<search text\>"
  - The <search text\> is the string to use when filtering the report data.
  - SQL wildcard characters are supported. Use percent (%) for substitution of one or more characters. Use underscore (\_) for substitution of a single character.
  - Example: To filter for all the items which contain "gen", use `-p"VALUE=%gen%"`
- -p **ADV_FREQUENCY**
  - Definition: Defines the advanced frequency option to use for the report.
  - Syntax: `-p"ADV_FREQUENCY=<advanced frequency code>"`
  - The <advanced frequency code\> must be one of the following:
    - 103 = Start Scheduling on
    - 104 = End Scheduling on
    - 105 = Include in Schedule on
    - 106 = Exclude from Schedule on
    - 107 = Exclude Month from Schedule
    - Example: -p"ADV_FREQUENCY=103"
- -p **YEAR**
  - Definition: Defines the history year for the report.
  - Syntax: `-p "YEAR=<year>"`
  - The <year\> is a four-digit year. For example: `-p "YEAR=2015"`
  - For the current schedule year, use the \[\[$SCHEDULE DATE yyyy\]\] global property.
- -p **JOB_STATUS**
  - Definition: Defines the job status.
  - Syntax: `-p"JOB_STATUS=<job status code>"`
  - The <job status code\> must be one of the following:
    - 900 = Finished OK
    - 910 = Failed
    - 920 = Marked Finished OK
    - 921 = Marked Failed
    - 940 = Skipped
    - Example: -p"JOB_STATUS=910"
- -p **MONTH**
  - Definition: Defines the history month for the report.
  - Syntax: `-p "MONTH=<month>"`
  - The <month\> is the digit number for the month. For example:
    - 01: January
    - 02: February
  - For the current schedule month, use the \[\[$SCHEDULE DATE mm\]\] global property.
- -p **TOP**
  - Definition: Defines the maximum number of occurrences to show for the report.
  - Syntax: `-p "TOP=<number>"`
  - The <number\> is a positive integer value.
  - Default Value: 10
- -p **HIGHLIGHT**
  - Definition: Highlights the grid cell in the report if the number in that cell is greater than or equal to the defined number.
  - Syntax: `-p"HIGHLIGHT=<number>"`
  - Default Value: 10
  - The <number\> is a positive integer value.
  - Example: `-p"HIGHLIGHT=20"`

## Exit Codes

:::note
The Output Directory was configured during installation. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

The BIRTRptGen.exe program uses the following exit codes:

|Status Number|Status Description|
|--- |--- |
|0|Batch Run successful.|
|-1|Program aborted. Review the BIRTRptGen.log file in the <Output Directory\>\Utilities\Log folder and possibly the MSLSAM.log file in the <Output Directory\>\MSLSAM\Log folder for information.|
|-101|General program error in the wrapper program. Review the BIRTRptGen.log file in the <Output Directory\>\Utilities\Log folder.|
|-102|General program error in the SMA Processor handler. Review the SMAProcessor.log on the SAM server in the <Output Directory\>\SAM\Log folder.|
