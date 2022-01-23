# Jobs

A *job* in OpCon is a task or activity. The
task could be to run a program on a remote machine, transfer files
between machines, or run another schedule. The Job Type's details
determine the actual task to run. All other components of
OpCon jobs determine when the job runs and
what happens when the job finishes.

All jobs in OpCon must first be entered into
the Job Master tables. A schedule should already be defined, and each
job must belong to a schedule. Any changes made in Job Master
Maintenance do not affect previously built Daily schedules.

## Job Details

The following information applies to defining jobs:

**Schedule Name**: Defines the name for the schedule containing the job.

**Job Name**: Defines the name of the job. When defining a job in the
Master tables, the name can be up to but no more than 64 characters.

- The following list of characters are invalid for all Job Types: <
    (less than), \> (greater than), & (ampersand), ' (single quote), "
    (double quote), | (pipe), ; (semi-colon), % (percent symbol), ( )
    (open and closed parentheses), \[ \] (open and closed square     brackets, { } (open and closed braces), = (equals sign), \\ (back
    slash), ! (exclamation point), \* (asterisk), ? (question mark), and
    , (comma).

:::note
If a Job Name is changed, the history of the job under the previous name is no longer visible.
:::

**Department**: Defines the department name assigned to the job.

**Job Type**: Defines the type of job. Supported types include:

- BIS
- Container
- File Transfer
- IBM i
- Java
- MCP
- Null Job
- OS 2200
- SAP BW
- SAP R/3 and CRM
- SQL
- Tuxedo ART
- UNIX
- Windows
- z/OS

**Job Sub-Type**: Defines a list of all the platform-specific Job
Sub-Types. Once the Job Sub-Type is selected, the user will enter
details into specific fields needed for the Job Sub-Type. The EM will
reconstruct the details into a valid command line for the selected Job
Type in the database. The following platforms have Job Sub-Types
available:

- [UNIX Job Sub-Types](../job-types/unix.md#UNIX)
- [Windows Job Sub-Types](../job-types/windows.md#Windows)

**Access Code**: Defines the Access Code name assigned to the job.

**Disable Build**: Determines when a build is requested, if the job's frequencies are reviewed by SMASchedMan to see
if it qualifies for the build date. If the value is False (default),
when a build is requested, the job's frequencies are reviewed by
SMASchedMan to see if it qualifies for the build date. If the value is
True, when a build is requested, SMASchedMan ignores the job. When the
value is True, the job can still be added to a daily schedule through
manually adding it or through a $JOB:ADD(HLD) event.

**Allow Multi-Instance**: Determines if the job can have multiple
instances of the same job on the same schedule date.

- To request multiple instances of a job, refer to [Job Instance Definition](../Files/UI/Enterprise-Manager/Job-Instance-Definition.md)
     in the **Enterprise Manager** online help or refer to the
    [$JOB:ADD event](../events/types.md#$JOB:ADD) in
    the **OpCon Events** online help.
- To make full use of Multi-Instance jobs, SMA Technologies recommends using Job Instance
    Properties. Refer to [Multi-Instance Jobs](../operations/job-names.md#multi-instance-jobs).

**Primary Machine**: Defines the name of a single machine for the job to
run on. If the Primary Machine is not available at the job's run time,
the job will not be able to run unless Alternate machines are available.
Additionally, if a Primary Machine is configured, the job cannot be
configured to run on a Machine group.

**Alternate Machines**: Defines the names of up to three Alternate
Machines for the job to run on. At run time, the SAM checks to see
whether the Primary Machine is available to run the job in question. If
the Primary Machine is down, the SAM attempts to run the job on one of
the Alternate Machines.

**Machine Group Selection**: Defines the name of the Machine Group the
job will run on. If a Machine Group is configured, the job cannot be
configured to run on a Primary Machine. There are two options for how a
machine group can be applied to a job.

**Run on Least Tasked Machine (default)**: If this option is set,
OpCon determines the least tasked machine to
run the job on. This option is useful for *Failover* and *Workload
Balancing* scenarios.

**Run on each Machine**: If this option is set, OpCon runs the job on every machine in the
group.

- When the job's schedule is built and the job qualifies for the day,
    OpCon creates a copy of the job for each
    machine in the group while assigning a specific machine to each copy
    of the job. The copy of each job is named using the following
    syntax: `Job Name_Machine Name`
- If the job also has predefined instances,
    OpCon creates all predefined instances
    for each machine in the group. The copy of each job is named using
    the following syntax: `Job Name_First Property Value_Machine Name`

**Job Type Details**: The Job Type Details depend on the selection of the Job Type determined above.

**Job Automation Components**: The automation components of jobs are
fully defined in [Job Automation Components](../job-components/overview.md).

### Advanced Failure Criteria

On available platforms, Advanced Failure Criteria allows you to set more
advanced criteria for determining if the job should Finish OK or Fail.
When defined, Advanced Failure Criteria overrides the Basic Failure
Criteria defined for the primary job. The SAM processes the Advanced
Failure Criteria after receiving a completion message from the
LSAM. The following fields can be used to define the Advanced Failure Criteria.

- **Comparison Operator**: Defines the comparison operator for the
    "if statement" when comparing the actual value of the job's exit
    code to the failure criteria rules.
  - Valid Values: Range, Equal To, Not Equal To, Less Than, Less or
        Equal, Greater Than, Greater and Equal
- **Value**: Defines the value used for comparison to the job's
    actual exit code with the comparison operator.
  - Valid Values range from -2147483648 to 2147483647
- **End Value**: Defines the end value for comparison when the
    comparison operator is "Range".
  - Valid Values range from -2147483648 to 2147483647
- **Result**: Defines the desired resulting job status when the
    criteria for the line is equal to true. You may only specify the
    Result on the first group of criteria, and this will set the result
    for all the remaining groups of criteria.
  - Valid Values: Finish OK, Fail
- **And/Or**: When defining multiple failure criteria, this field
    defines the way the strings are evaluated together.
  - Valid Values: And, Or
- **Anything Else**: This field contains the other possible result if
    the Exit code falls outside the advanced criteria comparisons.
  - If the Result field is set to "Finish OK", Anything Else
        contains "Fail".
  - If the Result field is set to "Fail", Anything Else contains
        "Finish OK".

## Job History

Job Master History contains a job's history and includes token
replacement values, detailed job messages, LSAM feedback, and other job information. For information viewing history
records, refer to [Using History Management](../Files/UI/Enterprise-Manager/Using-History-Management.md)
 in the **Enterprise Manager** online help. For information on
maintaining job history records, refer to [Job History Cleanup](../utilities/Command-line-Utilities/Job-History-Cleanup.md)
 in the **Utilities** online help.

- OpCon stores job history in two tables.
    As each job completes, SAM automatically stores the history to the
    primary history table. Periodically, a job history cleanup process
    should move history records to the archive table. Both tables may be
    viewed from the History Management tool in the EM.
- Basic History Information:
  - **Schedule Date**: Stores the date of the Daily schedule for
        which the job executed.
  - **Job Started**: Stores the actual date and time the job started
        in a 24-hour clock time format (00:00).
  - **Job Ended**: Stores the date and time the job ended in a
        24-hour clock time format (00:00).
  - **Run Time (min)**: Stores the amount of time the job ran in
        minutes.
  - **Machine Name**: Stores the name of the machine for which the
        job executed. For jobs that "run on each machine" in a group,
        the machine name will display for each copy of the job that ran.
  - **Final Job Status**: Stores the completion status of the job
        (whether it terminated successfully or not).
  - **Exit Description**: Stores the termination details for the
        job. The maximum characters displayed is 255.
  - **Ran as job Name**: Stores the job name as it appeared in the
        daily.
    - If the job was on a top-level schedule, the name shows the
            full Job Instance Name.
    - If the job was on a subschedule or any multi-instance
            schedule, the name shows with the following syntax: Schedule
            Instance Name:Job Instance Name
- Detailed History Information includes the token replacement values,
    detailed job messages, LSAM feedback, and other job information.
