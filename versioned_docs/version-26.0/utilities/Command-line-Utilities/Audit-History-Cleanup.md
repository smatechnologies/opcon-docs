# Audit History Cleanup

The Audit Cleanup utility (Audit.exe) is an executable that archives and
purges audit data. Audit.exe is installed to the <Target
Directory\>\\OpConxps\\Utilities\\ directory with the SAM installation
package. This utility will only connect to the same database that is
configured for SAM in the SMA Connection Configuration program.

- When archiving records, this process moves all active Audit records
    from the primary auditing table to a table used for viewing audit
    data in the Enterprise Manager. For more information, refer to
    [Using Audit     Management](../../Files/UI/Enterprise-Manager/Using-Audit-Management.md)
     in the **Enterprise Manager** online help.
- When purging records, this process cleans up records from the audit
    viewing table according to the Days to Keep\|Cut-off Date setting.

During installation, the SMAUtility schedule should have been imported.
On this schedule, jobs named Job History Archive and Audit History Purge
exist to schedule the Audit history cleanup. For more information, refer
to [SMAUtility Schedule Job Descriptions](../../objects/schedules.md#smautility-schedule)
 in the **Concepts** online help.

## Syntax

Use the following syntax for the Audit.exe program in the <Target
Directory\>\\OpConxps\\Utilities\\ directory:

AUDIT.EXE -u<User\> -w<Password\> -d<Days to Keep\|Cut-off Date\>
\[-p\]

### Parameters

The following describes the command-line parameters:

- **AUDIT.EXE**: The name of the audit management program.
- **-u<User\>**: Any valid, case-sensitive OpCon User Login ID.
- **-w<Password\>**: The case-sensitive password corresponding to the
    User Login ID.
- **-d<Days to Keep\|Cut-off Date\>**: Defines either the Days to
    Keep or the Cut-off Date to determine what records to clean up.
  - Days to Keep: Defines a number between 0 and 32,000 as an
        negative offset to the current date, to start archiving or
        deleting records.
  - Cut-off Date: Defines the oldest date to keep when archiving or
        deleting records. The date must be in the format of the syntax
        recognized by the regional settings of the user running
        Audit.exe.
  - -p (Optional): Informs Audit.exe to purge the audit viewing
        table (AUDITRECSVIEW). If not specified, the Audit.exe program
        will archive the active audit table (AUDITRECS).

## Logging

:::note
The Output Directory was configured during installation. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

The Audit log file provides detailed information regarding the audit
history clean up process.

- The log file resides in the <Output Directory\>\\SAM\\Log\\
    directory.
- Each time the Audit.exe runs, it creates a log file name with the
    following syntax: Audit_CCYYMMDD_HHmmssss.log. The "ssss" in
    syntax represents seconds and tenths of seconds (e.g.,
    Audit_20110513_15263142.log).
- Upon startup, Audit.exe checks the SAM\\Log folder for log files
    older than today and moves them to the appropriate archive
    subfolder.
  - All archived log files reside in the <Output
        Directory\>\\SAM\\Log\\Archive\\<Day\> folder.
  - If the History log files in the SAM\\Log are older than the
        oldest Archive folder, the old logs are simply deleted.

## Exit Codes

The Audit.exe program uses the following exit codes:

|Status Number|Status Description|
|--- |--- |
|0|Batch run successful|
|35001|Program aborted. Review the Audt.log file in the <Output Directory\>\SAM\Log folder and possibly the MSLSAM.log file in the <Output Directory\>\MSLSAM\Log folder for information.|
|35002|Invalid DSN, UserID, and/or Password|
|35003|Invalid parameters given|
|35004|The user on the command line does not have the required privileges.|
