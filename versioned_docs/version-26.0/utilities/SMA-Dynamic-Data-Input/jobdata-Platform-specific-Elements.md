---
title: <jobdata\> Platform-specific Elements
description: "Reference for platform-specific jobdata elements in SMA Dynamic Data Input."
product_area: Utilities
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - System Configuration
last_updated: 2026-03-18
doc_type: conceptual
---

# <jobdata\> Platform-specific Elements

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The `<jobdata>` element in SMA Dynamic Data Input holds platform-specific fields that vary by job type. Each platform — Windows, UNIX, IBM i, SAP, SQL, z/OS, and others — has its own set of child elements that map to the corresponding job task detail fields in OpCon.

- [Container Job Element Structure](#Containe)
- [File Transfer Job Element Structure](#File)
- [IBM i Job Element Structure](#IBM)
- [Java Job Element Structure](#Java)
- [MCP Job Elements](#MCP)
- [OpenVMS Job Element Structure](#OpenVMS)
- [OS 2200 Job Elements](#OS)
- [SAP R/3 and CRM Job Element Structure](#SAP)
- [SAP BW Job Element Structure](#SAP2)
- [SQL Job Element Structure](#SQL)
- [Tuxedo ART Job Element Structure](#Tuxedo)
- [UNIX Job Element Structure](#UNIX)
- [Windows Job Elements](#Windows)
- [z/OS Job Elements](#z/OS)

## Container Job Element Structure

Enter either **new_master** or **new_daily** for the msgtype. For
Detailed information on each field for this job type, refer to
[Container Job Type](../../job-types/container.md)
 in the **Concepts** online help.

<jobdata\>

    <cntnr_subskd\></cntnr_subskd\>

</jobdata\>

### Element Definitions

#### <cntnr_subskd\></cntnr_subskd

Defines the schedule that will run as a
SubSchedule under the control of the container job.

- **Requirements**: Required
- **EM field label**: Schedule to run as Sub-Schedule
- **Valid Values**: Valid data for this element contains the schedule
 the user has privileges to that has the SubSchedule flag marked True
 in their schedule definition except the current schedule. Valid data
 for this element is the name of any schedule, except the schedule
 identified by the <skdname\> element that is allowed as a
 subschedule. A schedule must have the SubSchedule indicator set to
 be allowed as a SubSchedule.

## File Transfer Job Element Structure

Enter either new_master or new_daily for the msgtype. For detailed
Information on each field for this job type, refer to [File Transfer Job Details](../../job-types/file-transfer.md)
 in the **Concepts** online help.

<jobdata\>

   <host_name\></host_name\>

   <ft_src_user\></ft_src_user\>

   <ft_src_file\></ft_src_file\>

   <ft_dest_user\></ft_dest_user\>

   <ft_dest_file\></ft_user_file\>

   <ft_xqt_mach\></ft_xqt_mach\>

   <ft_mode\></ft_mode\>

   <ft_compress\></ft_compress\>

   <ft_encrypt\></ft_encrypt\>

   <ft_overwrt\></ft_overwrt\>

   <ft_failpref\></ft_failpref\>

   <ft_bandwidth\></ft_bandwidth\>

   <dest_mach\></dest_mach\>

   <ft_dest_dt\></ft_dest_dt\>

   <ft_tls_override\></ft_tls_override\>

</jobdata\>

### Element Definitions

#### <host_name\></host_name\>

Defines the Source Machine for the transfer.
To qualify as a machine for this field, a machine must be enabled for
File transfer in the [File Transfer Settings](../../objects/machines.md#File) category in
The Machine's advanced settings.

- **Requirements**: Required
- **EM field label**: Machine
- **Valid Values**:
 - Characters: 1-24
 - Invalid Characters: ' (single quote), \~ (tilde), \`(grave
 accent)

#### <ft_src_user\></ft_src_user\>

Contains the user name for the Source user
If the platform requires a user name. If the platform does not require a
User name, specify N/A.

- **Requirements**: Required
- **EM field label**: User
- **Valid Values**:
 - Characters: 1-60

#### <ft_src_file\></ft_src_file\>

Contains the full path and the file name of
The source file to be transferred.

- **Requirements**: Required
- **EM field label**: File
- **Valid Values**:
 - Characters: 1-512

#### <ft_dest_user\></ft_dest_user\>

Contains the user name for the destination
User if the platform requires a user name. If the platform does not
Require a user name, specify N/A.

- **Requirements**: Required
- **EM field label**: User
- **Valid Values**:
 - Characters: 1-60

#### <ft_dest_file\></ft_dest_file\>

Contains the full path and file name of the
Destination file to be transferred to.

- **Requirements**: Required
- **EM field label**: File
- **Valid Values**:
 - Characters: 1-512

#### <FT_xqt_mach\></FT_xqt_mach\>

Defines which machine will initiate the File
Transfer communication.

- **Requirements**: This is an Optional Field. If not specified, the
 value defaults to Destination.
- **EM field label**: Start Transfer On
- **Valid Values**: Destination, Source

#### <ft_mode\></ft_mode\>

Defines the Source Data Type of the file to
Transfer.

- **Requirements**: Required
- **Valid Values**: ASCII, Binary, Default Text, EBCDIC

:::note
If Binary is used for the source data type, it WILL also be used for the destination data type as well, regardless of the value specified for the <ft_dest_dt\> tag. If the Destination Data Type is Binary and the Source Data Type is not Binary, errors will display.
:::

#### <ft_compress\></ft_compress\>

Allows selecting compression
Options.

- **Requirements**: Required
- **Valid Values**: None, Required, Preferred

#### <ft_encrypt\></ft_encrypt\>

Specifies if this field must be used, is not
Used, or use is preferred.

- **Requirements**: Required
- **Valid Values**: <none\>, Required, Preferred

#### <ft_overwrt\></ft_overwrt\>

Specifies what the user wants to do if the
File already exists on the destination machine.

- **Requirements**: Required
- **Valid Values**: Do Not overwrite, Overwrite, Backup then
 Overwrite, Append, Backup then Append.

#### <FT_delsrcfile\></FT_delsrcfile\>

Determines if the source file will be
Deleted after the SMAFT process completes successfully.

- **Requirements**: Required, and if data is not
 provided it will be set to "No".
- **EM field label**: Delete Source File
- **Valid Values**: No, Required, Preferred

#### <ft_failpref\></ft_failpref\>

Allows an FT job return a fail code if the
"Preferred" Encryption and Compression settings are not met.

- **Requirements**: Required
- **EM field label**: Fails if preferred settings not satisfied
- **Valid Values**: Yes, No

#### <ft_bandwidth\></ft_bandwidth\>

Sets the transfer rate of the file and
Allows the user to "throttle back" bandwidth usage.

- **Requirements**: Required
- **Valid Values**: 64, 128, 256, 512, 1024, 2048, \>2048

#### <dest_mach\></dest_mach\>

Defines the name of the destination machine
For the file transfer. In order to qualify as a machine for this field,
A machine must be enabled for file transfer in the [File Transfer Settings](../../objects/machines.md#File) category in
The Machine's advanced settings.

- **Requirements**: Required
- **EM field label**: Machine
- **Valid Values**:
 - Characters: 1-24
 - Invalid Characters: ' (single quote), \~ (tilde), \`(grave
 accent)

#### <ft_dest_dt\></ft_dest_dt\>

Defines the type of the file (ASCII, Binary,
Default Text, or EBCDIC) to receive.

- **Requirements**: Required
- **Valid Values**: ASCII, Binary, Default Text, EBCDIC

:::note
If Binary is used for the source data type, it WILL also be used for the destination data type as well, regardless of the value specified for the <ft_dest_dt\> tag. If the Destination Data Type is Binary and the Source Data Type is not Binary, errors will display.
:::

#### <ft_tls_override\></ft_tls_override\>

Specifies whether the file transfer
Should take place over a secure connection if possible, must take place
Over a secure connection, or must not take place over a secure
Connection.

- **Requirements**: Optional
- **Valid Values**: Preferred, Required, None

## IBM i Job Element Structure

The following sample code contains the structure for defining every
Possible element for IBM i Primary Job Elements. For detailed
Information on each field for this job type, refer to [IBM i Job Details](../../job-types/ibm-i.md) in
The **Concepts** online help.

<msg\>

   <msgtype\> </msgtype\>

   <schedule\>

      <job\>

         <jobdata\>

**\-\-\-\-\--**[Job Information Element Definitions](#Job2)**\-\-\-\-\--**

            <job_type\></job_type\>

            <i5_userid\></i5_userid\>

            <job_q\_pri\></job_q\_pri\>

            <job_date\></job_date\>

            <acct_code\></acct_code\>

            <curr_lib\></curr_lib\>

            <init_lib\></init_lib\>

            <job_desc_name\></job_desc_name\>

            <job_desc_lib\></job_desc_lib\>

            <batchq_name\></batchq_name\>

            <batchq_lib\></batchq_lib\>

            <outputq_name\></outputq_name\>

            <outputq_lib\></outputq_lib\>

**\-\-\-\-\--**[Call Information Element Definitions](#Call)**\-\-\-\-\--**

            <i5os_prerun\></i5os_prerun\>

            <call_script\></call_script\>

            <ftp_remtsys\></ftp_remtsys\>

            <ftp_act\></ftp_act\>

            <ftp_tfr\></ftp_tfr\>

            <ftp_user\></ftp_user\>

            <ftp_lclfn\></ftp_lclfn\>

            <ftp_lcldir\></ftp_lcldir\>

            <ftp_rmtfn\></ftp_rmtfn\>

            <ftp_rmtdir\></ftp_rmtdir\>

**\-\-\-\-\--**[File Arrival Element Definitions](#File4)**\-\-\-\-\--**

            <ibmi_cfa_read\></ibmi_cfa_read\>

            <ibmi_cfa_write\></ibmi_cfa_write\>

            <ibmi_cfa_exec\></ibmi_cfa_exec\>

            <ibmi_chk_file_lck_db2\></ibmi_chk_file_lck_db2\>

            <ibmi_file_2\_watch\></ibmi_file_2\_watch\>

            <ibmi_file_start_watch\></ibmi_file_start_watch\>

            <ibmi_file_end_watch\></ibmi_file_end_watch\>

            <ibmi_file_stable\></ibmi_file_stable\>

            <ibmi_filearrival_failcode\></ibmi_filearrival_failcode\>

            <ibmi_dynvar_filename\></ibmi_dynvar_filename\>

            <ibmi_dynvar_reccnt\></ibmi_dynvar_reccnt\>

**\-\-\-\-\--**[Log Information Element Definitions](#Log)**\-\-\-\-\--**

            <log_lvl\></log_lvl\>

            <sev_lvl\></sev_lvl\>

            <txt_opt\></txt_opt\>

            <cl_log\></cl_log\>

            <inq_msg\></inq_msg\>

            <joblogs_keep_occur\> </joblogs_keep_occur\>

            <joblogs_keep_days\> </joblogs_keep_days\>

**\-\-\-\-\--**[Message Element Definitions](#Message)**\-\-\-\-\--**

            <msg_info\>

            <msg_id\></msg_id\>

            <msg_cmpdata\></msg_cmpdata\>

            <msg_pos\></msg_pos\>

            <msg_sev\></msg_sev\>

            <msg_actn\></msg_actn\>

            <msg_reply\></msg_reply\>

            <msg_endjob\></msg_endjob\>

            <msg_events\></msg_events\>

            </msg_info\>

**\-\-\-\-\--**[Spools Element Definitions](#Spools)**\-\-\-\-\--**

            <spl_info\>

            <spl_name\></spl_name\>

            <spl_user\></spl_user\>

            <spl_outq_name\></spl_outq_name\>

            <spl_outq_lib\></spl_outq_lib\>

            <spl_copies\></spl_copies\>

            <spl_hld\></spl_hld\>

            <spl_save\></spl_save\>

            </spl_info\>

**\-\-\-\-\--**[Variables Element Definitions](#Variable)**\-\-\-\-\--**

            <ibmi_agent_var_info\>

            <ibmi_agent_var\></ibmi_agent_var\>

            <ibmi_agent_var_val\></ibmi_agent_var_val\>

            </ibmi_agent_var_info\>

         </jobdata\>

      </job\>

   </schedule\>

</msg\>

### Job Information Element Definitions

#### <JOB_TYPE\></JOB_TYPE\>

Defines the IBM i job type.

- **Requirements**: Required for IBM i <jobdata\>
- **EM field label**: Job Type
- **Valid Values**: The following values are provided in a list of
 available options: Batch Job, Tracked Job, Queued Job, Operator
 Replay Job, Restricted Mode, and FTP.

#### <I5_USERID\></I5_USERID\>

Defines the name of the IBM i user profile under which the job should be
Submitted.

- **Requirements**: Required for IBM i <jobdata\>
- **EM field label**: User ID
- **Valid Values**: All values from the Batch User Privileges screen
 that the user has privileges to.

#### <JOB_Q\_PRI\></JOB_Q\_PRI\>

Defines the job queue scheduling priority.

- **Requirements**: Required for IBM i <jobdata\>
- **EM field label**: JobQ Priority
- **Valid Values**: \*, 1, 2, 3, 4, 5, 6, 7, 8, 9
 - Values range from 1 through 9, where 1 is the highest priority
 and 9 is the lowest.
 - If an asterisk (\*) is specified, the default value specified in
 the SMA system parameters for the agent will be used.
 - The specification \*JOBD is not supported

#### <JOB_DATE\></JOB_DATE\>

Defines the calendar date for the job to be associated with.

- **Requirements**: Required for IBM i <jobdata\>
- **EM field label**: Job Date
- **Valid Values**: \*JOBD, \*SYSVAL, \*SCHEDULE DATE, or a
 User-defined calendar date. User-defined dates must follow these
 requirements:
 - The date must be entered in either the CCYYMMDD format, or the
 Short Date format recognized by the
 OpCon server's Regional Settings.
 - Characters: 1-20
 - Valid Characters: Numeric Characters (0 - 9), slash (/), dash
 (-), period (.), comma (,) space ( ).
 - Invalid Character: asterisk (\*). An asterisk (\*) can be
 selected from a box, but it cannot be typed.

#### <ACCT_CODE\></ACCT_CODE\>

Specifies the accounting code that is used when logging system resource
Use.

- **Requirements**: Optional for IBM i <jobdata\>
- **EM field label**: Accounting Code
- **Valid Values**:
 - Characters: 0-15

#### <CURR_LIB\></CURR_LIB\>

Defines the name of the current library associated with the job being run.
The actual library name may be specified.

- **Requirements**: Required for IBM i <jobdata\>
- **EM field label**: Current
- **Valid Values**: \*, \*CRTDFT, \*USRPRF, or a User-defined library
 name.
 - If an asterisk (\*) is specified, the default value specified in
 the SMA system parameters for the agent is used.
 - User-defined library name:
 - Characters: 1-10

#### <INIT_LIB\></INIT_LIB\>

Defines the initial user part of the library list that is used to search for any
Objects without a library. The individual library names are not
Supported.

- **Requirements**: Required for IBM i <jobdata\>
- **EM field label**: Init Lib List
- **Valid Values**: \*, \*JOBD, \*NONE, \*SYSVAL, \*CURRENT, or a
 User-defined library name.
 - If an asterisk (\*) is specified, the default value specified in
 the SMA system parameters for the agent is used.
 - User-defined library name:
 - Characters: 1-10

#### <JOB_DESC_NAME\></JOB_DESC_NAME\>

Defines the simple name of the job description used with the job. The
Actual job description name may be specified.

- **Requirements**: Required for IBM i <jobdata\>
- **EM field label**: Name
- **Valid Values**: \*, \*USRPRF, or the actual job description name
 - If an asterisk (\*) is specified, the default value specified in
 the SMA system parameters for the agent is used.
 - User-defined library name:
 - Characters: 1-10

#### <JOB_DESC_LIB\></JOB_DESC_LIB\>

Defines the library associated with the job description name.

- **Requirements**: Required for IBM i <jobdata\>
- **EM field label**: Library
- **Valid Values**: \*, \*LIBL, \*CURLIB, or the User-defined name of
 the library associated with the job description name.
 - The library name:
 - Characters: 1-10

#### <BATCHQ_NAME\></BATCHQ_NAME\>

Defines the name of the job queue in which this job is placed. The
Actual job queue name may be specified.

- **Requirements**: Required for IBM i <jobdata\>
- **EM field label**: Name
- **Valid Values**: \*, \*JOBD, or the actual job queue name
 - If an asterisk (\*) is specified, the default value specified in
 the SMA system parameters for the agent is used.
 - The job queue name:
 - Characters: 1-10

#### <BATCHQ_LIB\></BATCHQ_LIB\>

Defines the library associated with the batch queue name.

- **Requirements**: Required for IBM i <jobdata\>
- **EM field label**: Library
- **Valid Values**: \*, \*LIBL, \*CURLIB, or the User-defined name of
 the library associated with the batch queue name.
 - If an asterisk (\*) is specified, the default value specified in
 the SMA system parameters for the agent is used.
 - The library name:
 - Characters: 1-10

#### <OUTPUTQ_NAME\></OUTPUTQ_NAME\>

Defines the output queue used for spooled files. The actual output queue
Name may be specified.

- **Requirements**: Required for IBM i <jobdata\>
- **EM field label**: Name
- **Valid Values**: \*, \*CURRENT, \*USRPRF, \*DEV, \*JOBD, or the
 actual output queue name.
 - If an asterisk (\*) is specified, the default value specified in
 the SMA system parameters for the agent is used.
 - The library name:
 - Characters: 1-10

#### <OUTPUTQ_LIB\></OUTPUTQ_LIB\>

Defines the library associated with the Output Queue name.

- **Requirements**: Required for IBM i <jobdata\>
- **EM field label**: Library
- **Valid Values**: \*, \*LIBL, \*CURLIB, or the User-defined name of
 the library associated with the output queue name.
 - If an asterisk (\*) is specified, the default value specified in
 the SMA system parameters for the agent is used.
 - The library name:
 - Characters: 1-10

### Call Information Element Definitions

#### <i5os_prerun\></i5os_prerun\>

Allows specifying an IBM i job to be
Run immediately before the initiation of the job specified in the
Call/Script Name field. If the Prerun job terminates with an error, it
Will be rescheduled at a user-defined interval. The Prerun job will
Continue to run at the user-defined interval until it succeeds,
Allowing the job within the Job Information elements to process. The
Purpose of a Prerun is to test any required preconditions to job
Execution.

- **Requirements**: Optional
- **EM field label**: Prerun
- **Valid Values**: CHKDTAARA, CHKFILE, or a User-defined prerun
 value.
 - Characters: 0-255

#### <CALL_SCRIPT\></CALL_SCRIPT\>

For a Batch Job, enter the program name using the CALL command or enter
A command name. Do not use the SMBJOB command. If the SMBJOB command is
Used, the agent will not be able to track the job for failure. Include
Parameters in this field as desired. For an Operator Replay Job or
Restricted Mode Job, enter the script name.

- **Requirements**: Required for IBM i <jobdata\>
- **EM field label**: Call
- **Valid Values**: User-defined call/script name
 - Characters: 1-2000

#### <FTP_REMTSYS\></FTP_REMTSYS\>

Sets the name of the remote system.

- **Requirements**: Required only when the job type is FTP for IBM i
 <jobdata\>.
- **EM field label**: Remote System
- **Valid Values**:
 - Characters: 1-255

#### <FTP_ACT\></FTP_ACT\>

Sets the FTP command to use.

- **Requirements**: Required only when the job type is FTP for IBM i
 <jobdata\>.
- **EM field label**: Action Type
- **Valid Values**: PUT, MPUT, GET, MGET, DEL, MDEL

#### <FTP_TFR\></FTP_TFR\>

Sets the type of transfer for binary or ASCII.

- **Requirements**: Required only when the job type is FTP for IBM i
 <jobdata\>.
- **EM field label**: Transfer Type
- **Valid Values**: BIN, ASCII, EBCDIC

#### <ftp_user\></ftp_user\>

Defines the FTP users for connecting to the remote system. If not specified, the
agent will use the default user from the agent parameters.

- **Requirements**: Required for IBM i <jobdata\>
- **EM field label**: User
- **Valid Values**: All values from the Batch User Privileges
 definitions
 - Characters: 1-128

#### <FTP_LCLFN\></FTP_LCLFN\>

Defines the name for the file once it reaches the local machine.

- **Requirements**: Required only when the job type is FTP for IBM i
 <jobdata\>.
- **EM field label**: Local File Name
- **Valid Values**: User-defined value
 - This field is enabled for all action types, except **MGET**,
 **DEL**, and **MDEL**.
 - Characters: 1-128

#### <FTP_LCLDIR\></FTP_LCLDIR\>

Defines the library or directory on the local machine.

- **Requirements**: Required only when the job type is FTP for IBM i
 <jobdata\>.
- **EM field label**: Local Library or Directory
- **Valid Values**: User-defined value
 - Characters: 1-512

#### <FTP_RMTFN\></FTP_RMTFN\>

Defines the file name once it reaches the remote machine.

- **Requirements**: Required only when the job type is FTP for IBM i
 <jobdata\>.
- **EM field label**: Remote File Name
- **Valid Values**: \*LCLFILNAM or a user-defined value
 - This field is enabled for all action types, except **MPUT**
 - Characters: 1-128

#### <FTP_RMTDIR\></FTP_RMTDIR\>

Defines the library or directory on the remote machine.

- **Requirements**: Required only when the job type is FTP for IBM i
 <jobdata\>.
- **EM field label**: Remote Library or Directory
- **Valid Values**: User-defined value
 - Characters: 1-512

### File Arrival Element Definitions

#### <ibmi_cfa_read\></ibmi_cfa_read\>

Defines that the read type of object
Authority should be verified for the named User ID.

- **Requirements**: Optional when the job type is File Arrival for IBM
 i <jobdata\>.
- **EM field label**: Read
- **Valid Values**: True, False

#### <ibmi_cfa_write\></ibmi_cfa_write\>

Defines that the write type of object
Authority should be verified for the named User ID.

- **Requirements**: Optional when the job type is File Arrival for IBM
 i <jobdata\>.
- **EM field label**: Write
- **Valid Values**: True, False

#### <ibmi_cfa_exec\></ibmi_cfa_exec\>

Defines that the run type of object
Authority should be verified for the named User ID.

- **Requirements**: Optional when the job type is File Arrival for IBM
 i <jobdata\>.
- **EM field label**: Run
- **Valid Values**: True, False

#### <ibmi_chk_file_lck_db2\></ibmi_chk_file_lck_db2\>

Defines whether to request
Verification that there are no in-use locks on any DB2 database files

- **Requirements**: Optional when the job type is File Arrival for IBM
 i <jobdata\>.
- **EM field label**: Check Lock on DB2 File
- **Valid Values**: True, False

#### <ibmi_file_2\_watch\></ibmi_file_2\_watch\>

Defines the file path and name of the
File to detect.

- **Requirements**: Required only when the job type is File Arrival
 for IBM i <jobdata\>.
- **EM field label**: File Name
- **Valid Values**: User-defined value
 - Characters: 1-4000

#### <ibmi_file_start_watch\></ibmi_file_start_watch\>

Defines the start of the time
Frame that the program uses to watch for the arrival of the file.

- **Requirements**: Required only when the job type is File Arrival
 for IBM i <jobdata\>.
- **EM field label**: Start Time
- **Valid Values**: a number of days and time from 0
 -- 999 in Microsoft-formatted date time (e.g., 25.50 represents 1
 day at 1:30 AM), or a Token.

#### <ibmi_file_end_watch\></ibmi_file_end_watch\>

Defines the end of the time frame
That the program uses to watch for the arrival of the file.

- **Requirements**: Required only when the job type is File Arrival
 for IBM i <jobdata\>.
- **EM field label**: End Time
- **Valid Values**: a number of days and time from 0
 -- 999 in Microsoft-formatted date time (e.g., 25.50 represents 1
 day at 1:30 AM), or a Token.

#### <ibmi_file_stable\></ibmi_file_stable\>

Defines the amount of time the file
Size has remained stable to indicate the file has finished arriving.

- **Requirements**: Required only when the job type is File Arrival
 for IBM i <jobdata\>.
- **EM field label**: File Size Stable Duration (in secs)
- **Valid Values**: a number of seconds from 0 - 999,
 or a Token.

#### <ibmi_filearrival_failcode\></ibmi_filearrival_failcode\>

Defines the action to take
Based on the job failure or success status.

- **Requirements**: Required only when the job type is File Arrival
 for IBM i <jobdata\>.
- **EM field label**: Failure Condition
- **Valid Values**: Always Succeed, Fail If File
 Contains Zero Records or Zero Bytes, Fail On Error, or Fail On Error
 Except Reached End Time.

#### <ibmi_dynvar_filename\></ibmi_dynvar_filename\>

Defines the root name of the file
(including an extension, if any, from an IFS stream file) that is
Stored, similar to the OpCon system property $ARRIVED FILE SHORT NAME.

- **Requirements**: Optional when the job type is File Arrival for IBM
 i <jobdata\>.
- **EM field label**: File Name Variable
- **Valid Values**: User-defined value
 - Characters: 1-12

#### <ibmi_dynvar_reccnt\></ibmi_dynvar_reccnt\>

Defines the number of records (for
DB2 files/tables), or the number of data bytes (for IFS non-DB2 file
Systems) is stored when a file is found.

- **Requirements**: Optional when the job type is File Arrival for IBM
 i <jobdata\>.
- **EM field label**: Record Count Variable
- **Valid Values**: User-defined value
 - Characters: 1-12

### Log Information Element Definitions

#### <LOG_LVL\></LOG_LVL\>

Defines the number of messages for logging.

- **Requirements**: Required for IBM i <jobdata\>
- **EM field label**: Level
- **Valid Values**: \*, \*JOBD, 0, 1, 2, 3, 4
 - Valid values range from 0 to 4, with 0 being no logging and 4
 being the highest level of detail.

#### <SEV_LVL\></SEV_LVL\>

Defines the lowest severity level that causes an error message to be logged.

- **Requirements**: Required for IBM i <jobdata\>
- **EM field label**: Severity
- **Valid Values**: \*, \*JOBD, 00, 01, 02, 03, 04,
 05, through 99.

#### <TXT_OPT\></TXT_OPT\>

Defines the detail of the text logged.

- **Requirements**: Required for IBM i <jobdata\>
- **EM field label**: Text
- **Valid Values**: \*, \*JOBD, \*MSG, \*SECLVL,
 \*NOLIST

#### <cl_log\></cl_log\>

Defines whether the commands that are run in a control language program are
Logged to the job log by way of the CL program's message queue.

- **Requirements**: Required for IBM i <jobdata\>
- **EM field label**: Log CL Commands
- **Valid Values**: \*, \*JOBD, \*NO, \*YES
 - If an asterisk (\*) is specified, the default value specified in
 the SMA system parameters for the agent is used.

#### <INQ_MSG\></INQ_MSG\>

Defines the way predefined messages, sent as a result of running this job, are
Answered. If not specified, the default value specified in the SMA
System parameters will be used.

- **Requirements**: Required for IBM i <jobdata\>
- **EM field label**: Inquiry Message Reply
- **Valid Values**: \*, \*JOBD, \*RQD, \*DFT,
 \*SYSRPYL
 - If an asterisk (\*) is specified, the default value specified in
 the SMA system parameters for the agent is used.

#### <JOBLOGS_KEEP_OCCUR\></JOBLOGS_KEEP_OCCUR\>

Sets the number of occurrences to save for times when this same job name
May be run more than once. The last (n) number of occurrences of
Job logs for this job name will be retained, while any prior job logs
For this job name will be deleted. When this value is left at zero, this
Parameter will be ignored and all job logs will only be subject to the
Number of Days (if set).

- **Requirements**: Optional for IBM i <jobdata\>
- **EM field label**: Number of Occurrences
- **Valid Values**: User-defined value
 - Minimum Value: 0 (turns off joblog cleanup at the job level)
 - Maximum Value: 999
 - Valid Values: Only numeric characters (0 -- 9)
 - If the value is greater than 0, the setting in the database
 overrides the agent global setting for job log maintenance.

#### <JOBLOGS_KEEP_DAYS\></JOBLOGS_KEEP_DAYS\>

Sets the number of days to keep the job logs. The agent will delete (or
Cause the system to delete, during its normal course of operations) job
Logs for the names of the jobs that have existed on the system for more
Than the number of days set in this parameter. When this value is left
At zero, this parameter will be ignored and all job logs will only be
Subject to the Number of Occurrences (if set).

- **Requirements**: Optional for IBM i <jobdata\>
- **EM field label**: Number of Days
- **Valid Values**: User-defined value
 - Minimum Value: 0 (turns off joblog cleanup at the job level)
 - Maximum Value: 999
 - Valid Values: Only numeric characters (0 -- 9)
 - If the value is greater than 0, the setting in the database
 overrides the agent global setting for job log maintenance.

### Message Element Definitions

#### <MSG_Info\></MSG_Info\>

The parent element <msg_info\> contains the child elements needed to
Define a single message and response for an IBM i job. Up to 99
<msg_info\> elements can be defined for each IBM i job.

- **Requirements**: Required to define a message to watch
- **Valid Values**: One each of the following child elements:
 <msg_id\>, <msg_cmpdata\>, <msg_pos\>, <msg_sev\>, <msg_actn\>,
 <msg_reply\>, <msg_endjob\>, <msg_events\>.

#### <MSG_ID\></MSG_ID\>

Defines the 7 character Message ID displayed at the beginning of the message.

- **Requirements**: Required for <msg_info\> if
 <MSG_SEV\> = 00. If <MSG_SEV\> is greater than
 00, <msg_id\> is not valid.
- **EM field label**: Message ID
- **Valid Values**: User-defined value of exactly seven (7)
 characters.

#### <MSG_CMPDATA\></MSG_CMPDATA\>

Defines the characters to find in the message (defined by the message
ID).

- **Requirements**: Optional for <msg_info\>. If
 <MSG_SEV\> \> 00, <MSG_CMPDATA\> is not valid.
- **EM field label**: Compare Data
- **Valid Values**: User-defined value
 - Characters: 1-30

#### <MSG_POS\></MSG_POS\>

Defines the position to start looking for the Compare Data word in the Message
Defined by the Msg ID.

- **Requirements**: Optional for <msg_info\>, but required with
 <MSG_CMPDATA\>. - **EM field label**: Position
- **Valid Values**: User-defined value
 - Range: 0-999 (Message data can be as long as 2147483647,
 but IBM i supports only up to position 999 in their reply list
 entries).

#### <MSG_SEV\></MSG_SEV\>

Defines the severity of the messages to look for.

- **Requirements**: Required for <msg_info\> if
 <MSG_ID\> is not defined. If <msg_id\> is defined, <msg_sev\> is not valid.
- **EM field label**: Severity
- **Valid Values**: 00, 10, 20, 30, 40, 50, 60, 70, 80, 90

#### <MSG_ACTN\></MSG_ACTN\>

Defines what the agent does when a message meets the defined criteria.

- **Requirements**: Required for <msg_info\>
- **EM field label**: Action
- **Valid Values**: Reply, Event, Both

#### <MSG_REPLY\></MSG_REPLY\>

Defines the response the agent sends as the reply when the Action is set to Reply
Or Both and when the message meets the search criteria.

- **Requirements**: Required for <msg_info\> if
 <MSG_ACTN\> is 'Reply' or 'Both'.
- **EM field label**: Reply
- **Valid Values**:
 - Characters: 1-6

#### <MSG_ENDJOB\></MSG_ENDJOB\>

Defines whether they want to end the OpCon job after
The message meets the criteria or if they want to allow it to keep
Running.

- **Requirements**: This field is optional for <msg_info\>. Defaults
 to 'N' if an empty set of tags are defined.
- **EM field label**: End Job
- **Valid Values**: Yes, No

#### <MSG_EVENTS\></MSG_EVENTS\>

Defines the OpCon event to send to the SAM-SS when
The message meets the search criteria.

- **Requirements**: Required for <msg_info\> if
 <MSG_ACTN\> is 'Both'. - **Valid Values**: Complete list of
 OpCon events and as in the Job Master \>
 Events screen.
 - Characters: 1-738

### Spools Element Definitions

#### <SPL_info\></SPL_info\>

The parent element <spl_info\> contains the child elements needed to
Define a single spool file definition for an IBM i job. Up to 99
<spl_info\> elements can be defined for each IBM i job.

- **Requirements**: Required to define a spool file definition for the
 job.
- **Valid Values**: One of each of the following child elements:
 <spl_name\>, <spl_user\>, <spl_outq_name\>, <spl_outq_lib\>,
 <spl_copies\>, <spl_hld\>, <spl_save\>

#### <SPL_NAME\></SPL_NAME\>

Defines the name of the file that contains the output from the job.

- **Requirements**: Required for <spl_info\>
- **EM field label**: File Name
- **Valid Values**: **\*ALL**
 - Characters: 1-10

#### <SPL_USER\></SPL_USER\>

Defines the user that creates the spool file.

- **Requirements**: Required for <spl_info\> if
 <SPL_OUTQ_NAME\> is blank. - **EM field label**: User
- **Valid Values**: All values from the Batch User Privileges screen
 - Characters: 1-10

#### <SPL_OUTQ_NAME\></SPL_OUTQ_NAME\>

Defines the queue where the spool files are stored.

- **Requirements**: Required for <spl_info\> if
 <SPL_USER\> is blank. - **EM field label**: OutQ Name
- **Valid Values**: **\*USRPRF**
 - Characters: 1-10

#### <SPL_OUTQ_LIB\></SPL_OUTQ_LIB\>

Defines the library that contains the Outq.

- **Requirements**: Required for <spl_info\> if
 <SPL_OUTQ_NAME\> is not blank.
- **EM field label**: OutQ Library
- **Valid Values**: Blank, but if user selects \*USRPRF for Outq Name,
 set \*USRPRF for Outq Library.
 - **\*USRPRF** and **\*LIBL**
 - Characters: 1-10

#### <SPL_COPIES\></SPL_COPIES\>

Defines the number of spool file copies to create.

- **Requirements**: Optional for <spl_info\>
- **EM field label**: Total Copies
- **Valid Values**: User must type their own value
 - Range: 1-255

#### <SPL_HLD\></SPL_HLD\>

Indicates whether to print the spool file.

- **Requirements**: Optional for <spl_info\>
- **EM field label**: Hold
- **Valid Values**: \* (accept default), Yes, No

#### <SPL_SAVE\></SPL_SAVE\>

Indicates whether to save the spool file after it is printed.

- **Requirements**: Optional for <spl_info\>
- **EM field label**: Save
- **Valid Values**: \* (accept default), Yes, No

### Variables Element Definitions

#### <ibmi_agent_var_info\></ibmi_agent_var_info\>

The parent element <ibmi_agent_var_info\> contains the child elements
Needed to define a single variable definition for an IBM i job.

- **Requirements**: Required to define a variables definition for the
 job.
- **Valid Values**: One of each of the following child elements:
 <ibmi_agent_var\>, <ibmi_agent_var_val\>

#### <ibmi_agent_var\></ibmi_agent_var\>

Defines the name of the IBM i LSAM
Dynamic Variable that stores the value.

- **Requirements**: Required for <ibmi_agent_var_info\>
- **EM Field label**: Variable Name
- **Valid Values**: A - Z, 0 - 9, and special characters
 - Max characters: 12

#### <ibmi_agent_var_val\></ibmi_agent_var_val\>

Defines the character string to use
As the value to be stored in the IBM i LSAM Dynamic Variables table.

- **Requirements**: Required for <ibmi_agent_var_info\>
- **EM field label**: Value
- **Valid Values**: User-defined value, or a Token
 - Max characters: 128

## Java Job Element Structure

The following sample code contains the structure for defining every
Possible element for Java Primary Job Data. For detailed information on
Each field for this job type, refer to [Java Job Details](../../job-types/java.md) in the
**Concepts** online help.

<msg\>

   <msgtype\></msgtype\>

   <schedule\>

   <job\>

   <job_subtype\></job_subtype\>

   <jobdata\>

       <java_uid\></java_uid\>

       <java_operation\></java_operation\>

       <java_jar\></java_jar\>

       <java_class\></java_class\>

       <java_method\></java_method\>

       <java_alt_jvm\></java_alt_jvm\>

       <java_cmd_file\></java_cmd_file\>

       <java_exe\></java_exe\>

       <java_params\></java_params\>

       <java_jvm_args\></java_jvm_args\>

       <java_env_vars\></java_env_vars\>

       <java_rtn_info\>

             <java_rtn_oper\></java_rtn_oper\>

             <java_rtn_val\></java_rtn_val\>

       </java_rtn_info\>

       <java_rtn_info\>

             <java_rtn_oper\></java_rtn_oper\>

             <java_rtn_oper\><java_rtn_val\></java_rtn_val\>

       </java_rtn_info\>

   </jobdata\>

   </job\>

   </schedule\>

</msg\>

### Job Information Element Definitions

#### <java_uid\></java_uid\>

Defines the user that the Java class or
Executable will run as.

- **Requirements**: Not currently in use
- **EM field label**: User ID
- **Valid Values**:
 - Characters: 1-32

#### <java_operation\></java_operation\>

Defines the type of operation that will
Be performed (i.e., execution of a Java class or a command line).

- **Requirements**: Required
- **EM field label**: Operation
- **Valid Values**: CLASS, COMMAND, JAR

#### <java_jar\></java_jar\>

Defines the jar file containing the class and
Method to be run.

- **Requirements**: Required for operations "CLASS"
 and "JAR" and must end with a .jar extension.
- **EM field label**: Jar File Name
- **Valid Values**: Alpha and numeric characters, - (hyphen) and \_
 (underscore) characters, and period.
 - Characters: 1-4000

#### <java_class\></java_class\>

Defines the name of the Java class to be
Run.

- **Requirements**: Required if the operation is
 "CLASS".
- **EM field label**: Class Name
- **Valid Values**: Alpha and numeric characters, - (hyphen) and \_
 (underscore) characters, and period.
 - Characters: 1-4000

#### <java_method\></java_method\>

Defines the name of the Java method to be
Run.

- **Requirements**: Optional if the operation is
 "CLASS".
- **EM field label**: Method Name
- **Valid Values**: Alpha and numeric characters, - (hyphen) and \_
 (underscore) characters, and period. If a value is not specified,
 this will default to "main", which is the default execution method
 of a Java object.
 - Characters: 1-4000

#### <java_alt_jvm\></java_alt_jvm\>

Defines the path to an alternate JVM to be
Run by the Java Agent.

- **Requirements**: Optional for operations "CLASS"
 and "JAR".
- **EM field label**: Alternate JVM
- **Valid Values**:
 - Minimum characters: 1
 - Maximum characters: 4000
 - Valid characters: all

#### <java_cmd_file\></java_cmd_file\>

Defines the name of the command file to be
Run.

- **Requirements**: Required for operations
 "COMMAND" and "JAR" and consists of the full file name where the
 command <java_cmd\> value can be found.
- **EM field label**: Directory Path
- **Valid Values**:
 - Characters: 1-4000

#### <java_exe\></java_exe\>

Defines the name of the executable or script to
Be run.

- **Requirements**: Required if the operation is
 "COMMAND" and must end with an .exe, a .cmd, a .bat, or a .sh
 extension.
- **EM field label**: Executable
- **Valid Values**:
 - Characters: 1-4000

### Parameter Element Definitions

#### <java_params\></java_params\>

Defines the list of parameters to be passed
To the method or executable. The parameters are defined as:
Name1=value1,name2=value2,name3=value3. The parameters are passed to the
Method or executable in the order in which they are defined. For the
CLASS operation, the name(n) is used to identify the parameter type that
The method expects. For the COMMAND operation, the name(n) is used to
Identify the parameter type or define an indicator that the command
Expects.

- **Requirements**: Optional
- **EM field label**: Parameters
- **Valid Values**:
 - Characters: 1-4000
 - Valid Characters: Alpha and numeric characters, - (hyphen) and
 \_ (underscore) characters, and period.
 - For the CLASS operation, valid values are: STRING, INTEGER,
 LONG, or BOOLEAN. The name(n) definition is not passed to the
 method, only the value.
 - For the COMMAND operation, valid values are: STRING, INTEGER,
 LONG, BOOLEAN, or an indicator, such as --p, etc. When the
 name(n) value is STRING, INTEGER, LONG, or BOOLEAN, the
 definition is not passed to the command.

### JVM Arguments Element Definitions

#### <java_jvm_args\></java_jvm_args\>

Defines the list of JVM arguments that are
Set as part of the JVM call on the --java command line. The JVM
Arguments are defined as: name1=value1,name2=value2,name3=value3. The
Environment variables are passed in the order in which they are defined.

- **Requirements**: Optional
- **EM field label**: JVM Argument
- **Valid Values**:
 - Characters: 1-4000
 - Valid Characters: Alpha and numeric characters, \* (asterisk), /
 (slash), \\ (backslash), % (percent), : (colon), - (hyphen) and
 \_ (underscore) characters, and period.
 - For the CLASS operation, valid values are: STRING, INTEGER,
 LONG, or BOOLEAN. The name(n) definition is not passed to the
 method, only the value.

### Environment Variables Element Definitions

#### <java_env_vars\></java_env_vars\>

Defines the list of environment variables
To be passed. The environment variables are defined as:
Name1=value1,name2=value2,name3=value3. The environment variables are
Passed in the order in which they are defined.

- **Requirements**: Optional
- **EM field label**: Environment Variable
- **Valid Values**:
 - Characters: 1-4000
 - Valid Characters: Alpha and numeric characters, \* (asterisk), /
 (slash), \\ (backslash), % (percent), : (colon), - (hyphen) and
 \_ (underscore) characters, and period.
 - For the CLASS operation, valid values are: STRING, INTEGER,
 LONG, or BOOLEAN. The name(n) definition is not passed to the
 method, only the value.
 - For the COMMAND operation, valid values are: STRING, INTEGER,
 LONG, BOOLEAN, or an indicator, such as --p, etc. When the
 name(n) value is STRING, INTEGER, LONG, or BOOLEAN, the
 definition is not passed to the command.

### Return Code Element Definitions

#### <java_rtn_info\></java_rtn_info\>

Parent element for defining a single failure criterion for the job. SMADDI supports up to
Five <java_rtn_info\> elements for each Java job.

- **Requirements**: Optional for <jobdata\>. Required to define
 failure criteria for the job. At least one <java_rtn_info\> element
 must be provided.
- **Valid Values**: One <java_rtn_oper\> and one <java_rtn_val\>
 child element

#### <java_rtn_oper\><java_rtn_oper\>

The return operators are a list of conditions to be met on the return
Codes (up to five per job). The Failure
Criteria determines how OpCon reports the final status of the job. If
Any of the specified conditions are met, OpCon reports the job as
Failed.

- **Requirements**: Required field for <java_rtn_info\>
- **Valid Values**: EQ, NE, LT, GT, GE, LE

#### <java_rtn_val\></java_rtn_val\>

Defines the value of the exit condition and
Up to five can be defined per job definition. The Failure Criteria
Determines how OpCon reports the final status
Of the job. If any of the specified conditions are met, OpCon reports
The job as Failed.

- **Requirements**: Required field for <java_rtn_info\>
- **Valid Values**: -2147483648 through 2147483647

## MCP Job Elements

The following sample code contains the structure for defining every
Possible element for MCP Primary Job Elements. For detailed information
On each field for this job type, refer to [MCP Job Details](../../job-types/mcp.md) in the
**Concepts** online help.

<msg\>

   <msgtype\></msgtype\>

   <schedule\>

      <job\>

         <jobdata\>

**\-\-\-\-\--**[Job Information Element Definitions](#Job)**\-\-\-\-\--**

            <user_code\></user_code\>

            <access_code\></access_code\>

            <job_init\></job_init\>

**\-\-\-\-\--** [START and RUN Definitions](#START)**\-\-\-\-\--**

            <file_title\></file_title\>

            <args\></args\>

            <mcp_task_attributes\>

            <mcp_task_attribute\></mcp_task_attribute\>

            </mcp_task_attributes\>

            <mcp_file_attributes\>

            <mcp_file_attribute\></mcp_file_attribute\>

            </mcp_file_attributes\>

            <mcp_eot notice\></mcp_eot_notice\>

            <mcp_template display\></mcp_template_display\>

            <mcpjobsummary\>

               <job_summary_usercode\></job_summary_usercode\>

               <job_summary_family\></job_summary_family\>

               <job_summary_dir_file\></job_summary_dir_file\>

            </mcpjobsummary\>

**\-\-\-\-\--** [EAE/AB Suite Definitions](#EAE/AB)**\-\-\-\-\--**

            <eae_report_name\></eae_report_name\>

            <eae_accept_file\></eae_accept_file\>

            <eae_parameters\></eae_parameters\>

**\-\-\-\-\--** [CHANGE Definitions](#CHANGE)**\-\-\-\-\--**

            <mcp_change_source\></mcp_change_source\>

            <mcp_change_new\></mcp_change_new\>

            <mcp_change_from\></mcp_change_from\>

**\-\-\-\-\--** [COPY Definitions](#COPY)**\-\-\-\-\--**

            <mcp_copy_source\></mcp_copy_source\>

            <mcp_copy_from\></mcp_copy_from\>

            <mcp_copy_from_kind\></mcp_copy_from_kind\>

            <mcp_copy_destination\></mcp_copy_destination\>

            <mcp_copy_to\></mcp_copy_to\>

            <mcp_copy_to_kind\></mcp_copy_to_kind\>

            <mcp_copy_hostname\></mcp_copy_hostname\>

            <mcp_copy_compare\></mcp_copy_compare\>

**\-\-\-\-\--** [REMOVE Definitions](#REMOVE)**\-\-\-\-\--**

            <mcp_remove_source\></mcp_remove_source\>

            <mcp_remove_from\></mcp_remove_from\>

**\-\-\-\-\--** [Prerun Information Element Definitions](#Prerun)**\-\-\-\-\--**

            <mcpprerun\>

               <pre_job_int\></pre_job_int\>

**\-\-\-\-\--** [Prerun START and RUN Definitions](#Prerun2)**\-\-\-\-\--**

               <pre_file_title\></pre_file_title\>

               <pre_args\></pre_args\>

            <mcp_pre_task_attributes\>

            <mcp_pre_task_attribute\></mcp_pre_task_attribute\>

            </mcp_pre_task_attributes\>

            <mcp_pre_file_attributes\>

            <mcp_pre_file_attribute\></mcp_pre_file_attribute\>

            </mcp_pre_file_attributes\>

            <mcp_pre_eot notice\></mcp_pre_eot_notice\>

            <mcp_pre_template display\></mcp_pre_template_display\>

            <mcppre_jobsummary\>

            <mcp_pre_job_summary_usercode\>

            </mcp_pre_job_summary_usercode\>

            <mcp_pre_job_summary_family\>

            </mcp_pre_job_summary_family\>

            <mcp_pre_job_summary_dir_file\>

            </mcp_pre_job_summary_dir_file\>

            </mcppre_jobsummary\>

**\-\-\-\-\--** [Prerun EAE/AB Suite Definitions](#Prerun3)**\-\-\-\-\--**

            <pre_eae_report_name\></pre_eae_report_name\>

            <pre_eae_accept_file\></pre_eae_accept_file\>

            <pre_eae_parameters\></pre_eae_parameters\>

**\-\-\-\-\--** [Prerun CHANGE Definitions](#Prerun4)**\-\-\-\-\--**

            <mcp_pre_change_source\></mcp_pre_change_source\>

            <mcp_pre_change_new\></mcp_pre_change_new\>

            <mcp_pre_change_from\></mcp_pre_change_from\>

**\-\-\-\-\--** [Prerun COPY Definitions](#Prerun5)**\-\-\-\-\--**

            <mcp_pre_copy_source\></mcp_pre_copy_source\>

            <mcp_pre_copy_from\></mcp_pre_copy_from\>

            <mcp_pre_copy_from_kind\></mcp_pre_copy_from_kind\>

            <mcp_pre_copy_destination\></mcp_pre_copy_destination\>

            <mcp_pre_copy_to\></mcp_pre_copy_to\>

            <mcp_pre_copy_to_kind\></mcp_pre_copy_to_kind\>

            <mcp_pre_copy_hostname\></mcp_pre_copy_hostname\>

            <mcp_pre_copy_compare\></mcp_pre_copy_compare\>

**\-\-\-\-\--** [Prerun REMOVE Definitions](#Prerun6)**\-\-\-\-\--**

            <mcp_pre_remove_source\></mcp_pre_remove_source\>

            <mcp_pre_remove_from\></mcp_pre_remove_from\>

            </mcpprerun\>

**\-\-\-\-\--** [Failure Criteria Definitions](#Failure)**\-\-\-\-\--**

            <fail_code\></fail_code\>

            <fail_reset\></fail_reset\>

         </jobdata\>

      </job\>

   </schedule\>

</msg\>

### Job Information Element Definitions

#### <user_code\></user_code\>

Defines the MCP user to be impersonated when
Launching the job.

- **Requirements**: Required for MCP <jobdata\>
- **EM field label**: User Code
- **Valid Values**: The user ID must not exceed 17 characters

#### <access_code\></access_code\>

Defines the MCP Access Code that the job
Uses.

- **Requirements**: Optional for MCP <jobdata\>
- **EM field label**: Access Code
- **Valid Values**: A valid Access Code. The Access Code must not
 exceed 17 characters.

#### <job_init\></job_init\>

Defines the job initiation command to be used
When launching the job.

- **Requirements**: Required for MCP <jobdata\>
- **Valid Values**: START, RUN,
 EAE/AB Suite, CHANGE, COPY, and REMOVE.

### START and RUN Definitions

#### <file_title\></file_title\>

Defines the file title used for the job.

- **Requirements**: Required for MCP <jobdata\> when the value for
 the <job_init\> element is **START** or **RUN**.
- **EM field label**: File Title
- **Valid Values**: The file title may not exceed 96 characters

#### <args\></args\>

Defines the arguments to be used by the job.

- **Requirements**: Optional for MCP <jobdata\>
- **EM field label**: Arguments
- **Valid Values**: The arguments may not exceed 200 characters

#### <mcp_task_attributes\></mcp_task_attributes\>

The parent element <mcp_task_attributes\> contains the child elements
Needed to define one or more task attributes for a job.

- **Requirements**: Optional for MCP <jobdata\>
- **Valid Values**: Any valid <mcp_task_attributes\> child element

#### <mcp_task_attribute\></mcp_task_attribute\>

Defines a task attribute to be used
By the job. Up to 10 <mcp_task_attribute\> tags can be defined to
Specify multiple task attributes.

- **Requirements**: Optional for MCP <jobdata\>
- **EM field label**: Task Attributes
- **Valid Values**: A task attribute may not exceed 300 characters

#### <mcp_file_attributes\></mcp_file_attributes\>

The parent element <mcp_file_attributes\> contains the child elements
Needed to define one or more file attributes for a job.

- **Requirements**: Optional for MCP <jobdata\>
- **Valid Values**: Any valid <mcp_file_attributes\> child element

#### <mcp_file_attribute\></mcp_file_attribute\>

Defines a file attribute to be used
By the job. Up to 10 <mcp_file_attribute\> tags can be defined to
Specify multiple file attributes.

- **Requirements**: Optional for MCP <jobdata\>
- **EM field label**: File Attributes
- **Valid Values**: A file attribute may not exceed 300 characters

#### <mcp_eot_notice\></mcp_eot_notice\>

Defines whether to treat each end-of-task
Notification for this job as a display message.

- **Requirements**: Optional for MCP <jobdata\>
- **EM field label**: EOT Notice Message
- **Valid Values**: Y or N

#### <mcp_template_display\></mcp_template_display\>

Defines the template displays file
Associated with the OpCon job's messages.

- **Requirements**: Optional for MCP <jobdata\>
- **EM field label**: Template Displays File
- **Valid Values**: Any valid MCP template displays file

#### <mcpjobsummary\></mcpjobsummary\>

The parent element <mcpjobsummary\> contains the child elements needed
To describe the job summary detail location for the primary job.
Individual job summary information is only valid when the value for the
<job_init\> element is **START**.

- **Requirements**: Optional for <jobdata\>
- **Valid Values**: SMADDI allows only one <mcpjobsummary\> element
 per <jobdata\> element.

#### <job_summary_usercode\></job_summary_usercode\>

Defines the user code under which the Job Summary
Information will exist.

- **Requirements**: Required for MCP <mcpjobsummary\>
- **EM field label**: Job Summary Usercode
- **Valid Values**: The Usercode may not exceed 17 characters

#### <job_summary_family\></job_summary_family\>

Specifies the Family name to use when looking up the Job
Summary information for the job when using JORS.

- **Requirements**: Required for MCP <mcpjobsummary\>
- **EM field label**: Job Summary Family
- **Valid Values**: The Family name may not exceed 96 characters

#### <job_summary_dir_file\></job_summary_dir_file\>

Specifies the Directory or Filename to use when looking up the Job
Summary information for the job when using JORS.

- **Requirements**: Required for MCP <mcpjobsummary\>
- **EM field label**: Job Summary Directory or Filename
- **Valid Values**: The Directory or Filename may not exceed 200
 characters.

### EAE/AB Suite Definitions

#### <eae_report_name\></eae_report \_name\>

Specifies the EAE/AB Suite report to run.

- **Requirements**: Required for MCP <jobdata\> when<job_init\> is
 **EAE/AB Suite**.
- **EM field label**: Report Name
- **Valid Values**: The Report Name may not exceed 256 characters

#### <eae_accept_file\></eae_accept_file\>

Specifies the filename that the agent will create with the arguments in
The Parameters field for the EAE/AB Suite command.

- **Requirements**: Required for MCP <jobdata\> when<job_init\> is
 **EAE/AB Suite**.
- **EM field label**: AcceptFile
- **Valid Values**: The AcceptFile may not exceed 256 characters

#### <eae_parameters\></eae_parameters\>

Specifies all the parameters to run the EAE/AB Suite report.

- **Requirements**: Required for MCP <jobdata\> when<job_init\>
 is**EAE/AB Suite**.
- **EM field label**: Parameters
- **Valid Values**: The Parameters may not exceed 256 characters

### CHANGE Definitions

#### <mcp_change_source\></mcp_change_source\>

Specifies the filename or the directory that will be changed (e.g.,
\*SMA/COMM or \*SMA/=).

- **Requirements**: Required for MCP <jobdata\> when the value for
 the <job_init\> element is **CHANGE**.
- **EM field label**: Source File or Directory
- **Valid Values**: The Source file or Directory may not exceed 256
 characters.

#### <mcp_change_new\></mcp_change_new\>

Specifies the new filename or directory name (e.g., \*SMA/NEWCOMM or
\*SMANEW/=).

- **Requirements**: Required for MCP <jobdata\> when the value for
 the <job_init\> element is **CHANGE**.
- **EM field label**: New File or Directory
- **Valid Values**: The New Source File or Directory may not exceed
 256 characters.

#### <mcp_change_from\></mcp_change_from\>

Specifies the place where the source file is. It can be a Family Disk
Name or a tape name.

- **Requirements**: Required for MCP <jobdata\> when the value for
 the <job_init\> element is **CHANGE**.
- **EM field label**: From
- **Valid Values**: The From value may not exceed 96 characters

### COPY Definitions

#### <mcp_copy_source\></mcp_copy_source\>

Specifies the filename or the directory that will be copied (e.g.,
\*SMA/COMM or \*SMA/=).

- **Requirements**: Required for MCP <jobdata\> when the value for
 the <job_init\> element is **COPY**.
- **EM field label**: Source File or Directory
- **Valid Values**: The Source file or Directory may not exceed 256
 characters.

#### <mcp_copy_from\></mcp_copy_from\>

Specifies the place where the source file is. It can be a Family Disk
Name or a tape name.

- **Requirements**: Required for MCP <jobdata\> when the value for
 the <job_init\> element is **COPY**.
- **EM field label**: From
- **Valid Values**: The From value may not exceed 96 characters

#### <mcp_copy_from_kind\></mcp_copy_from_kind\>

Specifies the kind of the device for the source file.

- **Requirements**: Required for MCP <jobdata\> when the value for
 the <job_init\> element is **COPY**.
- **EM field label**: Kind
- **Valid Values**: PACK or TAPE

#### <mcp_copy_destination\></mcp_copy_destination\>

Specifies the new filename or directory name for the copied file (e.g.,
\*SMA/NEWCOMM or \*SMANEW/=).

- **Requirements**: Required for MCP <jobdata\> when the value for
 the <job_init\> element is **COPY**.
- **EM field label**: Destination File or Directory
- **Valid Values**: The Destination Source File or Directory may not
 exceed 256 characters.

#### <mcp_copy_to\></mcp_copy_to\>

Specifies the place where the destination file will be placed. It can be
A Family Disk name or a tape name.

- **Requirements**: Required for MCP <jobdata\> when the value for
 the <job_init\> element is **COPY**.
- **EM field label**: To
- **Valid Values**: The To value may not exceed 96 characters

#### <mcp_copy_to_kind\></mcp_copy_to_kind\>

Specifies the kind of the device for the destination file.

- **Requirements**: Required for MCP <jobdata\> when the value for
 the <job_init\> element is **COPY**.
- **EM field label**: Kind
- **Valid Values**: PACK or TAPE

#### <mcp_copy_hostname\></mcp_copy_hostname\>

Specifies the Unisys MCP hostname to where the file will be copied. If
Blank, the application assumes that this is not a BNA Transfer copy.

- **Requirements**: Required for MCP <jobdata\> when the value for
 the <job_init\> element is **COPY**.
- **EM field label**: Hostname (if BNA Transfer)
- **Valid Values**: The Hostname may not exceed 256 characters

#### <mcp_copy_compare\></mcp_copy_compare\>

Specifies if the "COPY & COMPARE" feature is to be used to copy the
File.

- **Requirements**: Optional for MCP <jobdata\> when the value for
 the <job_init\> element is **COPY**.
- **EM field label**: Copy & Compare
- **Valid Values**: Y or N

### REMOVE Definitions

#### <mcp_remove_source\></mcp_remove_source\>

Specifies the filename or the directory that will be removed (e.g.,
\*SMA/COMM or \*SMA/=).

- **Requirements**: Required for MCP <jobdata\> when the value for
 the <job_init\> element is **REMOVE**.
- **EM field label**: Source File or Directory
- **Valid Values**: The Source File or Directory may not exceed 256
 characters.

#### <mcp_remove_from\></mcp_remove_from\>

Specifies the place where the source file is. It can be a Family Disk
Name or a tape name.

- **Requirements**: Required for MCP <jobdata\> when the value for
 the <job_init\> element is **REMOVE**.
- **EM field label**: From
- **Valid Values**: The From value may not exceed 96 characters

### Prerun Information Element Definitions

#### <mcpprerun\></mcpprerun\>

The parent element <mcpprerun\> contains the child elements needed to
Describe a prerun job for the primary job.

- **Requirements**: Optional for MCP Prerun <jobdata\>
- **Valid Values**: SMADDI allows only one <mcpprerun\> element per
 <jobdata\> element.

#### <pre_job_int\></pre_job_int\>

Defines the job initiation command to be
Used when launching the prerun job.

- **Requirements**: Required for <mcpprerun\>
- **Valid Values**: START and RUN

### Prerun START and RUN Definitions

#### <pre_file_title\></pre_file_title\>

Defines the file title used for the
Prerun job.

- **Requirements**: Required for <mcpprerun\>
- **EM field label**: File Title
- **Valid Values**: The file title must not exceed 96 characters

#### <pre_args\></pre_args\>

Defines the job initiation command to be
Used when launching the prerun job.

- **Requirements**: Required for <mcpprerun\>
- **EM field label**: Arguments
- **Valid Values**: The file title must not exceed 92 characters

#### <mcp_pre_task_attributes\></mcp_pre_task_attributes\>

The parent element <mcp_pre_task_attributes\> contains the child
Elements needed to define one or more task attributes for a prerun job.

- **Requirements**: Optional for MCP <jobdata\>
- **Valid Values**: Any valid <mcp_pre_task_attributes\> child
 element.

#### <mcp_pre_task_attribute\></mcp_pre_task_attribute\>

Defines a task attribute to be
Used by the job. Up to 10 <mcp_pre_task_attribute\> tags can be defined
To specify multiple task attributes.

- **Requirements**: Optional for MCP <jobdata\>
- **EM field label**: Task Attributes
- **Valid Values**: A task attribute may not exceed 300 characters

#### <mcp_pre_file_attributes\></mcp_pre_file_attributes\>

The parent element <mcp_pre_file_attributes\> contains the child
Elements needed to define one or more file attributes for a prerun job.

- **Requirements**: Optional for MCP <jobdata\>
- **Valid Values**: Any valid <mcp_pre_file_attributes\> child
 element.

#### <mcp_pre_file_attribute\></mcp_pre_file_attribute\>

Defines a file attribute to be
Used by the prerun job. Up to 10 <mcp_pre_file_attribute\> tags can be
Defined to specify multiple file attributes.

- **Requirements**: Optional for MCP <jobdata\>
- **EM field label**: File Attributes
- **Valid Values**: A file attribute may not exceed 300 characters

#### <mcp_pre_eot_notice\></mcp_pre_eot_notice\>

Defines whether to treat each
End-of-task notification for this prerun job as a display message.

- **Requirements**: Optional for MCP <jobdata\>
- **EM field label**: EOT Notice Message
- **Valid Values**: Y or N

#### <mcp_pre_template_display\></mcp_pre_template_display\>

Defines the template displays
File associated with the OpCon job's messages.

- **Requirements**: Optional for MCP <jobdata\>
- **EM field label**: Template Displays File
- **Valid Values**: Any valid MCP template displays file

#### <mcppre_jobsummary\></mcppre_jobsummary\>

The parent element <mcppre_jobsummary\> contains the child elements
Needed to describe the job summary detail location.
Individual job summary information is only valid when the value for the
<pre_job_init\> element is **START**.

- **Requirements**: Optional for <jobdata\>
- **Valid Values**: SMADDI allows only one <mcppre_jobsummary\>
 element per <mcpprerun\> element.

#### <mcp_pre_job_summary_usercode\></mcp_pre_job_summary_usercode\>

Defines the user code under which the Job Summary
Information will exist for the prerun.

- **Requirements**: Required if the <mcp_pre_job_summary_family\>
 and/or <mcp_pre_job_summary_dir_file\> elements exist.
- **EM field label**: Job Summary Usercode
- **Valid Values**: The Usercode may not exceed 17 characters

#### <mcp_pre_job_summary_family\></mcp_pre_job_summary_family\>

Specifies the Family name to use when looking up the Job
Summary information for the prerun when using JORS.

- **Requirements**: Required if the <mcp_pre_job_summary_usercode\>
 and/or <mcp_pre_job_summary_dir_file\> elements exist.
- **EM field label**: Job Summary Family
- **Valid Values**: The Family name may not exceed 96 characters

#### <mcp_pre_job_summary_dir_file\></mcp_pre_job_summary_dir_file\>

Specifies the Directory or Filename to use when looking up the Job
Summary information for the prerun when using JORS.

- **Requirements**: Required if the <mcp_pre_job_summary_usercode\>
 and/or <mcp_pre_job_summary_family\> elements exist.
- **EM field label**: Job Summary Directory or Filename
- **Valid Values**: The Directory or Filename may not exceed 200
 characters.

### Prerun EAE/AB Suite Definitions

#### <pre_eae_report_name\></pre_eae_report \_name\>

Specifies the EAE/AB Suite report to run.

- **Requirements**: Required for MCP <mcpprerun\> when
 <pre_job_init\> is EAE/AB Suite.
- **EM field label**: Report Name
- **Valid Values**: The Report Name may not exceed 256 characters

#### <pre_eae_accept_file\></pre_eae_accept_file\>

Specifies the filename that the agent will create with the arguments in
The <pre_eae_parameters\> element.

- **Requirements**: Required for MCP <mcpperun\> when
 <pre_job_init\> is EAE/AB Suite.
- **EM field label**: AcceptFile
- **Valid Values**: The AcceptFile may not exceed 256 characters

#### <pre_eae_parameters\></pre_eae_parameters\>

Specifies all the parameters to run the EAE/AB Suite report.

- **Requirements**: Required for MCP <mcpprerun\> when
 <pre_job_init\> is EAE/AB Suite.
- **EM field label**: Parameters
- **Valid Values**: The Parameters may not exceed 256 characters

### Prerun CHANGE Definitions

#### <mcp_pre_change_source\></mcp_pre_change_source\>

Specifies the filename or the directory that will be changed (e.g.,
\*SMA/COMM or \*SMA/=).

- **Requirements**: Required for MCP <mcpprerun\> when the value for
 the <pre_job_init\> element is **CHANGE**.
- **EM field label**: Source File or Directory
- **Valid Values**: The Source file or Directory may not exceed 256
 characters.

#### <mcp_pre_change_new\></mcp_pre_change_new\>

Specifies the new filename or directory name (e.g., \*SMA/NEWCOMM or
\*SMANEW/=).

- **Requirements**: Required for MCP <mcpprerun\> when the value for
 the <pre_job_init\> element is **CHANGE**.
- **EM field label**: New File or Directory
- **Valid Values**: The New File or Directory may not exceed 256
 characters.

#### <mcp_pre_change_from\></mcp_pre_change_from\>

Specifies the place where the source file is. It can be a Family Disk
Name or a tape name.

- **Requirements**: Required for MCP <mcpprerun\> when the value for
 the <pre_job_init\> element is **CHANGE**.
- **EM field label**: From
- **Valid Values**: The From value may not exceed 96 characters

### Prerun COPY Definitions

#### <mcp_pre_copy_source\></mcp_pre_copy_source\>

Specifies the filename or the directory that will be copied (e.g.,
\*SMA/COMM or \*SMA/=).

- **Requirements**: Required for MCP <mcpprerun\> when the value for
 the <pre_job_init\> element is **COPY**.
- **EM field label**: Source File or Directory
- **Valid Values**: The Source file or Directory may not exceed 256
 characters.

#### <mcp_pre_copy_from\></mcp_pre_copy_from\>

Specifies the place where the source file is. It can be a Family Disk
Name or a tape name.

- **Requirements**: Required for MCP <mcpprerun\> when the value for
 the <pre_job_init\> element is **COPY**.
- **EM field label**: From
- **Valid Values**: The From value may not exceed 96 characters

#### <mcp_pre_copy_from_kind\></mcp_pre_copy_from_kind\>

Specifies the kind of the device for the source file.

- **Requirements**: Required for MCP <mcpprerun\> when the value for
 the <pre_job_init\> element is **COPY**.
- **EM field label**: Kind
- **Valid Values**: PACK or TAPE

#### <mcp_pre_copy_destination\></mcp_pre_copy_destination\>

Specifies the new filename or directory name for the copied file (e.g.,
\*SMA/NEWCOMM or \*SMANEW/=).

- **Requirements**: Required for MCP <mcpprerun\> when the value for
 the <pre_job_init\> element is **COPY**.
- **EM field label**: Destination File or Directory
- **Valid Values**: The Destination Source File or Directory may not
 exceed 256 characters.

#### <mcp_pre_copy_to\></mcp_pre_copy_to\>

Specifies the place where the destination file will be placed. It can be
A Family Disk name or a tape name.

- **Requirements**: Required for MCP <mcpprerun\> when the value for
 the <pre_job_init\> element is **COPY**.
- **EM field label**: To
- **Valid Values**: The To value may not exceed 96 characters

#### <mcp_pre_copy_to_kind\></mcp_pre_copy_to_kind\>

Specifies the kind of the device for the destination file.

- **Requirements**: Required for MCP <mcpprerun\> when the value for
 the <pre_job_init\> element is **COPY**.
- **EM field label**: Kind
- **Valid Values**: PACK or TAPE

#### <mcp_pre_copy_hostname\></mcp_pre_copy_hostname\>

Specifies the Unisys MCP hostname to where the file will be copied. If
Blank, the application assumes that this is not a BNA Transfer copy.

- **Requirements**: Required for MCP <mcpprerun\> when the value for
 the <pre_job_init\> element is **COPY**.
- **EM field label**: Hostname (if BNA Transfer)
- **Valid Values**: The Hostname may not exceed 256 characters

#### <mcp_pre_copy_compare\></mcp_pre_copy_compare\>

Specifies if the "COPY & COMPARE" feature is to be used to copy the
File.

- **Requirements**: Optional for MCP <mcpprerun\> when the value for
 the <pre_job_init\> element is **COPY**.
- **EM field label**: Copy & Compare
- **Valid Values**: Y or N

### Prerun REMOVE Definitions

#### <mcp_pre_remove_source\></mcp_pre_remove_source\>

Specifies the filename or the directory that will be removed (e.g.,
\*SMA/COMM or \*SMA/=).

- **Requirements**: Required for MCP <mcpprerun\> when the value for
 the <pre_job_init\> element is **REMOVE**.
- **EM field label**: Source File or Directory
- **Valid Values**: The Source file or Directory may not exceed 256
 characters.

#### <mcp_pre_remove_from\></mcp_pre_remove_from\>

Specifies the place where the source file is. It can be a Family Disk
Name or a tape name.

- **Requirements**: Required for MCP <mcpprerun\> when the value for
 the <pre_job_init\> element is **CHANGE**.
- **EM field label**: From
- **Valid Values**: The From value may not exceed 96 characters

### Failure Criteria Definitions

#### <fail_code\></fail_code\>

Defines the fail code for the job and up to 3
Occurrences of this element can be defined per job definition.

- **Requirements**: Optional for MCP <jobdata\>
- **EM field label**: Fail Codes
- **Valid Values**: The fail code may not exceed 40 characters

#### <fail_reset\></fail_reset\>

Defines the fail reset for the job and up to
2 occurrences of this element can be defined per job definition.

- **Requirements**: Optional for MCP <jobdata\>
- **EM field label**: Fail Reset
- **Valid Values**: The fail code may not exceed 40 characters

## OS 2200 Job Elements

The following sample code contains the structure for defining every
Possible element for OS 2200 Primary Job Elements. For detailed
Information on each field for this job type, refer to [OS 2200 Job Details](../../job-types/os-2200.md) in
The **Concepts** online help .

<msg\>

    <msgtype\></msgtype\>

    <schedule\>

       <job\>

          <jobdata\>

**\-\-\-\-\--**[Job Information Element Definitions](#Job6)**\-\-\-\-\--**

             <qlfr\></qlfr\>

             <flname\></flname\>

             <eltname\></eltname\>

             <jprty\></jprty\>

             <runopt\></runopt\>

             <cword\></cword\>

             <runid\></runid\>

             <acct\></acct\>

             <proj\></proj\>

             <userid\></userid\>

             <maxpg\></maxpg\>

             <maxcrd\></maxcrd\>

             <defstat\></defstat\>

**\-\-\-\-\--**[Completion Status Element Definitions](#Completi)**\-\-\-\-\--**

             <cstat\>

                <opr\></opr\>

                <wdpt\></wdpt\>

                <cond\></cond\>

                <cwvalue\></cwvalue\>

                <evalue\></evalue\>

                <cstatus\></cstatus\>

             </cstat\>

**\-\-\-\-\--**[Prerun Job Element Definitions](#Prerun8)**\-\-\-\-\--**

             <uprerun\>

                <prqlfr\></prqlfr\>

                <prflname\></prflname\>

                <preltname\></preltname\>

                <prjprty\></prjprty\>

                <prrunopt\></prrunopt\>

                <prcword\></prcword\>

                <prrunid\></prrunid\>

                <pracct\></pracct\>

                <prproj\></prproj\>

                <pruserid\></pruserid\>

                <prmaxpg\></prmaxpg\>

                <prmaxcrd\></prmaxcrd\>

                <prdefstat\></prdefstat\>

                <prcstat\>

                   <propr\></propr\>

                   <prwdpt\></prwdpt\>

                   <prcond\></prcond\>

                   <prcwvalue\></prcwvalue\>

                   <prevalue\></prevalue\>

                   <prcstatus\></prcstatus\>

                </prcstat\>

:::note
The <fileinfo\> and <uprerun\> elements are mutually exclusive.
:::

             </uprerun\>

**\-\-\-\-\--**[File Dependency Element Definitions](#File3)**\-\-\-\-\--**

             <fileinfo\>

                <fdqlfr\></fdqlfr\>

                <fdfname\></fdfname\>

                <deptype\></deptype\>

                <fsize\></fsize\>

             </fileinfo\>

             <tknsub\>

                <lsamtkn\></lsamtkn\>

                <opcontkn\></opcontkn\>

             </tknsub\>

          </jobdata\>

       </job\>

    </schedule\>

</msg\>

### Job Information Element Definitions

#### <qlfr\></qlfr\>

Defines the Qualifier for the file containing the
Job's ECL.

- **Requirements**: Required for OS2200 <jobdata\>
- **EM field label**: Qualifier
- **Valid Values**: Valid data characters for this element are
 alphanumeric characters, the dollar sign ($), the pound sign (\#),
 and the dash (--). The Qualifier must not exceed 12 characters.

:::note
If including a pound sign (\#) with the qualifier, it must be the first character.
:::

#### <flname\></flname\>

Defines the File Name containing the job's ECL.

- **Requirements**: Required for OS2200 <jobdata\>
- **EM field label**: File Name
- **Valid Values**: Valid data characters for this element are
 alphanumeric characters, the dollar sign ($), dash (--), and
 forward slash (/). The File Name must not exceed 20 characters
 including read and write keys. The actual file name excluding read
 and write keys must not exceed 12 characters.

:::tip Example
<flname\>ECL$FILE/RKEY/WKEY</flname\>
:::

#### <eltname\></eltname\>

Defines the element and version name for the
File element containing the job's ECL.

- **Requirements**: Optional for OS2200 <jobdata\>
- **EM field label**: Element Name
- **Valid Values**: Valid data characters are for this element are
 alphanumeric characters, the dollar sign ($), and the dash (--).
 The element and version name must not exceed 12 characters each. The
 element and version must be separated by a forward slash (/).

:::tip Example
<eltname\>RUN/GENERICP</eltname\>
:::

#### <jprty\></jprty\>

Defines the Priority used on the job's run card.

- **Requirements**: Optional for OS2200 <jobdata\>
- **EM field label**: Priority
- **Valid Values**: an alphabetical
 character.

#### <runopt\></runopt\>

Defines the options used on the job's run card.

- **Requirements**: Optional for OS2200 <jobdata\>
- **EM field label**: Options
- **Valid Values**: alphabetical
 characters B, D, N, O, P, R, S, T, W, X, Y recognized by OS 2200 as
 Options for the \@RUN and \@START ECL statements. The Options must
 not exceed 12 characters. If omitted, SMADDI does not define the
 Options.

#### <cword\></cword\>

Defines the Condition Word value used on the
Job's run card.

- **Requirements**: Optional for OS2200 <jobdata\>
- **EM field label**: Condition Word (Octal)
- **Valid Values**: a four-digit
 positive octal number.

#### <runid\></runid\>

Defines the Run ID used on the job's run card.

- **Requirements**: Optional for OS2200 <jobdata\>
- **EM field label**: Run ID
- **Valid Values**: alphanumeric
 characters. The Run ID must not exceed six characters.

#### <acct\></acct\>

Defines the Account used on the job's run card.

- **Requirements**: Optional for OS2200 <jobdata\>
- **EM field label**: Account
- **Valid Values**: Valid data characters for this element are
 alphanumeric characters, the period (.), and the dash (--). The
 Account must not exceed 12 characters.

#### <proj\></proj\>

Defines the Project ID used on the job's run card.

- **Requirements**: Optional for OS2200 <jobdata\>
- **EM field label**: Project
- **Valid Values**: Valid data characters for this element are
 alphanumeric characters, the dollar sign ($), and the dash (--).
 The Project ID must not exceed 12 characters.

#### <userid\></userid\>

Defines the User ID used on the job's run card.

- **Requirements**: Optional for OS2200 <jobdata\>
- **EM field label**: User ID
- **Valid Values**: Valid data characters for this element are
 alphanumeric characters, the period (.), and the dash (--). The User
 ID must not exceed 12 characters.

#### <maxpg\></maxpg\>

Defines the Max Pages value used on the job's run
Card.

- **Requirements**: Optional for OS2200 <jobdata\>
- **EM field label**: Max Pages
- **Valid Values**: an integer ranging
 from 0 to 9999.

#### <maxcrd\></maxcrd\>

Defines the Max Cards value used on the job's
Run card.

- **Requirements**: Optional for OS2200 <jobdata\>
- **EM field label**: Max Cards
- **Valid Values**: an integer ranging
 from 0 to 9999.

### Completion Status Element Definitions

#### <defstat\></defstat\>

Defines the job's default Completion Status.

- **Requirements**: Optional for OS2200 <jobdata\>
- **EM field label**: Anything Else
- **Valid Values**: GOOD FIN
 or BAD FIN.

#### <cstat\></cstat\>

The parent element <cstat\> contains the child elements needed to
Describe a Completion Status for the job.

- **Requirements**: Required for OS2200 <jobdata\>
- **Valid Values**: Any valid child elements. SMADDI limits the number
 of <cstat\> elements for each <jobdata\> element to four.

#### <opr\></opr\>

Defines the logical operator used to compare a
Job's Completion Statuses.

- **Requirements**: Optional for OS2200 <cstat\>
- **EM field label**: And/Or
- **Valid Values**: AND and
 OR.

#### <wdpt\></wdpt\>

Defines the part of the condition word to be tested
For a specified value to determine completion status.

- **Requirements**: Optional for OS2200 <cstat\>
- **EM field label**: Word Part
- **Valid Values**: S1, S2,
 S3, S4, S5, S6, T1, T2, and T3.

#### <cond\></cond\>

Defines the operator for testing the value of the
<wdpt\>.

- **Requirements**: Optional for OS2200 <cstat\>
- **EM field label**: Condition
- **Valid Values**: EQ, NE,
 LT, GT, GE, LE, L AND, and Range.

#### <cwvalue\></cwvalue\>

Defines the value to compare with the value of
The <wdpt\>.

- **Requirements**: Optional for OS2200 <cstat\>
- **EM field label**: Value
- **Valid Values**: an integer ranging
 from 0 to 9999.

#### <evalue\></evalue\>

Defines the End Value to compare with the value
Of the <wdpt\> when the <cond\> is Range.

- **Requirements**: Optional for OS2200 <cstat\>
- **EM field label**: End Value
- **Valid Values**: an integer ranging
 from 0 to 9999.

#### <cstatus\></cstatus\>

Defines the job's Completion Status when the
Specified conditions are met.

- **Requirements**: Optional for OS2200 <cstat\>
- **EM field label**: Fin Status
- **Valid Values**: GOOD FIN
 and BAD FIN.

### Prerun Job Element Definitions

#### <uprerun\></uprerun\>

The parent element <uprerun\> contains the child elements needed to
Describe a prerun job for the primary job.

- **Requirements**: Optional for OS2200 Prerun <jobdata\>
- **Valid Values**: Any valid child element. SMADDI allows only one
 <uprerun\> element per <jobdata\> element.

:::note
The <uprerun\> and <fileinfo\> elements are mutually exclusive.
:::

#### <prqlfr\></prqlfr\>

Defines the Qualifier for the file containing the
Prerun job's ECL.

- **Requirements**: Required for OS2200 Prerun <uprerun\>
- **EM field label**: Qualifier
- **Valid Values**: Valid data characters for this element are
 alphanumeric characters, the dollar sign ($), the pound sign (\#),
 and the dash (--). The Qualifier must not exceed 12 characters.

:::note
If including a pound sign (\#) with the qualifier, it must be the first character.
:::

#### <prflname\></prflname\>

The value for <skdwkdays\> specifies the number of workdays per week
For the schedule.

- **Requirements**: Required for OS2200 Prerun <uprerun\>
- **EM field label**: File Name
- **Valid Values**: Valid data characters for this element are
 alphanumeric characters, the dollar sign ($), dash (--), and
 forward slash (/). The File Name must not exceed 20 characters
 including read and write keys. The actual file name excluding read
 and write keys must not exceed 12 characters.

:::tip Example
<flname\>ECL$FILE/RKEY/WKEY</flname\>
:::

#### <preltname\></preltname\>

Defines the element and version name for the
File element containing the prerun job's ECL.

- **Requirements**: Optional for OS2200 Prerun <uprerun\>
- **EM field label**: Element Name
- **Valid Values**: Valid data characters are for this element are
 alphanumeric characters, the dollar sign ($), and the dash (--).
 The element and version name must not exceed 12 characters each. The
 element and version must be separated by a forward slash (/).

:::tip Example
<eltname\>RUN/GENERICP</eltname\>
:::

#### <prjprty\></prjprty\>

Defines the Priority used on the prerun job's
Run card.

- **Requirements**: Optional for OS2200 Prerun <uprerun\>
- **EM field label**: Priority
- **Valid Values**: an alphabetical
 character.

#### <prrunopt\></prrunopt\>

Defines the Options used on the prerun job's
Run card.

- **Requirements**: Optional for OS2200 Prerun <uprerun\>
- **EM field label**: Options
- **Valid Values**: alphabetical
 characters recognized by OS 2200 as Options for the \@RUN and
 \@START ECL statements. The Options must not exceed 12 characters.

#### <prcword\></prcword\>

Defines the Condition Word value used on the
Prerun job's run card.

- **Requirements**: Optional for OS2200 Prerun <uprerun\>
- **EM field label**: Condition Word (Octal)
- **Valid Values**: a four-digit
 positive octal number.

#### <prrunid\></prrunid\>

Defines the Run ID used on the prerun job's run
Card.

- **Requirements**: Optional for OS2200 Prerun <uprerun\>
- **EM field label**: Run ID
- **Valid Values**: alphanumeric
 characters. The Run ID must not exceed six characters.

#### <pracct\></pracct\>

Defines the Account used on the prerun job's run
Card.

- **Requirements**: Optional for OS2200 Prerun <uprerun\>
- **EM field label**: Account
- **Valid Values**: Valid data characters for this element are
 alphanumeric characters, the period (.), and the dash (--). The
 Account must not exceed 12 characters.

#### <prproj\></prproj\>

Defines the Project ID used on the prerun job's
Run card.

- **Requirements**: Optional for OS2200 Prerun <uprerun\>
- **EM field label**: Project
- **Valid Values**: Valid data characters for this element are
 alphanumeric characters, the dollar sign ($), and the dash (--).
 The Project ID must not exceed 12 characters.

#### <pruserid\></pruserid\>

Defines the User ID used on the prerun job's
Run card.

- **Requirements**: Optional for OS2200 Prerun <uprerun\>
- **EM field label**: User ID
- **Valid Values**: Valid data characters for this element are
 alphanumeric characters, the period (.), and the dash (--). The User
 ID must not exceed 12 characters.

#### <prmaxpg\></prmaxpg\>

Defines the Max Pages value used on the prerun
Job's run card.

- **Requirements**: Optional for OS2200 Prerun <uprerun\>
- **EM field label**: Max Pages
- **Valid Values**: an integer ranging
 from 0 to 9999.

#### <prmaxcrd\></prmaxcrd\>

Defines the Max Cards value used on the prerun
Job's run card.

- **Requirements**: Optional for OS2200 Prerun <uprerun\>
- **EM field label**: Max Cards
- **Valid Values**: an integer ranging
 from 0 to 9999.

#### <prdefstat\></prdefstat\>

Defines the prerun job's default Completion
Status.

- **Requirements**: Optional for OS2200 Prerun <uprerun\>
- **EM field label**: Anything Else
- **Valid Values**: GOOD FIN
 or BAD FIN.

#### <prcstat\></prcstat\>

The parent element <prcstat\> contains the child elements needed to
Describe a Completion Status.

- **Requirements**: Required for OS2200 Prerun <uprerun\>
- **Valid Values**: Any valid child element. SMADDI limits the number
 of <prcstat\> elements for each <uprerun\> element to four.

#### <propr\></propr\>

Defines the logical operator used to compare a
Prerun job's Completion Statuses.

- **Requirements**: Optional for <prcstat\>
- **EM field label**: And/Or
- **Valid Values**: AND and
 OR.

#### <prwdpt\></prwdpt\>

Defines the part of the condition word to be
Tested for a specified value to determine completion status.

- **Requirements**: Optional for <prcstat\>
- **EM field label**: Word Part
- **Valid Values**: S1, S2,
 S3, S4, S5, S6, T1, T2, and T3.

#### <prcond\></prcond\>

Defines the operator for testing the value of the
<wdpt\>.

- **Requirements**: Optional for <prcstat\>
- **EM field label**: Condition
- **Valid Values**: EQ, NE,
 LT, GT, GE, LE, L AND, and Range.

#### <prevalue\></prevalue\>

Defines the End Value to compare with the value
Of the <wdpt\> when the <cond\> is Range.

- **Requirements**: Optional for <prcstat\>
- **EM field label**: End Value
- **Valid Values**: an integer ranging
 from 0 to 9999.

#### <prcstatus\></prcstatus\>

Defines the prerun job's Completion Status
When the specified conditions are met.

- **Requirements**: Optional for <prcstat\>
- **EM field label**: Fin Status
- **Valid Values**: GOOD FIN
 and BAD FIN.

#### <prcwvalue\></prcwvalue\>

Defines the value to compare with the value of
The <wdpt\>.

- **Requirements**: Optional for <prcstat\>
- **EM field label**: Value
- **Valid Values**: an octal number
 ranging from 0 to 7777.

### File Dependency Element Definitions

#### <fileinfo\></fileinfo\>

The parent element <fileinfo\> contains the child elements needed to
Describe a file dependency.

- **Requirements**: Optional for OS2200 File Dependencies <jobdata\>
- **Valid Values**: Any valid child element. SMADDI limits the number
 of <fileinfo\> elements for each <jobdata\> element to eight.

#### <fdqlfr\></fdqlfr\>

Defines the Qualifier for the parent
<fileinfo\>.

- **Requirements**: Required for <fileinfo\>
- **EM field label**: Qualifier
- **Valid Values**: Valid data characters for this element are
 alphanumeric characters, the dollar sign ($), pound sign (\#), and
 dash (--). The qualifier must not exceed 12 characters.

:::note
The pound sign (\#) must be used in the first character to qualify.
:::

#### <fdfname\></fdfname\>

Defines the File Name for the parent
<fileinfo\>.

- **Requirements**: Required for <fileinfo\>
- **EM field label**: Filename
- **Valid Values**: Valid data options for this element are
 alphanumeric characters, the dollar sign ($), and the dash (--).
 The File Name must not exceed 12 characters.

#### <deptype\></deptype\>

Defines the dependency type for the parent
<fileinfo\>.

- **Requirements**: Required for <fileinfo\>
- **EM field label**: Type
- **Valid Values**: Exists,
 Created, Deleted, Size, Referenced, Assigned, BackedUp, and
 Unloaded.

#### <fsize\></fsize\>

Defines the Size of the file used with the
<deptype\> of Size.

- **Requirements**: Optional for <fileinfo\>
- **EM field label**: Size
- **Valid Values**: an integer ranging
 from 0 to 999.

### Token Equation Element Definitions

#### <tknsub\></tknsub\>

The parent element <tknsub\> contains the child elements needed to
Describe a Token Replacement.

- **Requirements**: Optional for OS2200 Token Equations <jobdata\>
- **Valid Values**: Any valid child element. SMADDI does not limit the
 number of <tknsub\> elements for each <jobdata\> element.

#### <lsamtkn\></lsamtkn\>

Defines the agent Token name as it appears in the
ECL on the OS 2200 platform.

- **Requirements**: Required for <tknsub\>
- **Valid Values**: Valid token name as it appears in the ECL on the
 OS2200 platform.

#### <opcontkn\></opcontkn\>

Defines the OpCon
Token Name used in the Token Replacement.

- **Requirements**: Required for <tknsub\>
- **Valid Values**: an existing token
 in the OpCon database.

:::note
Do not include the surrounding double brackets (\[\[ \]\]) when listing the OpCon Token Name.
:::

## SAP R/3 and CRM Job Element Structure

The following sample code contains the structure for defining every
Possible element for SAP R/3 and CRM Job Data:

<msg\>

   <msgtype\></msgtype\>

   <schedule\>

      <job\>

         <jobdata\>

            <sap_jobname\></sap_jobname\>

            <sap_jobnumber\></sap_jobnumber\>

            <sap_exec_target\></sap_exec_target\>

            <sap_start_immediately\></sap_start_immediately\>

         </jobdata\>

      </job\>

   </schedule\>

</msg\>

### Job Information Element Definitions

#### <sap_jobname\></sap_jobname\>

Defines the name of the job as it is known
In the SAP R/3 environment.

- **Requirements**: Optional
- **EM field label**: Job Name

:::note
If you are defining a job for Tracking, you do not have to define the <sap_jobname\>. In this case, the OpCon Job Name is required.
:::

#### <sap_jobnumber\></sap_jobnumber\>

Defines the unique number assigned to the
SAP R/3 job in the SAP R/3 environment.

- **Requirements**: Optional
- **EM field label**: Job Number

#### <sap_exec_target\></sap_exec_target\>

Defines the target SAP R/3 execution
Environment.

- **Requirements**: Optional
- **EM field label**: Exec. Target

#### <sap_start_immediately\></sap_start_immediately\>

Indicates if the SAP R/3 job
Should start immediately when submitted to the target execution
Environment, or if it should start as soon as possible.

- **Requirements**: Optional
- **EM field label**: Start SAP Job
- **Valid Values**: True, False

## SAP BW Job Element Structure

The following sample code contains the structure for defining every
Possible element for SAP BW Job Data:

<msg\>

   <msgtype\></msgtype\>

   <schedule\>

      <job\>

         <jobdata\>

            <sapbw_proc_chn_name\></sap_proc_chn_name\>

         </jobdata\>

      </job\>

   </schedule\>

</msg\>

### Job Information Element Definitions

#### <sap_proc_chn_name\></sap_proc_chn_name\>

Defines the SAP BW Process Chain Name
As it is known in the SAP BW environment.

- **Requirements**: Required
- **EM field label**: Process Chain Name

## SQL Job Element Structure

The following sample code contains the structure for defining every
Possible element for SQL Job Data. For detailed information on each
Field for this job type, refer to [SQL Job Details](../../job-types/sql.md) in the
**Concepts** online help.

<jobdata\>

**\-\-\-\-\--**[Job Information Element Definitions](#Job9)
**\-\-\-\-\--**

   <sql_job_action\></sql_job_action\>

**\-\-\-\-\--**[MS SQL DTExec Element Definitions](#MS)
**\-\-\-\-\--**

   <sql_instance\></sql_instance\>

   <sql_user\></sql_user\>

   <sql_dtexec_config\></sql_dtexec_config\>

   <sql_dtexec_connect\></sql_dtexec_connect\>

   <sql_script_path\></sql_script_path\>

   <sql_other_options\></sql_other_options\>

**\-\-\-\-\--**[MS SQL Job Element Definitions](#MS2)
**\-\-\-\-\--**

   <sql_instance\></sql_instance\>

   <sql_wuid\></sql_wuid\>

   <sql_user\></sql_user\>

   <sql_winauth\></sql_winauth\>

   <sql_connect_encrypt\></sql_connect_encrypt\>

   <sql_connect_retry_attempts\></sql_connect_retry_attempts\>

   <sql_jobname\></sql_jobname\>

   <sql_monitor_only\></sql_monitor_only\>

   <sql_monitor_endtime\></sql_monitor_endtime\>

   <sql_other_options\></sql_other_options\>

**\-\-\-\-\--**[MS SQL Script Element Definitions](#MS3)
**\-\-\-\-\--**

   <sql_instance\></sql_instance\>

   <sql_db_name\></sql_db_name\>

   <sql_user\></sql_user\>

   <sql_wuid\></sql_wuid\>

   <sql_winauth\></sql_winauth\>

   <sql_connect_encrypt\></sql_connect_encrypt\>

   <sql_script_statements\></sql_script_statements\>

   <sql_script_path\></sql_script_path\>

   <sql_env_varinfo\>

      <sql_env_varname\></sql_env_varname\>

      <sql_env_varvalue\></sql_env_varvalue\>

   </sql_env_varinfo\>

   <sql_script_use_exit\></sql_script_use_exit\>

   <sql_redirect_path\></sql_redirect_path\>

   <sql_other_options\></sql_other_options\>

**\-\-\-\-\--**[MySQL Element Definitions](#MySQL)
**\-\-\-\-\--**

   <sql_instance\></sql_instance\>

   <sql_db_name\></sql_db_name\>

   <sql_user\></sql_user\>

   <sql_connect_port\></sql_connect_port\>

   <sql_script_path\></sql_script_path\>

   <sql_env_varinfo\>

      <sql_env_varname\></sql_env_varname\>

      <sql_env_varvalue\></sql_env_varvalue\>

   </sql_env_varinfo\>

   <sql_redirect_path\></sql_redirect_path\>

   <sql_other_options\></sql_other_options\>

**\-\-\-\-\--**[Oracle Element Definitions](#Oracle)
**\-\-\-\-\--**

   <sql_instance\></sql_instance\>

   <sql_db_name\></sql_db_name\>

   <sql_user\></sql_user\>

   <sql_connect_id\></sql_connect_id\>

   <sql_script_path\></sql_script_path\>

   <sql_oracle_params\></sql_oracle_params\>

   <sql_redirect_path\></sql_redirect_path\>

   <sql_other_options\></sql_other_options\>

**\-\-\-\-\--**[Other DB Element Definitions](#Other)
**\-\-\-\-\--**

   <sql_otherdb_connect\></sql_otherdb_connect\>

   <sql_otherdb_connectstring\></sql_otherdb_connectstring\>

   <sql_otherdb_dsn\></sql_otherdb_dsn\>

   <sql_script_statements\></sql_script_statements\>

   <sql_user\></sql_user\>

   <sql_wuid\></sql_wuid\>

   <sql_script_path\></sql_script_path\>

   <sql_env_varinfo\>

      <sql_env_varname\></sql_env_varname\>

      <sql_env_varvalue\></sql_env_varvalue\>

   </sql_env_varinfo\>

   <sql_winauth\></sql_winauth\>

   <sql_redirect_path\></sql_redirect_path\>

   <sql_other_options\></sql_other_options\>

</jobdata\>

### Job Information Element Definitions

#### <sql_job_action\></sql_job_action\>

Defines the run process the job uses.

- **Requirements**: Required
- **EM field label**: Job Action
- **Valid Values**: MS SQL DTExec, MS SQL Job, MS SQL
 Script, MySQL, Oracle, and Other DB.

### MS SQL DTExec Element Definitions

#### <sql_instance\></sql_instance\>

Defines the server name from which to
Retrieve the package.

- **Requirements**: Required if <sql_dtexec_connect\>
 is set to SQL.
- **EM field label**: Server Name
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_user\></sql_user\>

Defines the user ID name that will allow the
Retrieval of a package that is protected by SQL server authentication.

- **Requirements**: Required if <sql_dtexec_connect\>
 is set to SQL.
- **EM field label**: User Id
- **Valid Values**:
 - Characters: 1-61
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_dtexec_connect\></sql_dtexec_connect\>

Defines which type of DTExec
Connection will be used for the job.

- **Requirements**: Required
- **EM field label**: MS SQL DTExec Connection
- **Valid Values**: SQL and FILE

#### <sql_dtexec_config\></sql_dtexec_config\>

Defines the configuration file to
Extract values from.

- **Requirements**: Optional
- **EM field label**: Config File Name
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_script_path\></sql_script_path\>

Defines the package that is stored in
SQL server. The package_path argument specifies the name of the package
To retrieve. If folders are included in the path, they are terminated
With backslashes (\\).

- **Requirements**: Required
- **EM field label**: Package File Path
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_other_options\></sql_other_options\>

Defines any additional command line
Switches supported by the DTExec command line utility.

- **Requirements**: Optional
- **EM field label**: Other Options
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

### MS SQL Job Element Definitions

#### <sql_instance\></sql_instance\>

Defines the name or IP address of the SQL
Server machine with an optional instance name (e.g., SQLTEST,
SQLTEST\\SQLEXPRESS).

- **Requirements**: Required
- **EM field label**: Server Name\\Instance
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_wuid\></sql_wuid\>

Defines the Windows Authentication user name.

- **Requirements**: Required when <sql_winauth\> is
 True.
- **EM field label**: User Id
- **Valid Values**:
 - Characters: 1-61
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_user\></sql_user\>

Corresponds to the SQL user name.

- **Requirements**: Required when <sql_winauth\> is
 False.
- **EM field label**: User Id
- **Valid Values**:
 - Characters: 1-61
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_winauth\></sql_winauth\>

Defines whether to use Windows
Authentication for the job.

- **Requirements**: Optional
- **EM field label**: Windows Authentication
- **Valid Values**: True, False

#### <sql_connect_encrypt\></sql_connect_encrypt\>

Defines whether to use an encrypted
Connection to the database. Use of SSL to encrypt the connection must be
Pre-configured on the SQL server connection manager to use this option.

- **Requirements**: Optional
- **EM field label**: Encrypt
- **Valid Values**: True, False

#### <sql_connect_retry_attempts\></sql_connect_retry_attempts\>

Defines the number of
Connection retry attempts to be made if connection to MS SQL server
Fails initially.

- **Requirements**: Optional
- **EM field label**: Retry Attempts
- **Valid Values**: any number from 0-100

#### <sql_jobname\></sql_jobname\>

Defines the name of the job defined in the
SQL Server Agent.

- **Requirements**: Required
- **EM field label**: Job Name
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_monitor_only\></sql_monitor_only\>

Defines that the job should not be
Started by OpCon, and once the job is started outside of OpCon, its
Status will only be monitored.

- **Requirements**: Optional
- **EM field label**: Monitor Only
- **Valid Values**: True, False

#### <sql_monitor_endtime\></sql_monitor_endtime\>

Defines the time end time for
Monitoring a SQL Agent job. It is indicated as an hour offset from
Schedule date midnight (e.g., 17.5 means 5:30 PM on schedule date). This
Is useful when monitoring SQL server replication jobs that run
Continuously, but the monitoring activity is scheduled daily in new
OpCon schedules.

- **Requirements**: Optional
- **EM field label**: Monitoring End Time
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: any number from 0-2399 in
 Microsoft-formatted date time (e.g., 25.5 represents 1 day at
 1:30 AM).

#### <sql_other_options\></sql_other_options\>

Defines an override password using -$
Switch.

- **Requirements**: Optional
- **EM field label**: Other Options
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

### MS SQL Script Element Definitions

#### <sql_instance\></sql_instance\>

Defines the name or IP address of the SQL
Server machine with an optional instance name (e.g., SQLTEST,
SQLTEST\\SQLEXPRESS ).

- **Requirements**: Required
- **EM field label**: Server Name\\Instance
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_db_name\></sql_db_name\>

Defines the SQL database name.

- **Requirements**: Required
- **EM field label**: Database Name
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_user\></sql_user\>

Corresponds to the SQL user name.

- **Requirements**: Required when <sql_winauth\> is
 False.
- **EM field label**: User Id
- **Valid Values**:
 - Characters: 1-61
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_wuid\></sql_wuid\>

Defines the Windows Authentication user name.

- **Requirements**: Required when <sql_winauth\> is
 True.
- **EM field label**: User Id
- **Valid Values**:
 - Characters: 1-61
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_winauth\></sql_winauth\>

Defines whether to use Windows
Authentication for the job.

- **Requirements**: Optional
- **EM field label**: Windows Authentication
- **Valid Values**: True, False

#### <sql_connect_encrypt\></sql_connect_encrypt\>

Defines whether to use an encrypted
Connection to the database. Use of SSL to encrypt the connection must be
Pre-configured on the SQL server connection manager to use this option.

- **Requirements**: Optional
- **EM field label**: Encrypt
- **Valid Values**: True, False

#### <sql_script_statements\></sql_script_statements\>

Defines the SQL query to be
Run against the selected SQL server/database. Multiple
Semicolon-delimited queries can be run.

- **Requirements**: Required if <sql_script_path\> is
 not present.
- **EM field label**: Statement(s)
- **Valid Values**:
 - Characters: 1-4000
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### sql_script_path\></sql_script_path\>

Defines the path to the SQL script file
To be run against the selected SQL server/database. Only local file
Paths are allowed.

- **Requirements**: Required if
 <sql_script_statements\> is not present.
- **EM field label**: Script File Path
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_env_varinfo\></sql_env_varinfo\>

Contains the child elements needed to
Define a single environment variable for the job.

- **Requirements**: Optional for <jobdata\>
- **Valid Values**: One
 <sql_env_varname\> and one <sql_env_varvalue\> child
 element.

#### <sql_env_varname\></sql_env_varname\>

Defines the name of the variable to be
Used in the script. Environment variables provide the ability to send
Dynamic values to the script at runtime.

- **Requirements**: Required required if
 <sql_env_varvalue\> is present.
- **EM field label**: Name
- **Valid Values**:
 - Characters: 1-4000
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_env_varvalue\></sql_env_varvalue\>

Defines the value to be used in the
Script.

- **Requirements**: Required required if
 <sql_env_varname\> is present.
- **EM field label**: Value
- **Valid Values**:
 - Characters: 1-4000
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_script_use_exit\></sql_script_use_exit\>

Defines whether to use the exit code
That results from the script result.

- **Requirements**: Optional
- **EM field label**: Use Exit Code From Script Result
- **Valid Values**: True, False

#### <sql_redirect_path\></sql_redirect_path\>

Defines the path to the file where the
Results of the query should be redirected. Only local file paths are
Allowed.

- **Requirements**: Optional
- **EM field label**: File Path
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_other_options\></sql_other_options\>

Defines any additional command line
Switches supported by the SQLCMD tool.

- **Requirements**: Optional
- **EM field label**: Other Options
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

### MySQL Element Definitions

#### <sql_instance\></sql_instance\>

Defines the name or IP address of the MySQL
Server machine (e.g., MYSQLTEST).

- **Requirements**: Required
- **EM field label**: Server Name
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_db_name\></sql_db_name\>

Defines the SQL database name.

- **Requirements**: Required
- **EM field label**: Database Name
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_user\></sql_user\>

Defines the user name for the connection.

- **Requirements**: Required
- **EM field label**: User Id
- **Valid Values**:
 - Characters: 1-61
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_connect_port\></sql_connect_port\>

Defines the TCP/IP port number for the
Connection.

- **Requirements**: Optional
- **EM field label**: Port
- **Valid Values**: any number from 0-65535

#### <sql_script_path\></sql_script_path\>

Defines the path to the SQL script file
To be run against the selected MySQL server/database. Only local
File paths are allowed.

- **Requirements**: Required
- **EM field label**: Script File Path
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_env_varinfo\></sql_env_varinfo\>

Contains the child elements needed to
Define a single environment variable for the job.

- **Requirements**: Optional for <jobdata\>
- **Valid Values**: One
 <sql_env_varname\> and one <sql_env_varvalue\> child
 element.

#### <sql_env_varname\></sql_env_varname\>

Defines the name of the variable to be
Used in the script. Environment variables provide the ability to send
Dynamic values to the script at runtime.

- **Requirements**: Required required if
 <sql_env_varvalue\> is present.
- **EM field label**: Name
- **Valid Values**:
 - Characters: 1-4000
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_env_varvalue\></sql_env_varvalue\>

Defines the value to be used in the
Script.

- **Requirements**: Required required if
 <sql_env_varname\> is present.
- **EM field label**: Value
- **Valid Values**:
 - Characters: 1-4000
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_redirect_path\></sql_redirect_path\>

Defines the path to the file where the
Results of the query should be redirected. Only local file paths are
Allowed.

- **Requirements**: Optional
- **EM field label**: File Path
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_other_options\></sql_other_options\>

Defines any additional command line
Switches supported by the MySQL command line utility.

- **Requirements**: Optional
- **EM field label**: Other Options
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

### Oracle Element Definitions

#### <sql_instance\></sql_instance\>

Defines the name or IP address of the MySQL
Server machine (e.g., MYSQLTEST).

- **Requirements**: Required
- **EM field label**: Server Name
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_db_name\></sql_db_name\>

Defines the SQL database name.

- **Requirements**: Required
- **EM field label**: Database Name
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_user\></sql_user\>

Defines the user name for the connection.

- **Requirements**: Required
- **EM field label**: User Id
- **Valid Values**:
 - Characters: 1-61
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_connect_id\></sql_connect_id\>

Defines the connection ID.

- **Requirements**: Optional
- **EM field label**: Connection Id
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: numeric characters

#### <sql_script_path\></sql_script_path\>

Defines the path to the SQL script file
To be run against the selected Oracle server/database. Only local
File paths are allowed.

- **Requirements**: Required
- **EM field label**: Script File Path
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_oracle_params\></sql_oracle_params\>

Defines the parameter values to be
Passed to the script.

- **Requirements**: Optional
- **EM field label**: Parameters (positional)
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_redirect_path\></sql_redirect_path\>

Defines the path to the file where the
Results of the query should be redirected. Only local file paths are
Allowed.

- **Requirements**: Optional
- **EM field label**: File Path
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_other_options\></sql_other_options\>

Defines any additional command line
Switches supported by the Oracle command line utility.

- **Requirements**: Optional
- **EM field label**: Other Options
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

### Other DB Element Definitions

#### <sql_otherdb_connect\></sql_otherdb_connect\>

Defines the type of database
Connection to use for the job.

- **Requirements**: Required
- **Valid Values**: ODBC Connection String, OleDB
 Connection String, or DSN Name.

#### <sql_otherdb_connectstring\></sql_otherdb_connectstring\>

Defines the ODBC or OLE DB
Connection string for connecting to the database.

- **Requirements**: Required when
 <sql_otherdb_connect\> is ODBC Connection String or OleDB
 Connection String.
- **EM field label**: ODBC Connection String or OleDB Connection
 String
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_otherdb_dsn\></sql_otherdb_dsn\>

Defines a DSN name for connecting to the
Database.

- **Requirements**: Required when
 <sql_otherdb_connect\> is DSN Name.
- **EM field label**: DSN Name
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_winauth\></sql_winauth\>

Defines whether to use Windows
Authentication for the job.

- **Requirements**: Optional
- **EM field label**: Windows Authentication
- **Valid Values**: True, False

#### <sql_user\></sql_user\>

Corresponds to the SQL user name.

- **Requirements**: This is optional when <sql_otherdb_connect\> is
 ODBC Connection String or OleDB Connection String. It is required
 when <sql_otherdb_connect\> is DSN Name and <sql_winauth\> is
 False.
- **EM field label**: User Id
- **Valid Values**:
 - Characters: 1-61
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_wuid\></sql_wuid\>

Defines the user name for the connection.

- **Requirements**: Required when <sql_winauth\> is
 True.
- **EM field label**: User Id
- **Valid Values**:
 - Characters: 1-61
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_script_statements\></sql_script_statements\>

Defines the SQL query to be
Run against the selected SQL server/database. Multiple
Semicolon-delimited queries can be run.

- **Requirements**: Required
- **EM field label**: Statement(s)
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_env_varinfo\></sql_env_varinfo\>

Contains the child elements needed to
Define a single environment variable for the job.

- **Requirements**: Optional for <jobdata\>
- **Valid Values**: One
 <sql_env_varname\> and one <sql_env_varvalue\> child
 element.

#### <sql_env_varname\></sql_env_varname\>

Defines the name of the variable to be
Used in the script. Environment variables provide the ability to send
Dynamic values to the script at runtime.

- **Requirements**: Required required if
 <sql_env_varvalue\> is present.
- **EM field label**: Name
- **Valid Values**:
 - Characters: 1-4000
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_env_varvalue\></sql_env_varvalue\>

Defines the value to be used in the
Script.

- **Requirements**: Required required if
 <sql_env_varname\> is present.
- **EM field label**: Value
- **Valid Values**:
 - Characters: 1-4000
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_redirect_path\></sql_redirect_path\>

Defines the path to the file where the
Results of the query should be redirected. Only local file paths are
Allowed.

- **Requirements**: Optional
- **EM field label**: File Path
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

#### <sql_other_options\></sql_other_options\>

Defines any additional command line
Switches supported by the database command line utility.

- **Requirements**: Optional
- **EM field label**: Other Options
- **Valid Values**:
 - Characters: 1-255
 - Valid Characters: All except \~ (tilde), \`(grave accent), and
 \^ (caret).

## Tuxedo ART Job Element Structure

The following sample code contains the structure for defining every
Possible element for Tuxedo ART Job Data. For detailed information on
Each field for this job type, refer to [Tuxedo ART Job Details](../../job-types/tuxedo-art.md)
In the **Concepts** online help.

<jobdata\>

<tuxedo_art_script\></tuxedo_art_script\>

<tuxedo_art_owner\></tuxedo_art_owner\>

<tuxedo_art_jesroot_dir\></tuxedo_art_jesroot_dir\>

<tuxedo_art_env_shell\></tuxedo_art_env_shell\>

<tuxedo_art_variables\></tuxedo_art_variables\>

<tuxedo_art_step_control\>

<tuxedo_art_step_name\></tuxedo_art_step_name\>

<tuxedo_art_step_min\></tuxedo_art_step_min\>

<tuxedo_art_step_max\></tuxedo_art_step_max\>

<tuxedo_art_step_action\></tuxedo_art_step_action\>

<tuxedo_art_step_msg\></tuxedo_art_step_msg\>

</tuxedo_art_step_control\>

<tuxedo_art_step_control\>

<tuxedo_art_step_name\></tuxedo_art_step_name\>

<tuxedo_art_step_min\></tuxedo_art_step_min\>

<tuxedo_art_step_max\></tuxedo_art_step_max\>

<tuxedo_art_step_action\></tuxedo_art_step_action\>

<tuxedo_art_step_msg\></tuxedo_art_step_msg\>

</tuxedo_art_step_control\>

</jobdata\>

### Element Definitions

#### <tuxedo_art_script\></tuxedo_art_script\>

Defines the name of the script to run.

- **Requirements**: Required
- **EM field label**: Script
- **Valid Values**: Text string containing the name of the script
 - Valid characters: Alpha and numeric characters

#### <tuxedo_art_owner\></tuxedo_art_owner\>

Defines the user that is used to run the agent and Tuxedo ART
Environment.

- **Requirements**: Optional
- **EM field label**: Owner
- **Valid Values**: Text string containing the user that has
 permissions to run the script (default is \*).
 - Valid Characters: Alpha and numeric characters, \* (asterisk)

#### <tuxedo_art_jesroot_dir\></tuxedo_art_jesroot_dir\>

Defines the full path to the JES
Root environment so that the agent can retrieve the Tuxedo Job log.

- **Requirements**: Optional
- **EM field label**: JESRoot Environment
- **Valid Values**: A text string consisting of the full path of the
 JESROOT directory.
 - Valid Characters: Alpha and numeric characters, / (slash), -
 (hyphen), \_ (underscore) characters, and period.

#### <tuxedo_art_env_shell\></tuxedo_art_env_shell\>

Defines the name of the environment script that is called to
Setup the environment variables correctly when the connection is made to
The Tuxedo environment. The name must include the .sh extension.

- **Requirements**: Optional
- **EM field label**: Tuxedo Environment
- **Valid Values**: Text string containing the name of the environment
 shell to run ending in a .sh extension.
 - Valid Characters: Alpha and numeric characters and period

#### <tuxedo_art_variables\></tuxedo_art_variables\>

Defines the list of environment variables to be passed. The
Variables are defined as: name1=value1\|name2=value2\|name3=value3. The
Variables are passed in the order in which they are defined.

- **Requirements**: Optional
- **EM field label**: Variables
- **Valid Values**:
 - Characters: 1-4000
 - Valid Characters: Alpha and numeric characters, \* (asterisk), /
 (slash), \\ (backslash), % (percent), : (colon), - (hyphen) and
 \_ (underscore) characters, and period.

### Step Control Definitions

#### <tuxedo_art_step_control\></tuxedo_art_step_control\>

Defines step control information for the agent. The agent
Supports a maximum of 5 step control definitions per job.

- **Requirements**: Optional

#### <tuxedo_art_step_name\></tuxedo_art_step_name\>

Defines the name of the step defined in the script.

- **Requirements**: Required if tuxedo_art_step_control parent element
 is specified.
- **EM field label**: Step Name
- **Valid Values**:
 - Each name may contain alphabetic and numeric characters;
 however, a name cannot be more than eight characters in length
 and a name's first character cannot be numeric.
 - There can be one or two names up to eight characters each,
 separated by a period (.). There have to be between 1 and 17
 characters.
 - Although brackets are invalid characters, the string
 \[\[xxxx\]\] should be allowed where xxxx equals any character set.

#### <tuxedo_art_step_min\></tuxedo_art_step_min\>

Defines the minimum step completion code.

- **Requirements**: Required if tuxedo_art_step_control parent element
 is specified.
- **EM field label**: Min CC
- **Valid Values**:
 - The value must be less than or equal to the tuxedo_art_step_max
 value.
 - It can be any number between 0 and 4095

#### <tuxedo_art_step_max\></tuxedo_art_step_max\>

Defines the maximum step completion code.

- **Requirements**: Required if tuxedo_art_step_control parent element
 is specified.
- **EM field label**: Max CC
- **Valid Values**:
 - The value must be greater than or equal to the
 tuxedo_art_step_min value.
 - It can be any number between 0 and 4095

#### <tuxedo_art_step_action\></tuxedo_art_step_action\>

Defines the step action. Currently, only the 'Send Trigger
Message TO SAM' is supported (e.g., JEVENT=SS1TEST10).

- **Requirements**: Required if tuxedo_art_step_control parent element
 is specified.
- **EM field label**: Step Action
- **Valid Values**:
 - **Send Trigger Message to SAM**: Tells OpCon that a message
 is to be sent to the Schedule Operations screen of the graphical
 interfaces. The Trigger Message field is used to define the
 message sent.

#### <tuxedo_art_step_msg\></tuxedo_art_step_msg\>

Defines the trigger message that is sent to SAM for Agent
Feedback. This must match an agent Feedback User Message match event
Definition.

- **Requirements**: Required if tuxedo_art_step_control parent element
 is specified.
- **EM field label**: Trigger Message
- **Valid Values**: This may refer to any valid OpCon event that
 was predefined in the Tuxedo ART Event table.
 - Characters: 1-20
 - Valid Characters: All
 - If the text begins with '$EVENT= ', a maximum of 8 additional
 characters are allowed.

## UNIX Job Element Structure

The following sample code contains the structure for defining every
Possible element for UNIX Primary Job Data. For detailed information on
Each field for this job type, refer to [UNIX Job Details](../../job-types/unix.md) in the
**Concepts** online help.

<msg\>

   <msgtype\></msgtype\>

   <schedule\>

      <job\>

         <jobdata\>

            <start_image\></start_image\>

            <params\></params\>

            <pre_run\></pre_run\>

            <uxuid\></uxuid\>

            <grp_id\></grp_id\>

            <unix_job_action\></unix_job_action\>

            <unix_file_2\_watch\></unix_file_2\_watch\>

            <unix_file_start_watch\></unix_file_start_watch\>

            <unix_file_end_watch\></unix_file_end_watch\>

            <unix_file_stable\></unix_file_stable\>

            <unix_file_subdir\></unix_file_subdir\>

            <nice_val\></nice_val\>

            <exit_info\>

               <exit_oper\></exit_oper\>

               <exit_val\></exit_val\>

            </exit_info\>

            <sgnl_info\>

               <sgnl_oper\></sgnl_oper\>

               <sgnl_val\><sgnl_val\>

            </sgnl_info\>

            <core_dmp\></core_dmp\>

            <unix_log_srch\>

               <unix_log_srch_opr\></unix_log_srch_opr\>

               <unix_log_srch_str\></unix_log_srch_str\>

               <unix_log_exit_val\></unix_log_exit_val\>

            </unix_log_srch\>

            <unix_applog_path\></unix_applog_path\>

            <unix_environment_variables\>

               <unix_env_var\></unix_env_var\>

               <unix_env_var\></unix_env_var\>

            </unix_environment_variables\>

         </jobdata\>

      </job\>

   </schedule\>

</msg\>

### Job Information Element Definitions

#### <start_image\></start_image\>

Defines the full path to the executable file
On the agent machine.

- **Requirements**: Required
- **EM field label**: Start Image
- **Valid Values**:
 - Characters: 1-2000

#### <parms\></parms\>

Defines the parameters that are passed to the
Start image.

- **Requirements**: Optional
- **EM field label**: Parameters
- **Valid Values**:
 - Characters: 1-2000
 - Invalid Characters: '(Single Quote), \~ (tilde), \`(grave
 accent)

#### <PRE_RUN\></PRE_RUN\>

Contains the full path of the prerun command line that will be passed to the
agent.

- **Requirements**: Optional
- **EM field label**: Prerun
- **Valid Values**:
 - Min characters: 1
 - Maximum Characters (depending on data type): 2000

#### <UXUID\></UXUID\>

Defines the UNIX user ID for the job. The UNIX user ID and the Group ID are used for
UNIX authentication.

- **Requirements**: Required
- **EM field label**: User Id
- **Valid Values**:
 - Characters: 1-30

#### <GRP_ID\></GRP_ID\>

Defines the UNIX user ID and the Group ID are used for UNIX authentication.

- **Requirements**: Required
- **EM field label**: Group Id
- **Valid Values**:
 - Characters: 1-30

#### <unix_job_action\></unix_job_action\>

Defines the run process the job uses.

- **Requirements**: Required for UNIX <jobdata\>
- **EM field label**: Job Action
- **Valid Values**: Embedded Script, File Arrival,
 and Run Program.

#### <unix_file_2\_watch\></unix_file_2\_watch\>

Defines the file path and name of the
File to detect.

- **Requirements**: Optional for UNIX <jobdata\>
- **EM field label**: File Name
- **Valid Values**: The file name must not exceed 260 characters

#### <unix_file_start_watch\></unix_file_start_watch\>

Defines the start of the time
Frame that the program uses to watch for the arrival of the file.

- **Requirements**: Optional for UNIX <jobdata\>
- **EM field label**: Start Time
- **Valid Values**: a number of days and time, or a
 Token.

#### <unix_file_end_watch\></unix_file_end_watch\>

Defines the end of the time frame
That the program uses to watch for the arrival of the file.

- **Requirements**: Optional for UNIX <jobdata\>
- **EM field label**: End Time
- **Valid Values**: a number of days and time, or a
 Token.

#### <unix_file_stable\></unix_file_stable\>

Defines the amount of time the file
Size has remained stable to indicate the file has finished arriving.

- **Requirements**: Optional for UNIX <jobdata\>
- **EM field label**: Duration
- **Valid Values**: a number of seconds, or a Token

#### <unix_file_subdir\></unix_file_subdir\>

Defines whether or not to search
Sub-directories under the specified file path.

- **Requirements**: Optional for UNIX <jobdata\>
- **EM field label**: Sub-directory Search
- **Valid Values**: True, False

#### <NICE_VAL\></NICE_VAL\>

Used to increase or decrease the priority of a job and prerun (if present).

- **Requirements**: Optional
- **EM field label**: NICE Value
- **Valid Values**: an integer ranging
 from -20 to 20.

### Exit Code Element Definitions

#### <EXIT_INFO\></EXIT_INFO\>

Parent element for defining a single failure criterion
For the job. SMADDI supports up to five
<EXIT_INFO\> elements for each UNIX job.

- **Requirements**: Optional for <jobdata\>. Required to define
 failure criteria for the job. At least one
 <EXIT_INFO\> element must be provided.
- **Valid Values**: One
 <EXIT_OPER\> and one <EXIT_VAL\> child element.

#### <EXIT_OPER\></EXIT_OPER\>

The exit operators are a list of conditions to be met on the exit values
(up to 5 per job). The Failure Criteria
Determines how OpCon reports the final status
Of the job. The three areas of value criteria include Exit Codes,
Signals, and Core Dump. If any of the specified conditions are met,
OpCon reports the job as Failed.

- **Requirements**: Required field for <exit_info\>
- **Valid Values**: EQ, NE, LT, GT, GE, LE

#### <EXIT_VAL\></EXIT_VAL\>

Defines the value of the exit condition and up to five can be defined per job
Definition. The Failure Criteria determines how
OpCon reports the final status of the job.
The three areas of value criteria include Exit Codes, Signals, and Core
Dump. If any of the specified conditions are met,
OpCon reports the job as Failed.

- **Requirements**: Required field for <exit_info\>
- **Valid Values**: an integer ranging
 from -255 to 255.

### Signal Element Definitions

#### <SGNL_INFO\></SGNL_INFO\>

Parent element for defining a single signal failure
Criterion for the job. SMADDI supports up to five
<SGNL_INFO\> elements for each UNIX job.

- **Requirements**: Optional for <jobdata\>
- **Valid Values**: One
 <SGNL_OPER\> and one <SGNL_VAL\> child element.

#### <SGNL_OPER\></SGNL_OPER\>

The signal operators are a list of conditions to be made on the exit
Values. If any signal failure criterion is TRUE when a job finishes,
OpCon reports the job as Failed.

- **Requirements**: Required field for <sgnl_info\>
- **Valid Values**: EQ, NE, LT, GT, GE, LE

#### <SGNL_VAL\></SGNL_VAL\>

Defines the value of the signal exit and up to 5 can be defined per job
Definition.

- **Requirements**: Required field for <sgnl_info\>
- **Valid Values**: an integer ranging
 from 0 to 99.

#### <CORE_DMP\></CORE_DMP\>

Determines if the job should fail when the job does create a core file,
Or if the job should fail when the job does not create a core file.

- **Requirements**: This is a optional field
- **EM field label**: Fails on core dump
- **Valid Values**: Yes, No
 - Yes: If the process creates a core file the agent reports the job
 as Failed.
 - No: If the process does not create a core file, the agent reports
 the job as Failed.

### Job Output Parsing Element Definitions

#### <unix_log_srch\></unix_log_srch\>

Parent element for defining the search criteria for analyzing job output and the resulting
Exit code when the criteria are met.

- **Requirements**: Optional for UNIX Job Output Parsing <jobdata\>
- **Valid Values**: Any valid child element

#### <unix_log_srch_opr\></unix_log_srch_opr\>

Defines the type of search operation
To perform.

- **Requirements**: Optional for <unix_log_srch\>
- **EM field label**: Search Operation
- **Valid Values**: Contains and Does Not Contain

#### <unix_log_srch_str\></unix_log_srch_str\>

Defines the parsing value string to be
Searched.

- **Requirements**: Optional for <unix_log_srch\>
- **EM field label**: String to Search
- **Valid Values**: The String to Search must not exceed 255
 characters.

#### <unix_log_exit_val\></unix_log_exit_val\>

Defines the exit code to use if the
String to Search matches the Search Operation criteria.

- **Requirements**: Optional for <unix_log_srch\>
- **EM field label**: Exit Code
- **Valid Values**: any integer value
 in the range of -2147483648 through 2147483647.

#### <unix_applog_path\></unix_applog_path\>

Defines an external application log to
Be attached to the job output log.

- **Requirements**: Optional
- **EM field label**: Custom Application Log
- **Valid Values**: The Custom Application Log must not exceed 4000
 characters.

### Environment Variables Element Definitions

#### <unix_environment_variables\></unix_environment_variables\>

Contains the child element
Needed to define one or more environment variables for the job.

- **Requirements**: Optional for <jobdata\>
- **Valid Values**: One <unix_env_var\> child element for every
 environment variable defined for the job.

#### <unix_env_var\></unix_env_var\>

Defines the name=value pair to be used in
The script. Environment variables provide the ability to send dynamic
Values to the script at runtime.

- **Requirements**: Required required if
 <unix_environment_variables\> is present.
- **EM field label**: Env Variable Name, Env Variable Value
- **Valid Values**:
 - Min characters: 3
 - Max characters: 4000
 - Valid Characters: All except = (equals sign) which cannot be
 included in the Env Variable Name.

## Windows Job Elements

The following sample code contains the structure for defining every
Possible element for Windows Primary Job Data. For detailed information
On each field for this job type, refer to [Windows Job Details](../../job-types/windows.md) in
The **Concepts** online help.

<jobdata\>

**\-\-\-\-\--**[Job Information Element Definitions](#Job4)
**\-\-\-\-\--**

   <wuid\></wuid\>

   <job_priority\></job_priority\>

   <win_job_action\></win_job_action\>

   <win_file_2\_watch\></win_file_2\_watch\>

   <win_file_start_watch\></win_file_start_watch\>

   <win_file_end_watch\></win_file_end_watch\>

   <win_file_stable\></win_file_stable\>

   <win_file_subdir\></win_file_subdir\>

   <cmd_line\></cmd_line\>

   <working_dir\></working_dir\>

   <ecof\></ecof\>

**\-\-\-\-\--**[Exit Code Element Definitions](#Exit)
**\-\-\-\-\--**

   <fail_1\_cond\></fail_1\_cond\>

   <fail_1\_val\></fail_1\_val\>

   <fail_2\_cond\></fail_2\_cond\>

   <fail_2\_val\></fail_2\_val\>

   <fail_3\_cond\></fail_3\_cond\>

   <fail_3\_val\></fail_3\_val\>

   <fail_4\_cond\></fail_4\_cond\>

   <fail_4\_val\></fail_4\_val\>

   <fail_5\_cond\></fail_5\_cond\>

   <fail_5\_val\></fail_5\_val\>

**\-\-\-\-\--**[Prerun Job Element Definitions](#Prerun7)
**\-\-\-\-\--**

   <wprerun\>

      <pre_cmd_line\></pre_cmd_line\>

      <pre_working_dir\></pre_working_dir\>

      <pre_fail_cond\></pre_fail_cond\>

      <pre_fail_val\></pre_fail_val\>

   </wprerun\>

  **\-\-\-\-\--**[Job Output Parsing Element Definitions](#Job8)**\-\-\-\-\--**

   <win_log_srch\>

      <win_log_srch_opr\></win_log_srch_opr\>

      <win_log_srch_str\></win_log_srch_str\>

      <win_log_exit_val\></win_log_exit_val\>

   </win_log_srch\>

   <win_applog_path\></win_applog_path\>

  **\-\-\-\-\--**[Environment Variables Element Definitions](#Environm)**\-\-\-\-\--**

   <win_environment_variables\>

      <win_env_var\></win_env_var\>

      <win_env_var\></win_env_var\>

   </win_environment_variables\>

</jobdata\>

### Job Information Element Definitions

#### <wuid\></wuid\>

Defines the Windows user to be impersonated when
Launching the job.

- **Requirements**: Required for Windows <jobdata\>
- **EM field label**: User ID
- **Valid Values**: The user name must not exceed 32 characters

#### <job_priority\></job_priority\>

Defines the Windows priority with which the
Job runs.

- **Requirements**: Required for Windows <jobdata\>
- **EM field label**: Job Priority
- **Valid Values**: Normal, High, Idle, and
 Real-Time.

#### <win_job_action\></win_job_action\>

Defines the run process the job uses.

- **Requirements**: Required for Windows <jobdata\>
- **EM field label**: Job Action
- **Valid Values**: Embedded Script, File Arrival,
 and Run Program.

#### <win_file_2\_watch\></win_file_2\_watch\>

Defines the file path and name of the
File to detect.

- **Requirements**: Optional for Windows <jobdata\>
- **EM field label**: File Name
- **Valid Values**: The file name must not exceed 260 characters

#### <win_file_start_watch\></win_file_start_watch\>

Defines the start of the time frame
That the program uses to watch for the arrival of the file.

- **Requirements**: Optional for Windows <jobdata\>
- **EM field label**: Start Time
- **Valid Values**: a number of days and time, or a
 Token.

#### <win_file_end_watch\></win_file_end_watch\>

Defines the end of the time frame
That the program uses to watch for the arrival of the file.

- **Requirements**: Optional for Windows <jobdata\>
- **EM field label**: End Time
- **Valid Values**: a number of days and time, or a
 Token.

#### <win_file_stable\></win_file_stable\>

Defines the amount of time the file size
Has remained stable to indicate the file has finished arriving.

- **Requirements**: Optional for Windows <jobdata\>
- **EM field label**: Duration
- **Valid Values**: a number of seconds, or a Token

#### <win_file_subdir\></win_file_subdir\>

Defines whether or not to search
Sub-directories under the specified file path.

- **Requirements**: Optional for Windows <jobdata\>
- **EM field label**: Sub-directory Search
- **Valid Values**: True, False

#### <cmd_line\></cmd_line\>

Defines the job's command line.

- **Requirements**: Required for Windows <jobdata\>
- **EM field label**: Command Line
- **Valid Values**: The command line must not exceed 4000 characters

#### <working_dir\></working_dir\>

Defines the Working Directory used for the
Job.

- **Requirements**: Optional for Windows <jobdata\>
- **EM field label**: Working Directory
- **Valid Values**: The Working Directory must not exceed 255
 characters.

#### <ecof\></ecof\>

Defines the Exit Code Override File used by the
Job.

- **Requirements**: Optional for Windows <jobdata\>
- **EM field label**: E.C.O.F
- **Valid Values**: The Exit Code Override File must not exceed 255
 characters.

### Exit Code Element Definitions

#### <fail_1\_cond\></fail_1\_cond\>

Defines the first Exit Code Operator used
By the job.

- **Requirements**: Optional for Windows <jobdata\>
- **Valid Values**: Valid data values for this element are <space\>,
 EQ, NE, LT, GT, GE, and LE.

#### <fail_1\_val\></fail_1\_val\>

Defines the first Exit Code Value.

- **Requirements**: Optional for Windows <jobdata\>
- **Valid Values**: any integer value
 in the range of -2147483648 through 2147483647.

#### <fail_2\_cond\></fail_2\_cond\>

Defines the second Exit Code Operator to be
Used by the job.

- **Requirements**: Optional for Windows <jobdata\>
- **Valid Values**: Valid data values for this element are <space\>,
 EQ, NE, LT, GT, GE, and LE.

#### <fail_2\_val\></fail_2\_val\>

Defines the second Exit Code Value.

- **Requirements**: Optional for Windows <jobdata\>
- **Valid Values**: any integer value
 in the range of -2147483648 through 2147483647.

#### <fail_3\_cond\></fail_3\_cond\>

Defines the third Exit Code Operator to be
Used by the job.

- **Requirements**: Optional for Windows <jobdata\>
- **Valid Values**: Valid data values for this element are <space\>,
 EQ, NE, LT, GT, GE, and LE.

#### <fail_3\_val\></fail_3\_val\>

Defines the third Exit Code Value.

- **Requirements**: Optional for Windows <jobdata\>
- **Valid Values**: any integer value
 in the range of -2147483648 through 2147483647.

#### <fail_4\_cond\></fail_4\_cond\>

Defines the fourth Exit Code Operator to be
Used by the job.

- **Requirements**: Optional for Windows <jobdata\>
- **Valid Values**: Valid data values for this element are <space\>,
 EQ, NE, LT, GT, GE, and LE.

#### <fail_4\_val\></fail_4\_val\>

Defines the fourth Exit Code Value.

- **Requirements**: Optional for Windows <jobdata\>
- **Valid Values**: any integer value
 in the range of -2147483648 through 2147483647.

#### <fail_5\_cond\></fail_5\_cond\>

Defines the fifth Exit Code Operator to be
Used by the job.

- **Requirements**: Optional for Windows <jobdata\>
- **Valid Values**: Valid data values for this element are <space\>,
 EQ, NE, LT, GT, GE, and LE.

#### <fail_5\_val\></fail_5\_val\>

Defines the fifth Exit Code Value.

- **Requirements**: Optional for Windows <jobdata\>
- **Valid Values**: any integer value
 in the range of -2147483648 through 2147483647.

### Prerun Job Element Definitions

#### <wprerun\></wprerun\>

The parent element <wprerun\> contains the child elements needed to
Describe a prerun job for the primary job.

- **Requirements**: Optional for Windows Prerun <jobdata\>
- **Valid Values**: Any valid child element. SMADDI allows only one
 <wprerun\> element per <jobdata\> element.

#### <pre_cmd_line\></pre_cmd_line\>

Defines the command line to be used when
Launching the prerun job.

- **Requirements**: Required for <wprerun\>
- **Valid Values**: The Command Line must not exceed 4000 characters

#### <pre_working_dir\></pre_working_dir\>

Defines the Working Directory used for
The prerun.

- **Requirements**: Optional for <wprerun\>
- **Valid Values**: The prerun Working Directory must not exceed 255
 characters.

#### <pre_fail_cond\></pre_fail_cond\>

Defines the Prerun Exit Code Operator.

- **Requirements**: Optional for <wprerun\>
- **Valid Values**: Valid data values for this element are <space\>,
 EQ, NE, LT, GT, GE, and LE.

#### <pre_fail_val\></pre_fail_val\>

Defines the Prerun Exit Code Value.

- **Requirements**: Optional for <wprerun\>
- **Valid Values**: any integer value
 in the range of -2147483648 through 2147483647.

### Job Output Parsing Element Definitions

#### <win_log_srch\></win_log_srch\>

Parent element for defining the search criteria for analyzing job output and the resulting
Exit code when the criteria are met.

- **Requirements:** Optional for Windows Job Output Parsing
 <jobdata\>.
- **Valid Values:** Any valid child element

#### <win_log_srch_opr\></win_log_srch_opr\>

Defines the type of search operation to
Perform.

- **Requirements:** Optional for <win_log_srch\>
- **EM field label:** Search Operation
- **Valid Values:** Contains and Does Not Contain

#### <win_log_srch_str\></win_log_srch_str\>

Defines the parsing value string to be
Searched.

- **Requirements:** Optional for <win_log_srch\>
- **EM field label:** String to Search
- **Valid Values:** The String to Search must not exceed 255
 characters.

#### <win_log_exit_val\></win_log_exit_val\>

Defines the exit code to use if the
String to Search matches the Search Operation criteria.

- **Requirements:** Optional for <win_log_srch\>
- **EM field label:** Exit Code
- **Valid Values:** any integer value
 in the range of -2147483648 through 2147483647.

#### <win_applog_path\></win_applog_path\>

Defines an external application log to
Be attached to the job output log.

- **Requirements:** Optional
- **EM field label:** Custom Application Log
- **Valid Values:** The Custom Application Log must not exceed 4000
 characters.

### Environment Variables Element Definitions

#### <win_environment_variables\></win_environment_variables\>

Contains the child element
Needed to define one or more environment variables for the job.

- **Requirements**: Optional for <jobdata\>
- **Valid Values**: One <win_env_var\> child element for every
 environment variable defined for the job.

#### <win_env_var\></win_env_var\>

Defines the name=value pair to be used in
The script. Environment variables provide the ability to send dynamic
Values to the script at runtime.

- **Requirements**: Required required if
 <win_environment_variables\> is present.
- **EM field label**: Env Variable Name, Env Variable Value
- **Valid Values**:
 - Min characters: 3
 - Max characters: 4000
 - Valid Characters: All except = (equals sign) which cannot be
 included in the Env Variable Name.

## z/OS Job Elements

The following sample code contains the structure for defining every
Possible element for z/OS Primary Job Data. For detailed information on
Each field for this job type, refer to [z/OS Job Details](../../job-types/zos.md) in the
**Concepts** online help.

<jobdata\>

**\-\-\-\-\--**[Job Information Element Definitions](#Job3)
**\-\-\-\-\--**

   <event_type\></event_type\>

   <event_name\></event_name\>

   <security_id\></security_id\>

   <ddname\></ddname\>

   <override_ddname\></override_ddname\>

   <member_name\></member_name\>

   <low_job_cond\></low_job_cond\>

   <max_job_cond\></max_job_cond\>

   <submit_from\></submit_from\>

   <cmd_parm\></cmd_parm\>

   <prsysid\></prsysid\>

   <restart_dupdsnact\></restart_dupdsnact\>

   <dupdsnact\></dupdsnact\>

   <restart_gdg\></restart_gdg\>

**\-\-\-\-\--**[Token Equation Element Definitions](#Token)
**\-\-\-\-\--**

   <token\></token\>

**\-\-\-\-\--**[Step Control Element Definitions](#Step)
**\-\-\-\-\--**

   <step_control\>

      <step_name\></step_name\>

      <step_min\></step_min\>

      <step_max\></step_max\>

      <step_action\></step_action\>

      <step_msg\></step_msg\>

   </step_control\>

**\-\-\-\-\--**[File Prerun Element Definitions](#File2)
**\-\-\-\-\--**

   <file_prerun\>

      <dsn_filename\></dsn_filename\>

      <dsn_gen\></dsn_gen\>

      <dsn_cond_when\></dsn_cond_when\>

      <dsn_jobname\></dsn_jobname\>

   </file_prerun\>

**\-\-\-\-\--**[Message Prerun Element Definitions](#Message2)
**\-\-\-\-\--**

   <msg_prerun\>

      <msg_key\></msg_key\>

      <msg_gen\></msg_gen\>

      <msg_when\></msg_when\>

      <msg_jobname\></msg_jobname\>

      <msg_offset\></msg_offset\>

      <msg_len\></msg_len\>

   </msp_prerun\>

**\-\-\-\-\--**[Task Prerun Element Definitions](#Task)
**\-\-\-\-\--**

   <task_prerun\>

      <task_name\></task_name\>

      <task_cond\></task_cond\>

   </task_prerun\>

**\-\-\-\-\--**[Tape Prerun Element Definitions](#Tape)
**\-\-\-\-\--**

   <tape_prerun\>

      <tape_devname\></tape_devname\>

      <tape_devnum\></tape_devnum\>

   </tape_prerun\>

   <rexx_prerun\>

      <rexx_name\></rexx_name\>

      <rexx_ddname\></rexx_ddname\>

      <rexx_parm\></rexx_parm\>

   </rexx_prerun\>

</jobdata\>

### Job Information Element Definitions

#### <event_type\></event_type\>

Defines the z/OS Job sub-type. The default is
A standard Batch Job (submitted from a standard JCL library and run
In a JES initiator). Each job type has a different execution profile and
Method of resolving security and access permissions.

- **Requirements**: Required for z/OS <jobdata\>
- **EM field label**: z/OS Job Type
- **Valid Values**: The options are Batch Job, Started Task, Console
 Command Execution, REXX Event (Dynamic), Tracked Job, and Queued
 Job.

#### <event_name\></event_name\>

Defines different settings based on the z/OS
Job Type. The default is the first word, up to eight characters, from
The job name:

- **Requirements**: Required for all event types
- For Batch jobs, <event_name\> is the JCL Member name in the job
 definition on the daily schedule.
 - **EM field label**: Member Name
- For Started tasks, <event_name\> is the Started Task Name
 - **EM field label**: Started Task Name
- For Commands, <event_name\> is the Host Job Name
 - **EM field label**: Host Job Name
- For REXX events, <event_name\> is the Rexx Exec Name
 - **EM field label**: Exec Name
- This element is ignored for Tracked and Queued Event Types
 - **EM field label**: n/a
- **Valid Values**: Valid data characters for this element are
 uppercase alphabetical characters (A -- Z), numeric characters (0 --
 9), the dollar sign ($), the pound sign (\#), and the at sign (@).
 The event name must not exceed eight characters. The first character
 cannot be numeric.

:::note
Tokens should also be allowed. Although brackets are invalid characters, the string \[\[xxxx\]\] should be allowed where xxxx equals any character set.
:::

#### <security_id\></security_id\>

Defines the z/OS security ID to be assigned
To this job, if any. The default is the user ID in the job card or the
USERID from XPSPARMS.

- **Requirements**: Optional for the 'Batch Job' event type
- **EM field label**: Batch User
- **Valid Values**: Valid data characters for this element are
 uppercase alphabetical characters (A -- Z), numeric characters (0 --
 9), the dollar sign ($), the pound sign (\#), and the at sign (@).
 The first character cannot be numeric.

:::note
Tokens should also be allowed. Although brackets are invalid characters, the string \[\[xxxx\]\] should be allowed where xxxx equals any character set.
:::

#### <ddname\></ddname\>

Defines the DD Name in the agent task that
Contains the library name(s) that contain this job's JCL or the Rexx
Exec. The default is XPSJCL or the value of the JCLDD parameter in
XPSPARMS.

- **Requirements**: Optional for 'Batch Job' or 'REXX Event'
 (Dynamic) event type.
- **EM field label (Batch)**: DDNAME
- **EM field label (Rexx)**: Submit DDNAME
- **Valid Values**: Valid data characters for this element are
 uppercase alphabetical characters (A -- Z), numeric characters (0 --
 9), the dollar sign ($), the pound sign (\#), and the at sign (@).
 The first character cannot be numeric, and the name cannot be more
 than eight characters in length.

:::note
Tokens should also be allowed. Although brackets are invalid characters, the string \[\[xxxx\]\] should be allowed where xxxx equals any character set.
:::

#### <override_ddname\></override_ddname\>

Defines the DD Name in the agent task to
Search for JCL before the DDNAME.

- **Requirements**: Optional for 'Batch Job' event type
- **EM field label**: Override DDNAME
- **Valid Values**: Valid data characters for this element are
 uppercase alphabetical characters (A -- Z), numeric characters (0 --
 9), the dollar sign ($), the pound sign (\#), and the at sign (@).
 The first character cannot be numeric.

:::note
Tokens should also be allowed. Although brackets are invalid characters, the string \[\[xxxx\]\] should be allowed where xxxx equals any character set.
:::

#### <member_name\></member_name\>

Defines a Member name to be used in place of
The <event_name\>. It is most commonly used for temporary overrides.

- **Requirements**: Optional for 'Batch Job' event type
- **EM field label**: Temporary Member
- **Valid Values**: Valid data characters for this element are
 uppercase alphabetical characters (A -- Z), numeric characters (0 --
 9), the dollar sign ($), the pound sign (\#), and the at sign (@).
 The first character cannot be numeric, and the name cannot be more
 than eight characters in length.

:::note
Tokens should also be allowed. Although brackets are invalid characters, the string \[\[xxxx\]\] should be allowed where xxxx equals any character set.
:::

#### <low_job_cond\></low_job_cond\>

Defines the minimum tolerated return code
For the job. Any return code less than this value is considered a
Failure condition. If it is not defined, the low return code will not be
Checked.

- **Requirements**: Optional for Batch Job, Started Task, 'REXX
 Event' (Dynamic), Tracked Job, and Queued Job.
- **EM field label**: Min CC
- **Valid Values**: an integer value in
 the range 0 through 4095. If defined, the value must be less than or
 equal to the max_job_cond value.

#### <max_job_cond\></max_job_cond\>

Defines the maximum tolerated return code
For the job. Any return code greater than this value is considered a
Failure condition. If it is not defined, the high return code will not
Be checked.

- **Requirements**: Optional for 'Batch Job', 'Started Task',
 'REXX Event' (Dynamic), 'Tracked Job', or 'Queued Job' event
 types.
- **EM field label**: Max CC
- **Valid Values**: an integer value in
 the range 0 through 4095. If defined, the value must be greater than
 or equal to the low_job_cond value.

#### <submit_from\></submit_from\>

Determines if the job will be started on the
System where the pre-runs were satisfied.

- **Requirements**: Optional for all event types: 'Batch Job',
 'Started Task', 'REXX Event' (Dynamic), 'Tracked Job',
 'Queued Job' and 'Console Command Execution'.
- **EM field label**: Submit on any System
- **Valid Values**: **From Any agent** or
 **Primary agent Only**. Set to **Primary agent Only** to force submission on the primary agent, or **From Any agent** to submit from the first agent that qualifies the pre-run requirements.

:::note
Primary agent refers to the agent/PSAM on which the job is scheduled. It should not be confused with a "gateway agent" in a SYSPLEX group.
:::

#### <cmd_parm\></cmd_parm\>

Defines the complete start parameter for the
Started task (e.g., TYPE=WARM).

- **Requirements**: Optional for 'Console Command Execution',
 'Started Task', or 'REXX Event' (Dynamic), event type.
- **EM field label (Command)**: Operator Command
- **EM field label (Rexx or Started Task)**: Execution Parms
- **Valid Values**: It may contain any properties allowed in a Stared
 Task EXEC parameter, a console command or the parameter string for
 the REXX program, depending on the event type. There has to be
 between 1 and 256 characters.

#### <prsysid\></prsysid\>

Specifies the SMF System ID (Machine ID) on
Which to run the prerun, if other than the Primary Machine ID. This ID
Must be a member of the z/OS Sysplex, have a z/OS LSAM installed and
Running. Enter a value of ANY to allow preruns on any machine in the
Sysplex. Defines the data relating to the "Pre-run
System" field in the EM.

- **Requirements**: Optional for all event types: 'Batch Job',
 'Started Task', 'REXX Event' (Dynamic), 'Tracked Job',
 'Queued Job' and 'Console Command Execution'.
- **EM field label**: Pre-run System
- **Valid Values**: The value may be *a one- to four-character string
 defining a Machine*, *ANY*, or *blank* (to run the prerun on the
 Primary machine).

:::note
The File Prerun, Message Prerun, Task Prerun, Tape Prerun, and REXX Preruns use this one element to determine the machine ID. If the element is not specified, all of the preruns run on the Primary Machine ID.
:::

#### <restart_dupdsnact\></restart_dupdsnact\>

For a Restart run, the <restart_dupdsnact\> element determines how XPR
Cleans up duplicate dataset(s).

- **Requirements**: Optional for all event types: 'Batch Job',
 'Started Task', 'REXX Event' (Dynamic), 'Tracked Job',
 'Queued Job' and 'Console Command Execution'.
- **EM field label**: Duplicate Dataset Action - Restart
- **Valid Values**:
 - <blank\>: The agent defaults are used
 - None: Disables XPR DSN cleanup
 - Scratch: Prevents NOT CATLGD 2 errors by scratching any
 pre-existing datasets.

#### <dupdsnact\></dupdsnact\>

For a Normal run, the <dupdsnact\> element determines how XPR cleans up
Duplicate dataset(s).

- **Requirements**: Optional for all event types: 'Batch Job',
 'Started Task', 'REXX Event' (Dynamic), 'Tracked Job',
 'Queued Job' and 'Console Command Execution'.
- **EM field label**: Duplicate Dataset Action - Normal
- **Valid Values**:
 - <blank\>: The agent defaults are used
 - None: Disables XPR DSN cleanup
 - Scratch: Prevents NOT CATLGD 2 errors by scratching any
 pre-existing datasets.

:::note
The File Prerun, Message Prerun, Task Prerun, Tape Prerun, and REXX Preruns use this one element to determine the machine ID. If the element is not specified, all of the preruns run on the Primary Machine ID.
:::

#### <restart_gdg\></restart_gdg\>

Determines how XPR determines Generation
Data Group (GDG) base generations.

- **Requirements**: Optional for all event types: 'Batch Job',
 'Started Task', 'REXX Event' (Dynamic), 'Tracked Job',
 'Queued Job' and 'Console Command Execution'.
- **EM field label**: GDG Regression
- **Valid Values**:
 - <blank\>: The agent defaults are used
 - None: Disables GDG adjustment
 - Absolute: Resets the base generation to the value it had during
 the first run.
 - Relative: Looks for positive relative generations in the steps
 to be run to determine the correct base.
 - Catalog Resync: Based on looking at the bypassed steps to
 determine the highest relative generation already created, sets
 the base so that it resolves to the current generation.

### Token Equation Element Definitions

#### <token\></token\>

- The JCL parameter symbol or OpCon token, separated by double backslashes. Each
 override (@) or symbolic (&) definition is separated by two
 backslashes (\\\\).
- When the z/OS LSAM encounters an "&name=" symbolic, it scans each
 JCL statement for an operand match. Only operands are changed by an
 "&" symbolic override.
- To qualify for replacement, an operand must be preceded by a comma
 or a blank and include an "=" sign (e.g., all instances of
 UNIT=xxxxx are substituted using &UNIT=SYSDA).
- The "@" overrides should not be confused with "&" symbolics
 Overrides are placeholders for data and symbolics are replacements
 of very specific data, in a specific field, enclosed in specific
 delimiters.
 - Symbolics reference operands only

Overrides can be embedded anywhere in JCL or SYSIN data and can define
An entire 80 byte JCL record. Overrides have no restrictions on content
Or delimiters except they cannot contain double backslashes (e.g., a
Date card override could be represented as \@TODAY=October 12, 2005).

- **Requirements**: Optional for 'Batch Job' event type
- **EM field label**: JCL Substitution
- **Valid Values**: Internal OpCon are
 represented by \[\[...\]\] notations and may be used as data components of either symbolics or overrides (e.g.,
 \@TODAY=\[\[$DATE\]\]). Valid Values include:
 - Minimum Characters: 7 (minimum valid definition has the form
 \\\\&a=\\\\ or \\\\\@a=\\\\)
 - Max characters: 3400
 - Up to 99 <token\> elements may be defined

### Step Control Element Definitions

#### <step_control\></step_control\>

Parent element for step control. Repeat for multiple steps. The order specified in the
File determines the order in the list.

- **Requirements**: Optional for 'Batch Job', 'Started Task',
 'Tracked Job', or 'Queued Job' event types.
- **Valid Values**: Maximum 80 steps

#### <step_name\></step_name\>

The <step_name\> child element contains the fully qualified step name
In the format: execstep or jobstep.execstep. Execstep must identify a
Step containing the EXEC PGM keyword. Jobstep identifies the EXEC
Statement that invokes a procedure containing execstep.

- **Requirements**: Required if step_control parent element is
 specified.
- **EM field label**: Step name
- **Valid Values**: Each name may contain alphabetic, national, and
 numeric characters; however, a name cannot be more than eight
 characters in length and a name's first character cannot be
 numeric.
 - There can be one or two names up to eight characters each,
 separated by a dot (.). The has to be between 1 and 17
 characters.
 - Although brackets are invalid characters, the string
 \[\[xxxx\]\] should be allowed where xxxx equals any character set.

:::note
The step names can be found, in reverse order, on the MVS IEF142I message (i.e., the message displaying the execstep followed by the jobstep).
:::

#### <step_min\></step_min\>

The <step_min\> child element indicates the minimum tolerated condition
Code for this step condition. Any condition code less than this value is
Considered a failure condition.

- **Requirements**: Required if step_control parent element is
 specified.
- **EM field label**: Min CC
- **Valid Values**: The value of event_type must be Batch Job, Started
 Task, Tracked Job, or Queued Job.
 - The value must be less than or equal to the step_max value
 - It can be any number between 0 and 4095

#### <step_max\></step_max\>

The <step_max\> child element indicates the maximum tolerated condition
Code for this step condition. Any condition code less than this value is
Considered a failure condition.

- **Requirements**: Required if step_control parent element is
 specified.
- **EM field label**: Max CC
- **Valid Values**: The value of event_type must be Batch Job, Started
 Task, Tracked Job, or Queued Job.
 - The value must be greater than or equal to the step_min value
 - It can be any number between 0 and 4095

:::note
If the step_min is specified, step_max must also be specified.
:::

#### <step_action\></step_action\>

Defines the action taken when
The defined step's return code falls in the Step CC range.

- **Requirements**: Required if step_control parent element is
 specified.
- **EM field label**: Step Action
- **Valid Values**:
 - **Abend Job at Step Termination**: Tells
 OpCon that this job is to be
 immediately terminated. All remaining steps are flushed.
 - **Send Job Completed to SAM**: Tells
 OpCon that, no matter how many steps
 are left to run, OpCon is to
 consider this job complete. Job dependencies are resolved
 immediately.
 - **Send Trigger Message to SAM**: Tells
 OpCon that a message is to be sent to
 the Schedule Operations screen of the graphical interfaces. The
 Trigger Message field is used to define the message sent.
 - **Post Error, But Allow Job to Continue**: Tells
 OpCon that a job failure condition is
 to be posted. Subsequent steps in this job run, but job
 dependencies are not resolved.
 - **OK to Continue**: Tells OpCon that
 despite the Min and Max Job CC, this step is OK with this return
 code range.
 - The value of event_type must be one of Batch Job, Started Task,
 Tracked Job, or Queued Job.

#### <step_msg\></step_msg\>

<step_msg\> may be up to 20 characters, and is posted to the Schedule
Operations screen of the graphical interfaces. If the message is
"$EVENT=eventname" the eventname action defined in the z/OS event
Trigger table is triggered.

- **Requirements**: Optional unless step_action is set to 'Send
 Trigger Message to SAM'. Required only with the T (Send Trigger
 Message to SAM) action, but may be used with any Step Action
 selected.
- **EM field label**: Trigger Message
- **Valid Values**: This may refer to any valid
 OpCon event that was predefined in the
 z/OS Event table.
 - The value of event_type must be Batch Job, Started Task, Tracked
 Job, or Queued Job.
 - If step_action is set to 'Send Trigger Message to SAM',
 step_msg must be specified.
 - Characters: 1-20
 - Valid Characters: All
 - If the text begins with '$EVENT= ', a maximum of 8 additional
 characters are allowed.

### File Prerun Element Definitions

#### <file_prerun\></file_prerun\>

Parent element for file prerun. Repeat for multiple file preruns. The order specified
In the file determines the order in the list.

- **Requirements**: Optional for Prerun <job_data\>
- **Valid Values**: Maximum 80 file preruns

#### <dsn_filename\></dsn_filename\>

Contains up to 44 characters of DSN trigger
Information. A fully qualified DSN need not be specified. A final
Asterisk (\*) denotes that triggers are to occur on the DSN prefix
Defined. This is especially helpful for Generation Data Group (GDG)
Triggers. For example: A DSN definition of PROD.GDG.INV.G\* causes a
Trigger on any DSN starting with the PROD.GDG.INV.G prefix.

**Requirements**: Required if the file_prerun parent element is
Specified.

**EM field label**: Dataset

**Valid Values**: The percent ('%') and asterisk ('\*') characters
Are allowable wildcards. A wild card character in the middle of the DSN
Represents any single character; moreover, an asterisk at the end of the
Dataset name matches any number of following characters: Minimum Characters: 1

Maximum Characters: 44

Valid Characters: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ \~ ! @ \# $ % &
\* \_ + . ?

Should also be allowed. Although brackets are invalid characters, the
String \[\[xxxx\]\] should be allowed where xxxx equals any character set.

SMADDI should uppercase all alpha characters specified.

The format of this value can contain any number of "words" as long as:

- Each word contains a maximum of 8 characters
- Each word is separated by periods

#### <dsn_gen\></dsn_gen\>

Represents the number of creations or updates a
File (or file prefix) is to have before trigging the associated event or
Job. This may be used to start jobs after a number of GDG datasets have
Been received.

- **Requirements**: Optional for <file_prerun\>
- **EM field label**: Generations
- **Valid Values**: The event_type can be any value (default = 1)
 - Range: 1-99
 - Valid Characters: 123456789

#### <dsn_cond_when\></dsn_cond_when\>

Makes up two fields from the standard EM:
The *Condition* field and the *When* field. The *Condition* field
Indicates the type of data access condition to cause a trigger.
Available options are Exists, Created, Updated, Deleted, Referenced,
Cataloged, and Uncataloged. The *When* field indicates whether this File
Resource trigger is to remain in effect after the associated event is
Triggered. Available options are *While/As Scheduled Only* and
*Continuous Monitoring*.

**Requirements**: Required if the file_prerun parent element is
Specified.

**EM field label**: Condition/When

**Valid Values**: *While/As Scheduled Only* causes the trigger monitor
To delete this entry once the trigger has occurred. In this mode, the
Next time a job/event referencing this DSN is ready to run, the trigger
Is refreshed and the associated event waits for completely new trigger
Conditions to be met.

*Continuous Monitoring* resets the trigger generation count to zero and
Continue monitoring for the trigger. In Continuous mode, the next time a
Job/event referencing this DSN is ready to run, the trigger may happen
Immediately, if all trigger conditions were satisfied again since the
Last time. Wild cards cannot be used with File
Exists conditions. Valid values are:

|||
|--- |--- |
|Cataloged /Continuous Monitoring|Exists/While/As Scheduled Only|
|Cataloged /While/As Scheduled Only|Referenced /Continuous Monitoring|
|Created /Continuous Monitoring|Referenced /While/As Scheduled Only|
|Created /While/As Scheduled Only|Uncataloged /Continuous Monitoring|
|Deleted /Continuous Monitoring|Uncataloged /While/As Scheduled Only|
|Deleted /While/As Scheduled Only|Updated /Continuous Monitoring|
|Exists/Continuous Monitoring|Updated /While/As Scheduled Only|

#### <dsn_jobname\></dsn_jobname\>

Identifies the job that must satisfy the
Condition before a trigger occurs. For example, specify the name of the
Job that must update a DSN before a trigger would occur. This prevents
Reruns or outside creations from triggering events intended for a
Specific scheduled job or task.

- **Requirements**: Optional for <file_prerun\>
- **EM field label**: Job Name
- **Valid Values**: - Valid Characters: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ @ \# $
 - Although brackets are invalid characters, the string
 \[\[xxxx\]\] should be allowed where xxxx equals any character set.
 - The first character cannot be numeric
 - Characters: 1-8

:::note
The Job Name field does not apply to File Exists conditions.
:::

### Message Prerun Element Definitions

#### <msg_prerun\></msg_prerun\>

Parent element for
Message prerun. Repeat for multiple message preruns. The order specified
In the file determines the order in the list.

- **Requirements**: Optional for Prerun <job_data\>
- **Valid Values**: Maximum 80 message preruns

#### <msg_key\></msg_key\>

Identifies the trigger text to be sought. The
First characters in this field define the fixed text to seek to identify
The message or a possible candidate message. The Offset (
<msg_offset\></msg_offset\>](#%3Cmsg_of)) and Length (
<msg_len\></msg_len\>](#%3Cmsg_le)) must be defined to
Match the key. Following the fixed text key, a variable key may be
Defined as a second argument. The variable key is enclosed in brackets
{}. The offset is variable and the length of the text within the
Brackets determines the length. If this fixed text is located in a
Message, OpCon scans for the text found in
The brackets {} in the remainder of the text.

- **Requirements**: Required if the <msg_prerun\> parent element is
 specified.
- **EM field label**: Key
- **Valid Values**: The event_type can be any value:
 - Valid Characters: All
 - Characters: 0-44

:::note
The Job Name field does not apply to File Exists conditions.
:::

#### <msg_gen\></msg_gen\>

Represents the number of messages matching the
Key to be issued before triggering the associated event or job.

- **Requirements**: Optional for <msg_prerun\>
- **EM field label**: Generations
- **Valid Values**: The event_type can be any value:
 - Default: 1
 - Range: 1-99
 - Valid Characters: 123456789

#### <msg_when\></msg_when\>

Indicates whether this Message Resource trigger
Is to remain in effect after the associated event is triggered.

- **Requirements**: Optional for <msg_prerun\>
- **EM field label**: When
- **Valid Values**: *While/As Scheduled Only* causes the trigger
 monitor to delete this entry once the trigger has occurred. In this
 mode, the next time a job referencing this Message Trigger is ready
 to run, the trigger is refreshed and the associated event waits for
 completely new trigger conditions to be met.
 - *Continuous Monitoring* resets the trigger generation count to
 zero and continue monitoring for the trigger. In this mode, the
 next time a job referencing this Message Trigger is ready to
 run, the trigger may happen immediately, if all trigger
 conditions were satisfied again.
 - The event_type can be any value (default value = *While/As
 Scheduled Only*).
 - Valid Values: *While/As Scheduled Only* and *Continuous
 Monitoring*

#### <msg_jobname\></msg_jobname\>

Identifies the job that must issue this
Message before a trigger would occur. This prevents reruns or outside
Creations from triggering events intended for a specific scheduled job
Or task.

- **Requirements**: Optional for <msg_prerun\>
- **EM field label**: Job name
- **Valid Values**: The event_type can be any value:
 - Valid Characters: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ @ \# $
 - The first character cannot be numeric
 - Characters: 1-8

#### <msg_offset\></msg_offset\>

Used to define the first character of text
To begin searching for the key. This defines any position starting at
Zero through 120 in the message.

- **Requirements**: Optional for <msg_prerun\>
- **EM field label**: Offset
- **Valid Values**: The event_type can be any value (default = 0)
 - Range: 0-120

#### <msg_len\></msg_len\>

Used to define the number of characters for
The key. This defines any length up to forty-four characters.

- **Requirements**: Required if msg_prerun parent element is
 specified.
- **EM field label**: Length
- **Valid Values**: - Range: 1-44

### Task Prerun Element Definitions

#### <task_prerun\></task_prerun\>

Parent element for task prerun. Repeat for multiple task preruns. The order specified
In the file determines the order in the list.

- **Requirements**: Optional for Prerun <job_data\>
- **Valid Values**: Maximum 80 task preruns

#### <task_name\></task_name\>

Identifies the eight-character name of a batch
Job, system task, or TSO User ID being sought.

- **Requirements**: Required if the <task_prerun\> parent element is
 specified.
- **EM field label**: Job/Task Name
- **Valid Values**: - Valid Characters: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ @ \# $
 - Although brackets are invalid characters, the string
 \[\[xxxx\]\] should be allowed where xxxx equals any character set.
 - The first character cannot be numeric
 - Characters: 1-8

#### <task_cond\></task_cond\>

Identifies whether the unscheduled task or job
Should be Running or Not Running for the associated event to submit.

- **Requirements**: Required if the <task_prerun\> parent element is
 specified.
- **EM field label**: Job/Task Must Be
- **Valid Values**: Validation Event types are Batch Job, Started
 Task, REXX Event (Dynamic), Tracked Job, Queued Job, or Console
 Command Execution.
 - Running or agent will respond with Prerun Error
 - Not Running or agent will respond with Prerun Error

### Tape Prerun Element Definitions

#### <tape_prerun\></tape_prerun\>

Parent element for tape prerun.

- **Requirements**: Optional for Prerun <job_data\>
- **Valid Values**: Only one set allowed

#### <tape_devname\></tape_devname\>

Identifies a generic or esoteric tape unit
As defined by IBM unit standards.

- **Requirements**: Required if the tape_prerun parent element is
 specified.
- **EM field label**: Device
- **Valid Values**: In addition to user-defined device types, the
 current supported device types are 3420, 3423, 3480, 3490, and 3590.
 The value may contain up to eight alphanumeric characters.
 - Event types are Batch Job, Started Task, REXX Event (Dynamic),
 Tracked Job, Queued Job, or Console Command Execution.
 - Characters: 1-8
 - Valid Characters: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ @ \# $
 / -
 - Although brackets are invalid characters, the string
 \[\[xxxx\]\] should be allowed where xxxx equals any character set.

#### <tape_devnum\></tape_devnum\>

Identifies the number of units that must be
Available for the associated job to be submitted.

- **Requirements**: Required if the tape_prerun parent element is
 specified.
- **EM field label**: Units
- **Valid Values**: In addition to user-defined device types, the
 current supported device types are 3420, 3423, 3480, 3490, and 3590.
 The value may contain up to eight alphanumeric characters.
 - Event types are Batch Job, Started Task, REXX Event (Dynamic),
 Tracked Job, Queued Job, or Console Command Execution.
 - Range: 0-99

### Rexx Prerun Element Definitions

#### <rexx_prerun\></rexx_prerun\>

Parent element for rexx prerun.

- **Requirements**: Optional for Prerun <job_data\>
- **Valid Values**: Only one set allowed

#### <rexx_name\></rexx_name\>

The <rexx_name\> child element defines the name of the procedure to
Run.

- **Requirements**: Required if the rexx_prerun parent element is
 specified.
- **EM field label**: REXX Name
- **Valid Values**: - Valid Characters: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ @ \# $
 - The first character cannot be numeric
 - Characters: 1-8

#### <rexx_ddname\></rexx_ddname\>

Identifies the DD Name in the OPCONxx PROC
That includes the library name or list of library names that contain the
REXX executable code.

- **Requirements**: Optional for <rexx_preren\>
- **EM field label**: REXX DD
- **Valid Values**: - Valid Characters: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ @ \# $
 - The first character cannot be numeric
 - Characters: 1-8

#### <rexx_parm\></rexx_parm\>

Contains any input parameters required for the
REXX procedure.

- **Requirements**: Optional for <rexx_prerun\>
- **EM field label**: REXX Parm
- **Valid Values**: - Valid Characters: All
 - Characters: 1-128

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Requirements | Required | — | — |
| EM field label | Schedule to run as Sub-Schedule | — | — |
| Valid Values | Valid data for this element contains the schedule | — | — |
| EM field label (Batch) | DDNAME | — | — |
| EM field label (Rexx) | Submit DDNAME | — | — |
| EM field label (Command) | Operator Command | — | — |
| EM field label (Rexx or Started Task) | Execution Parms | — | — |
## FAQs

**Q: What job platforms does the `<jobdata>` element support?**

The `<jobdata>` element supports platform-specific elements for Container, File Transfer, IBM i, Java, MCP, OpenVMS, OS 2200, SAP R/3 and CRM, SAP BW, SQL, Tuxedo ART, UNIX, Windows, and z/OS job types.

**Q: Which message type should be used when defining platform-specific job data?**

Use either `new_master` or `new_daily` as the `<msgtype>`. Use `new_master` to add the job to the Master tables (permanent schedule definition) or `new_daily` to add it only to the Daily Tables for a specific schedule date.

## Glossary

**SMADDI (SMA Dynamic Data Input)**: An optional OpCon component that dynamically updates the OpCon database using XML text files placed in monitored input directories. SMADDI uses a Windows service and stored procedures to validate and commit the data.

**JORS (Job Output Retrieval System)**: The system used to retrieve and display job output — logs and reports — from agent machines directly within the OpCon graphical interfaces.

**DSN (Data Source Name)**: An ODBC connection identifier that stores database connection parameters. OpCon utilities use system DSNs to connect to the OpCon SQL Server database.

**SAM-SS (SAM and Supporting Services)**: The collective term for the OpCon server-side processing programs: SAM, SMANetCom, SMA Notify Handler, SMA Request Router, and SMA Start Time Calculator.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Subschedule**: A schedule that runs as a child process within a Container job, allowing hierarchical, nested workflow automation where a parent schedule can trigger and monitor an entire child schedule.

**Container Job**: A job type that runs a subschedule. Container jobs enable hierarchical schedule structures and support properties and events just like standard jobs.
