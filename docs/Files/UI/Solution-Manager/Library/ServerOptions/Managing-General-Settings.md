# Managing General Settings

## Required Privileges

In order to access the Server Options page and configure the **General** setting, you must have the following:

- **Role**: User must be assigned to the Role_ocadm.

---

## General Settings

To configure General Settings, go to **Library** > **Server Options** > click on the **GENERAL** tab.

![Server Options - General Settings](../../../../../Resources/Images/SM/Library/ServerOptions/General-Settings-Textboxes.png "General Settings")
![Server Options - General Settings](../../../../../Resources/Images/SM/Library/ServerOptions/General-Settings-Switches.png "General Settings Continued")

### Configuration Options

The General category contains default behavior settings for the SAM.

|||||
|--- |--- |--- |--- |
|Job Dependency Offset Type|Calendar Days|Y|This parameter determines if the Job Dependencies with Offset values are calculated with calendar days or with occurrence of the job.If Calendar Days is selected, OpCon will look for the job on the specified number of calendar days offset from the current schedule date.If Occurrence is selected, OpCon will look for the job on the numbered occurrence of the schedule. JobB depends on JobA from yesterday's schedule, or if there were holidays in between - the last time Job A was on the schedule).The Calendar Days option would not meet this need because of the holiday requirement. With calendar days on a 5-day work week, the Tuesday through Friday jobs would resolve properly to the previous calendar day. However, the job on Monday would be looking for JobA on Sunday because it is one Calendar Day back.This customer should choose to use the Occurrence option for job dependency offset calculation. OpCon will look back to the last occurrence of Job A before "today", thus resolving properly for Monday through Friday on a 5-day schedule. Valid values are Calendar Days and Occurrence.|
|Alternate Odd and Even Weeks|False|Y|The alternate to the Odd/Even Weeks frequency is Every Other Week. By setting the Server Option "Alternate Odd and Even Weeks" to "True," jobs using the Odd/Even Weeks frequency will be treated as Every Other Week frequency.|
|Number of Runs Included in Job Average Calculations|10|Y|Defines the number of most recent job history records to use when SAM Calculates Job Averages. Valid values range from 1 to 999.|
|SAM Calculates Job Averages|False|Y|Determines if SAM calculates job start and run time averages after each job run. If this value is set to True:SAM calculates the average times the way the SMA_JOBAVG stored procedure does. For more information, refer to SMA_JOBAVG in the Database Information online help. SAM passes the following parameters for the calculation: SW1: The value from Server Options for Number of Runs Included in Job Average Calculations.SW2: 1SW3: 2SW4: The Schedule Name for the job that just ran.SW5: The Job Name that just ranSpecial: SAM passes a special parameter for the Frequency of the job that just ran.The job start and run time averages will only be recalculated for jobs that are in use in the Daily. This will keep the times more current, but may cause slight processing delays in SAM depending on the job processing load. If this value is set to False, set up the job SMA JOB AVERAGE on the SMAUtility schedule to run once per day. For more information, refer to SMA Job Average. Valid values are True and False.|
|Remove Period in Abbreviated Months and Days|False|Y|SAM will check this setting for resolving Tokens that contain abbreviated months and abbreviated days. If True, SAM strips the period from abbreviated months and days. If False, SAM leaves the period on abbreviated months and days. This setting should only be set to True for customers requiring backward compatibility to older versions of SAM used in the few locales where periods are now included by default with some abbreviations.|
|Allow Wild Cards in Events|False|Y|This parameter indicates whether or not \* (asterisk) and ? (question mark) are treated as wild cards in Schedule, Job, and Machine Names within Events.|
|TLS Certificate Serial Number|*blank*|Y|This parameter is an identifier of the digital certificate that is optionally assigned to the OpCon server's SMANetCom program, required only when TLS Client Validation has been selected by one or more LSAMs. This number can be found in the certificate store of the machine where the OpCon server is installed. When blank, the OpCon server's SMANetCom program will not supply a TLS Client certificate to any LSAM. Note: If an LSAM requires TLS Client validation, but SMANetCom does not provide its certificate, then the communication link with that LSAM will fail to connect.|
|Login Security Message|*blank*|Y|This parameter  configures a security message to display to users after logging into  the application. If a value is specified, then this value is shown in the  security message that is displayed to users after login. Note: This parameter configures the security message to display in both the Enterprise Manager and Solution Manager applications.|
|Incident Management System|*blank*|Y|This parameter identifies the name of the ticketing system that is used for incident management. If a value is specified, then this value  is used  as a label to replace the "Incident Ticket ID" label in the Daily Job Information dialog.|
|Allow Job Events to Restart Schedules|False|Y|This parameter configures the SAM to allow an event to start a completed schedule. If this option is activated, the following events cause the restart of a completed schedule:$JOB:ADD$JOB:RESTART$JOB:RESCHEDULE. By default, the SAM does not restart a completed schedule and logs the event as an error in the Critical.log. When this option is activated, the SAM restarts a schedule to allow events to process if they are received after a schedule is completed. Valid values are True and False.|
|Failed jobs should keep the Schedule "In Process"|False|Y|This parameter configures the SAM to keep schedules In Process that contain Failed jobs and Marked Failed jobs. By default, the SAM closes a schedule when all jobs are in one of the following job status categories: Cancelled, Skipped, Finished OK, or Failed. Refer to Jobs Status Change Commands. Valid values are True and False.|
|Number of Days to Keep a Service Request Execution|7|Y|This parameter defines the number of days to retain service request execution history.|
|Solution Manager URL|*blank*|N|This parameter defines the Solution Manager URL to allow opening Solution Manager within the Enterprise Manager. If a value is specified, a Solution Manager option will appear in the Navigation frame. Note: After defining a URL and saving the value, you must log out then log in to the Enterprise Manager for the Solution Manager option to appear in the Navigation frame.|