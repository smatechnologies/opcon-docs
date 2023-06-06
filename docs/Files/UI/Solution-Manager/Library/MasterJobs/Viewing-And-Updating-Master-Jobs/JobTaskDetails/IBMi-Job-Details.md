# Viewing and Adding IBMi Job Details

To view, add, or edit a IBMi job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Viewing IBMi Job Details

1. To view an IBMi job, go to **Library** > **Master Jobs**.
1. Select an IBMi job in the list.
1. Select **Edit**.
1. Expand the **Task Details** panel to expose its content.

---

## Adding IBMi Job Details

1. Create the job and general info as described in [Adding a Job](../../Adding-Master-Jobs.md).
1. Expand the **Task Details** section. See [IBMi Job Details](#ibmi-job-details) for details.

---

## Editing IBMi Details

1. To edit IBMi job details, go to **Library** > **Master Jobs**.
1. Select an IBMi job.
1. Select **Edit**.
1. Select the lock icon. The button appears gray and locked (![Master Job Definition Read-only Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Master Job Definition Read-only Button"))
   when in **Read-only** mode and appears green and unlocked (![Job Definition Admin Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Job Definition Admin Button"))
   when in **Admin** mode.
1. Expand the **Task Details** panel. See See [IBMi Job Details](#ibmi-job-details) for details.

---

## IBMi Job Details

- [Update Job Type: Batch Job](#updating-job-type-batch-job)
- [Update Job Type: Tracked Job](#updating-job-type-tracked-job)
- [Update Job Type: Queued Job](#updating-job-type-queued-job)
- [Update Job Type: Operator Replay Job](#updating-job-type-operator-replay-job)
- [Update Job Type: Restricted Mode](#updating-job-type-restricted-mode)
- [Update Job Type: FTP](#updating-job-type-ftp)
- [Update Job Type: File Arrival](#updating-job-type-file-arrival)
- [Update Tables](#updating-tables)

:::note
All required fields are designated by a red asterisk.
:::

### Updating Job Type: Batch Job

**In the Job Information frame:**

- **User ID**: Defines the name of the IBM i user profile under which the job should be submitted.

**In the Job Description sub-frame:**

- **Name**: Defines the simple name of the job description used with
  the job. You may use an OpCon token in this field.

- **Library**: Defines the library associated with the job description
  name. You may use an OpCon token in this field.

**In the Library List Management sub-frame:**

- **Current**: Defines the name of the current library associated with
  the job being executed. You may use an OpCon token in this field.

- **Initial Library List**: Defines the initial user part of the library list
  that is used to search for any objects without a library.

**In the Job Queue sub-frame:**

- **Name**: Defines the name of the job queue in which this job is
  placed.

- **Library**: Defines the library associated with the batch queue
  name.

**In the Call Information sub-frame:**

- **Prerun**: Defines the IBM i job to be executed
  immediately before the initiation of the job specified in the
  Call/Script Name.

- **Call**: For a Batch Job, enter the program
  name using the CALL command or enter a command name.

**In the Additional Information frame:**

**In the Output Queue sub-frame:**

- **Name**: Defines the output queue used for spooled files.

- **Library**: Defines the library associated with the Output Queue name.

**In the Message Logging sub-frame:**

- **Level**: Defines the number of messages for logging.

- **Severity**: Defines the lowest severity level that causes an error message to be logged.

- **Text**: Defines the detail of the text logged.

- **Log CL Commands**: Defines whether the commands that are run in a control language program are logged to the job log by way of the CL program's message queue.

**In the Other Info sub-frame:**

- **Job Date**: Defines the calendar date for the job to be associated with.

- **JobQ Priority**: Defines the job queue scheduling priority.

- **Accounting Code**: Defines the accounting code that is used when logging system resource use.

- **Inquiry Message Reply**: Defines the way predefined messages are answered when sent as a result of running the job.

**In the Job Log Retention sub-frame:**

- **Number of Occurrences**: Defines the number of occurrences to save for times when this same job name may be executed more than once.

- **Number of Days**: Defines the number of days to keep of the job logs.

### Updating Job Type: Tracked Job

**In the Job Information frame:**

- **Job Type**: defines the type of job to schedule on the IBM i LSAM.

**In the Job Log Retention sub-frame:**

- **Number of Occurrences**: Defines the number of occurrences to save for times when this same job name may be executed more than once.

- **Number of Days**: Defines the number of days to keep of the job logs.

### Updating Job Type: Queued Job

**In the Job Information frame:**

- **User ID**: Defines the name of the IBM i user profile under which the job should be submitted.

**In the Job Description sub-frame:**

- **Name**: Defines the simple name of the job description used with
  the job. You may use an OpCon token in this field.

- **Library**: Defines the library associated with the job description
  name. You may use an OpCon token in this field.

**In the Library List Management sub-frame:**

- **Current**: Defines the name of the current library associated with
  the job being executed. You may use an OpCon token in this field.

- **Initial Library List**: Defines the initial user part of the library list
  that is used to search for any objects without a library.

**In the Job Queue sub-frame:**

- **Name**: Defines the name of the job queue in which this job is
  placed.

- **Library**: Defines the library associated with the batch queue
  name.

**In the Call Information sub-frame:**

- **Prerun**: Defines the IBM i job to be executed
  immediately before the initiation of the job specified in the
  Call/Script Name.

**In the Additional Information frame:**

**In the Output Queue sub-frame:**

- **Name**: Defines the output queue used for spooled files.

- **Library**: Defines the library associated with the Output Queue name.

**In the Message Logging sub-frame:**

- **Level**: Defines the number of messages for logging.

- **Severity**: Defines the lowest severity level that causes an error message to be logged.

- **Text**: Defines the detail of the text logged.

- **Log CL Commands**: : Defines whether the commands that are run in a control language program are logged to the job log by way of the CL program's message queue.

**In the Other Info sub-frame:**

- **Job Date**: Defines the calendar date for the job to be associated with.

- **JobQ Priority**: Defines the job queue scheduling priority.

- **Accounting Code**: Defines the accounting code that is used when logging system resource use.

- **Inquiry Message Reply**: Defines the way predefined messages are answered when sent as a result of running the job.

**In the Job Log Retention sub-frame:**

- **Number of Occurrences**: Defines the number of occurrences to save for times when this same job name may be executed more than once.

- **Number of Days**: Defines the number of days to keep of the job logs.

### Updating Job Type: Operator Replay Job

**In the Job Information frame:**

- **User ID**: Defines the name of the IBM i user profile under which the job should be submitted.

**In the Job Description sub-frame:**

- **Name**: Defines the simple name of the job description used with
  the job. You may use an OpCon token in this field.

- **Library**: Defines the library associated with the job description
  name. You may use an OpCon token in this field.

**In the Library List Management sub-frame:**

- **Current**: Defines the name of the current library associated with
  the job being executed. You may use an OpCon token in this field.

- **Initial Library List**: Defines the initial user part of the library list
  that is used to search for any objects without a library.

**In the Job Queue sub-frame:**

- **Name**: Defines the name of the job queue in which this job is
  placed.

- **Library**: Defines the library associated with the batch queue
  name.

**In the Call Information sub-frame:**

- **Prerun**: Defines the IBM i job to be executed
  immediately before the initiation of the job specified in the
  Call/Script Name.

- **Script Name**: For an Operator Replay Job or Restricted Mode Job, enter the script name. The call or script name must not exceed 2000 characters.

**In the Additional Information frame:**

**In the Output Queue sub-frame:**

- **Name**: Defines the output queue used for spooled files.

- **Library**: Defines the library associated with the Output Queue name.

**In the Message Logging sub-frame:**

- **Level**: Defines the number of messages for logging.

- **Severity**: Defines the lowest severity level that causes an error message to be logged.

- **Text**: Defines the detail of the text logged.

- **Log CL Commands**: : Defines whether the commands that are run in a control language program are logged to the job log by way of the CL program's message queue.

**In the Other Info sub-frame:**

- **Job Date**: Defines the calendar date for the job to be associated with.

- **JobQ Priority**: Defines the job queue scheduling priority.

- **Accounting Code**: Defines the accounting code that is used when logging system resource use.

- **Inquiry Message Reply**: Defines the way predefined messages are answered when sent as a result of running the job.

**In the Job Log Retention sub-frame:**

- **Number of Occurrences**: Defines the number of occurrences to save for times when this same job name may be executed more than once.

- **Number of Days**: Defines the number of days to keep of the job logs.

### Updating Job Type: Restricted Mode

**In the Job Information frame:**

- **User ID**: Defines the name of the IBM i user profile under which the job should be submitted.

**In the Job Description sub-frame:**

- **Name**: Defines the simple name of the job description used with
  the job. You may use an OpCon token in this field.

- **Library**: Defines the library associated with the job description
  name. You may use an OpCon token in this field.

**In the Library List Management sub-frame:**

- **Current**: Defines the name of the current library associated with
  the job being executed. You may use an OpCon token in this field.

- **Initial Library List**: Defines the initial user part of the library list
  that is used to search for any objects without a library.

**In the Job Queue sub-frame:**

- **Name**: Defines the name of the job queue in which this job is
  placed.

- **Library**: Defines the library associated with the batch queue
  name.

**In the Call Information sub-frame:**

- **Prerun**: Defines the IBM i job to be executed
  immediately before the initiation of the job specified in the
  Call/Script Name.

- **Script Name**: For an Operator Replay Job or Restricted Mode Job, enter the script name. The call or script name must not exceed 2000 characters.

**In the Additional Information frame:**

**In the Output Queue sub-frame:**

- **Name**: Defines the output queue used for spooled files.

- **Library**: Defines the library associated with the Output Queue name.

**In the Message Logging sub-frame:**

- **Level**: Defines the number of messages for logging.

- **Severity**: Defines the lowest severity level that causes an error message to be logged.

- **Text**: Defines the detail of the text logged.

- **Log CL Commands**: : Defines whether the commands that are run in a control language program are logged to the job log by way of the CL program's message queue.

**In the Other Info sub-frame:**

- **Job Date**: Defines the calendar date for the job to be associated with.

- **JobQ Priority**: Defines the job queue scheduling priority.

- **Accounting Code**: Defines the accounting code that is used when logging system resource use.

- **Inquiry Message Reply**: Defines the way predefined messages are answered when sent as a result of running the job.

**In the Job Log Retention sub-frame:**

- **Number of Occurrences**: Defines the number of occurrences to save for times when this same job name may be executed more than once.

- **Number of Days**: Defines the number of days to keep of the job logs.

:::note
This job type does not have access to:
:::

- **Messages**
- **Spool Files**

### Updating Job Type: FTP

**In the Job Information frame:**

- **User ID**: Defines the name of the IBM i user profile under which the job should be submitted.

**In the Job Description sub-frame:**

- **Name**: Defines the simple name of the job description used with
  the job. You may use an OpCon token in this field.

- **Library**: Defines the library associated with the job description
  name. You may use an OpCon token in this field.

**In the Library List Management sub-frame:**

- **Current**: Defines the name of the current library associated with
  the job being executed. You may use an OpCon token in this field.

- **Initial Library List**: Defines the initial user part of the library list
  that is used to search for any objects without a library.

**In the Job Queue sub-frame:**

- **Name**: Defines the name of the job queue in which this job is
  placed.

- **Library**: Defines the library associated with the batch queue
  name.

**In the Call Information sub-frame:**

- **Prerun**: Defines the IBM i job to be executed
  immediately before the initiation of the job specified in the
  Call/Script Name.

**In the Transfer Information sub-frame:**

- **Action Type** (Required): Defines the FTP command to use.

- **Transfer Type** (Required): Defines the type of transfer for binary or ASCII.

- **User**: Defines the FTP users for connecting to the remote system.

**In the Remote Information sub-frame:**

- **Remote System**: Defines the name of the remote system.

- **Remote File Name**: Defines the name for the file once it reaches the remote machine.

- **Remote Library or Directory**: Defines the library or directory to receive the file on the remote machine.

**In the Local Information sub-frame:**

- **Local File Name**: Defines the file name on the IBM i
  machine to transfer to the remote machine.

- **Local Library or Directory**: Defines the library or directory containing the file on the IBM i machine.

**In the Additional Information frame:**

**In the Output Queue sub-frame:**

- **Name**: Defines the output queue used for spooled files.

- **Library**: Defines the library associated with the Output Queue name.

**In the Message Logging sub-frame:**

- **Level**: Defines the number of messages for logging.

- **Severity**: Defines the lowest severity level that causes an error message to be logged.

- **Text**: Defines the detail of the text logged.

- **Log CL Commands**: : Defines whether the commands that are run in a control language program are logged to the job log by way of the CL program's message queue.

**In the Other Info sub-frame:**

- **Job Date**: Defines the calendar date for the job to be associated with.

- **JobQ Priority**: Defines the job queue scheduling priority.

- **Accounting Code**: Defines the accounting code that is used when logging system resource use.

- **Inquiry Message Reply**: Defines the way predefined messages are answered when sent as a result of running the job.

**In the Job Log Retention sub-frame:**

- **Number of Occurrences**: Defines the number of occurrences to save for times when this same job name may be executed more than once.

- **Number of Days**: Defines the number of days to keep of the job logs.

### Updating Job Type: File Arrival

**In the Job Queue sub-frame:**

- **Name**: Defines the name of the job queue in which this job is
  placed.

- **Library**: Defines the library associated with the batch queue
  name.

**In the File Arrival sub-frame:**

- **User ID**: Defines the name of the IBM i user profile under which the job should be submitted.

- **File Name**: Defines the file path and name of the file to detect.

**In the Check File Authority sub-frame:**

- **Read/Write/Execute**: Defines what type of object authority should be verified for the named User ID.

- **Check Lock on DB2 File**: Check Lock on DB2 File: Defines whether to request verification that there are no in-use locks on any DB2 database files.

- **Failure Condition**: Defines the action to take based on the job failure or success status.

**In the File Creation Window sub-frame:**

**In the Start Time sub-frame:**

- **Start Days/Start Time**: When the Start Time is entered, the File Arrival job will not start looking for a file until the Start Time has passed (if the job is activated, it will sleep until the Start Time occurs).

:::note
User has the option to utilize a token, instead of using the 'Start Day/Start Time' input field.
:::

**In the End Time sub-frame:**

- **End Days/End Time**: When a Job End Time is specified, the File Creation End time no longer influences the job end time, but is used only for validating the time the file was created.

:::note
User has the option to utilize a token, instead of using the 'End Day/End Time' input field.
:::

**In the File Stable Duration sub-frame:**

- **Seconds**: Defines the amount of time the file size has remained stable to indicate the file has finished arriving.

:::note
User has the option to utilize a token, instead of using the 'seconds' input field.
:::

:::note
The following fields (Job End Time) are for machines with "fileWatcher.v3" capabilities
:::

**In the Job End Time sub-frame:**

- **Re Check Frequency**: This parameter is used, usually in combination with the Job End Time (or the Create End Time, if no Job End Time was provided), to enable a continuous loop of checking until a matching file is found. When this value is zero, a one-time check will be performed and the Job End Time is ignored.

- **Time**: Defines the job's end time for looped file arrival checks, used when a file arrival happens in a certain directory.

**In the LSAM Dynamics Variable sub-frame:**

- **\*File Variable Name**: Defines the root name of the file (including an extension, if any, from an IFS stream file) that is stored, similar to the OpCon system property $ARRIVED FILE SHORT NAME.

- **Record Count Variable**: Defines the number of records (for DB2 files/tables), or the number of data bytes (for IFS non-DB2 file systems) is stored when a file is found.

:::note
The following fields (Failure Code to LSAM Dynamic Variable & OpCon Properties) are for machines with "fileWatcher.v3" capabilities
:::

- **Failure Code to LSAM Dynamic Variable**: The IBM i Agent will store a job failure code to the LSAM local Dynamic Variables table when a Variable name is provided in this field.  At the same time, the Agent will send this code and other interim status information to the OpCon Detailed Job Messages table (under Job Information -> Configuration) and it will send LSAM Feedback codes that can be used to enable optional Event processing within the OpCon server for the File Arrival job.

**In the OpCon Properties sub-frame:**

- **File Size to Property**: The Number of Records for DB2 tables and the total number of bytes in IBM i file systems outside of the DB2 database are sent to OpCon for storage into an OpCon property, with a default value of zero for file not found or an empty file.

- **Failure Code to Property**: The IBM i Agent sends a failure code to OpCon for File Arrival job failures when the job detects either an expected exception condition, or it is interrupted by an unexpected program failure. The failure code can be stored into an OpCon property for use in end-of-job Event processing. A summary of File Arrival job failure codes can be found in the IBM i Agent documentation here: [Job Completion Codes](https://help.smatechnologies.com/opcon/agents/ibm-i/commands-utilities/file-arrival#command-feedback-methods)

**In the Additional Information frame:**

**In the Output Queue sub-frame:**

- **Name**: Defines the output queue used for spooled files.

- **Library**: Defines the library associated with the Output Queue name.

**In the Message Logging sub-frame:**

- **Level**: Defines the number of messages for logging.

- **Severity**: Defines the lowest severity level that causes an error message to be logged.

- **Text**: Defines the detail of the text logged.

- **Log CL Commands**: : Defines whether the commands that are run in a control language program are logged to the job log by way of the CL program's message queue.

**In the Other Info sub-frame:**

- **Job Date**: Defines the calendar date for the job to be associated with.

- **JobQ Priority**: Defines the job queue scheduling priority.

- **Accounting Code**: Defines the accounting code that is used when logging system resource use.

- **Inquiry Message Reply**: Defines the way predefined messages are answered when sent as a result of running the job.

**In the Job Log Retention sub-frame:**

- **Number of Occurrences**: Defines the number of occurrences to save for times when this same job name may be executed more than once.

- **Number of Days**: Defines the number of days to keep of the job logs.

### Updating Tables

:::note
The following sections:

- **Messages**
- **Spool Files**
- **Variables**

Are available for most job types.
:::

**In the Message frame:**

To edit the values of the grid, the user must press the edit button besides the row to update the fields. To add a value press the **green plus** button at the bottom of the grid. To delete press the **red trash icon** next to the corresponding row.

![Message Grid: Message Grid Information](../../../../../../../Resources/Images/SM/IBMi_MessageGrid.png "Message Grid: Message Grid Information")

**Inside the Message dialog:**

- **Message ID**: Defines the 7 character Message ID displayed at the beginning of the message. This field is required if the Severity is set to a value of 00.

- **Compare Data**: Defines the characters to find in the message (defined by the message ID). The value must not exceed 30 characters.

- **Position**: Defines the position to start looking for the Compare Data word in the Message defined by the Msg ID.
- **Severity**: Defines the messages to look for based on severity.

- **Action**: Defines what the LSAM does when a message meets the defined criteria.

- **Reply**: Defines the response the LSAM sends as the reply when the _Action_ is set to _'Reply'_ or _'Both'_ and
  when the message meets the search criteria.
- **End Job**:Defines whether to end the OpCon job after the message meets the criteria or to allow it to keep running.

- **Event**: Defines the OpCon event to send to the SAM-SS when the message meets the search criteria.

![Message Grid Dialog: Message Grid Dialog fields.](../../../../../../../Resources/Images/SM/IBMi_MessageGrid_Dialog.png "Message Grid Dialog fields.")

:::note
The Messages information can be defined for all Job Types, except Restricted Mode.
:::

**In the Spool Files frame:**

To edit the values of the grid, the user must press the edit button besides the row to update the fields. To add a value press the **green plus icon** button at the bottom of the grid. To delete press the **red trash icon** next to the corresponding row.

![Spool File Grid: Spool File Grid Information](../../../../../../../Resources/Images/SM/IBMi_SpoolFilesGrid.png "Spool File Grid: Spool File Grid Information")

- **File Name**: Defines the name of the file that contains the output from the job.

- **User**: Defines the User name.

- **OutQ Name**: Defines the Outq Name.

- **OutQ Library**: Defines the library that contains the Outq.

- **Total Copies**: Defines the number of spool file copies to create.

- **Hold**: Determines whether to print the spool file.

- **Save**: Determines whether to save the spool file after it is printed.

![Spool File Dialog: Spool File Dialog Information](../../../../../../../Resources/Images/SM/IBMi_SpoolFiles_Dialog.png "Spool File Dialog: Spool File Dialog Information")

:::note
The Spool Files information can be defined for all Job Types, except Restricted Mode, and File Arrival.
:::

**In the Variables frame:**

To edit a value inside the grid, the user must click inside the cell they wish to edit. To add a value press the **green plus icon** button at the bottom of the grid. To delete press the **red trash icon** next to the corresponding row.

![Variables Grid: Variables Grid Information](../../../../../../../Resources/Images/SM/IBMi_VariablesGrid.png "Variables Grid: Variables Grid Information")

- **Variable Name**: Defines the name of the IBM i
  LSAM Dynamic Variable that stores the value.

- **Value**: Defines the character string to use as the value to be stored in the IBM i LSAM Dynamic Variables table.

:::note
Click the **Undo** button if you wish to undo your changes for any reason.
:::

Click the **Save** button to update any changes on this screen.
