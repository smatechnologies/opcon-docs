# Job History Cleanup

The Job History Cleanup utility (History.exe) is an executable that
archives and purges job history. History.exe is installed to the <Target Directory\>\\OpConxps\\Utilities\\ directory with the SAM
installation package. This utility will only connect to the same
database that is configured for SAM in the SMA Connection Configuration
program.

- When archiving records, this process moves all active History
    records from the primary history table (HISTORY) to an archive table
    (HISTARC).
- When purging records, this process cleans up records from either the
    primary history (HISTORY) or archived history (HISTARC) tables
    according to the Cut-off Date, and Days to Keep settings.

For information on viewing job history, refer to [Using History Management](../../Files/UI/Enterprise-Manager/Using-History-Management.md)
 in the **Enterprise Manager** online help.

During installation, the SMAUtility schedule should have been imported.
On this schedule, jobs named Job History Archive, and Job History Purge
exist to schedule the Job History cleanup. For more information, refer
to [SMAUtility Schedule Job Descriptions](../../objects/schedules.md#smautility-schedule)
 in the **Concepts** online help.

## Syntax

Use the following syntax for the History.exe program in the <Target
Directory\>\\OpConxps\\Utilities\\ directory:

HISTORY.EXE -u<user\> -w<password\> -s<Schedule\>

-d<Days to Keep\|Cut-off Date\> -m<Min Records\> \[-h\] \[-p\]

### Parameters

The following describes the command-line parameters:

- **HISTORY.EXE**: The name of the job history cleanup program.
- **-u<User\>**: Any valid, case-sensitive OpCon User Login ID.
- **-w<Password\>**: The case-sensitive password corresponding to the
    User Login ID above.
- **-s<Schedule\>**: The Schedule name to clean up history records
    for. Omit this parameter to clean up history for all schedules
    (including deleted schedules).
- **-d<Days to Keep\|Cut-off Date\>**: Define either the Days to Keep
    or the Cut-off Date to determine what records to clean up.
  - Days to Keep: Define a number between 0 and 32,000 as a negative
        offset to the current date to start archiving or deleting
        records.
  - Cut-off Date: Define the oldest date to keep when archiving or
        deleting record. The date format must match the syntax
        recognized by the regional settings of the user running the
        utility.
- **-m<Min Records\>**: Defines the minimum number of history entries
    to keep per job. This number should be between 0 and 32000.
  - If the minimum records option is set to 10, the Purge Records
        option will keep the last 10 records of the selected schedule(s)
        and job(s), no matter what the Cut-off Date is. This option is
        useful for jobs that run once per month, quarter, or year.
  - If the value is set to 0 or the switch is omitted, the -d switch
        decides which records will be removed.
- **-h** (Optional): Indicates that the primary history (HISTORY)
    table is to be purged.
- **-p**(Optional): Indicates a purge is to take place instead of an
    archive. Specify -p *without* the -h switch to purge the     archive table (HISTARC).

### Examples

:::tip Example
The following shows the syntax used to archive the job history for all schedules:

```shell
history.exe -ubatchuser -wbatchpwd -d30 -m12
```

This will connect to the OpCon database defined for the SAM. The user is batchuser and the password is batchpwd. The schedule option was omitted, which means all schedules' history will be archived. (A -p switch was not listed to indicate a purge.) The days to keep was set to 30, which means the previous month's history will be kept. The minimum records parameter was set to 12, which means at least 12 records will be kept for each job. This is beneficial for jobs that run occasionally because the last 12 executions of the job will be kept, even if the executions are older than 30 days.
:::

:::tip Example
The following shows the syntax used to purge the job history from the archive table for all schedules:

```shell
history.exe -ubatchuser -wbatchpwd -d365 -m120 -p
```

This will connect to the OpCon database defined for the SAM. The user is batchuser and the password is batchpwd. The schedule option was omitted, which means all schedules' history will be deleted. The days to keep was set to 365, which means the previous year's history will be kept. The minimum records parameter was set to 120, which means at least 120 records will be kept for each job. The -p switch indicates that the records should be purged. The -a switch indicates that the records should be purged from the archive (HISTARC) table.
:::

## Logging

:::note
The Output Directory was configured during installation. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

The History log file provides detailed information regarding the history
clean up process.

- The log file resides in the <Output Directory\>\\SAM\\Log\\
    directory.
- Each time the History.exe runs, it creates a log file name with the
    following syntax: History_CCYYMMDD_HHmmssss.log. The "ssss" in
    syntax represents seconds and tenths of seconds (e.g.,
    History_20110513_15263142.log).
- Upon startup, History.exe checks the SAM\\Log folder for log files
    older than today and moves them to the appropriate archive
    subfolder.
  - All archived log files reside in the <Output
        Directory\>\\SAM\\Log\\Archive\\<Day\> folder.
  - If the History log files in the SAM\\Log are older than the
        oldest Archive folder, the old logs are simply deleted.

## Exit Codes

:::note
The Output Directory was configured during installation. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

The history.exe program uses the following exit codes:

|Status Number|Status Description|
|--- |--- |
|0|Batch run successful.|
|34001|Program aborted. Review the History.log file in the <Output Directory\>\SAM\Log folder and possibly the MSLSAM.log file in the <Output Directory\>\MSLSAM\Log folder for information.|
|34002|Invalid DSN, UserID, and/or Password.|
|34003|Invalid parameters given.|
|34004|The user on the command line does not have the required privileges.|
