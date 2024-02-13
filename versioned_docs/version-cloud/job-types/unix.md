# UNIX Job Details

The information in this section applies to defining a UNIX job. For
additional information about this platform, refer to [UNIX LSAM Configuration](https://help.smatechnologies.com/opcon/agents/unix/latest/Files/Agents/UNIX/Configuration.md)
 in the **UNIX LSAM** online help.

For Episys jobs, OpCon provides additional
details to support easy job definition. For additional information,
refer to [UNIX Job Sub-Types](#UNIX).

## UNIX Definition

- **Job Action**: Defines the run process the job uses. A job action
    can be [Run Program](#Fields), [File Arrival](#Fields2), or
    [Embedded Script](#Fields3).
- **Group Id / User Id**: Defines the UNIX Group ID and User ID to use
    when running the job. The group and user information must be defined
    as a Batch User ID in OpCon
    Administration. Refer to [Adding Batch     Users](../Files/UI/Enterprise-Manager/Adding-Batch-Users.md)
     in the **Enterprise Manager** online help.

### Fields for Run Program

**NICE Value**: Defines a value in order to increase/decrease the
priority of the job and prerun (if present).

- Valid values range from -20 to 20 with a default of zero.
- A lower NICE Value signifies a higher priority; therefore, entering
    a negative number raises the priority and a positive number lowers
    the priority.

:::warning
It is possible to instruct the operating system to dedicate all resources to a single process until the job completes.
:::

**Prerun**: Defines the full path to the executable file on the
LSAM machine to execute immediately before the job specified in the Start Image.

- If a prerun fails, the primary job does not start.
- If a prerun job fails, the SAM reschedules the job at a user-defined
    interval. For information on this Prerun setting, refer to [Time Settings](../administration/server-options.md#time-settings).
- The SAM runs the job repeatedly until it finishes successfully. When
    a prerun job is successful, the primary job starts (provided there
    are no other dependencies).
- The prerun will succeed if the Exit Code is zero (0), there is no
    Core Dump, and there are no signals.

**Start Image**: Defines the full path to the executable file on the
LSAM machine. If the job requires a user's environment variables, refer to [LSAM Environment
Variables](https://help.smatechnologies.com/opcon/agents/unix/latest/Files/Agents/UNIX/LSAM-Environment-Variables.md)
 in the **UNIX LSAM** online help.

- With the Non-XML data structure, the maximum length of the start
    image is 77 characters.
- With the XML data structure, the maximum length of the start image
    is 512 characters.

**Parameters**: Defines any required command-line parameters.

- With the Non-XML data structure, the maximum length of Parameters is
    77 characters.
- With the XML data structure, the maximum length of Parameters is 512
    characters.

:::note
OpCon concatenates the Start image and Parameters and inserts a space between them before sending the job to the UNIX LSAM.
:::

**Job Output Parsing**: Provides fields to define the search criteria
for analyzing job output that matches the defined characters (string)
and will result in the defined exit code.

- **Search Operation**: Defines the type of search operation to
    perform.
- **String to Search**: Defines the parsing value string to be
    searched. Wildcard characters are supported in the string value.
- **Exit Code**: Defines the exit code to use if the String to Search
    matches the Search Operation criteria. If no matches are found, the
    Agent will return the exit code.
- **Custom Application Log**: Defines an external application log to
    be attached to the job output log. The external log will be searched
    for a matching String to Search value(s) to determine the
    application's exit code. Wildcard characters can be used to create
    a file naming pattern for specifying multiple application log files.

**Environment Variables**: Defines the environment variables for the job
to use. The table lists the key=value pairs that define the variables
and their associated values.

:::tip Example
The job JobAdded-runtime-Envvar has environment variables defined as:

```shell
Run_Time=[[JI.1]]
Exit_Code=[[JI.2]]
```

This job can be added to the daily using an event with various values of Run_Time and Exit_Code.

```shell
[[$SCHEDULE DATE]],[[$SCHEDULE NAME]],JobAdded-runtime-Envvar,ap1,1=20;2=20,Y
[[$SCHEDULE DATE]],[[$SCHEDULE NAME]],JobAdded-runtime-Envvar,ap1,1=30;2=30,Y
[[$SCHEDULE DATE]],[[$SCHEDULE NAME]],JobAdded-runtime-Envvar,ap1,1=40;2=40,Y
```

:::

- **Env Variable Name**: Defines the environment variable name.

- **Env Variable Value**: Defines the environment variable value.
    OpCon properties can be used for values.

### Fields for File Arrival

- **File Name**: Defines the file path and name of the file to detect.
    UNIX wildcard characters are supported in the file name (e.g.,
    /usr/local/abc\*.txt).
- **Sub-directory Search**: Specifies whether or not to search
    sub-directories under the specified file path.
- **File Creation Time Stamp Window, Relative to Midnight (in
    days,hrs,mins or a token)**: Defines the time frame that the program
    uses to watch for the arrival of the file. As best practice, SMA Technologies recommends setting the time frame
    to be close to the expected time of arrival (e.g., if the file is
    expected to arrive in the evening, set the time frame to evening
    hours).
- **File Size Stable Duration (in secs)**: Defines the amount of time
    the file size has remained stable to indicate the file has finished
    arriving.

### Fields and Controls for Embedded Script

- **Script**: Defines the embedded script to associate with the job.
    Refer to the [Embedded Scripts](../automation-concepts/embedded-scripts.md)
     concept.
  - At runtime, the script and type information are used by the
        Agent to create a temporary script file in the location of the
        $FILE placeholder in the run command template. For more
        information, refer to [Adding Script         Runners](../Files/UI/Enterprise-Manager/Adding-Script-Runners.md)
         in the **Enterprise Manager** online help.
- **Script Type**: Displays the script type associated with the
    script.
- **Version**: Defines the specific version (or revision) of the
    script to run for this job.
- **View**: Displays the contents of the script when clicked.
- **Runner**: Defines the run command template for executing the
    script.
- **Run Command Template:** Displays the syntax for the selected
    runner.
- **Arguments**: Defines any script parameters to pass to the script
    at runtime.
  - At runtime, the Agent will place the arguments in the location
        of the $ARGUMENTS placeholder. For more information, refer to
        [Adding Script         Runners](../Files/UI/Enterprise-Manager/Adding-Script-Runners.md)
         in the **Enterprise Manager** online help.

**Environment Variables**: Defines the environment variables for the job
to use. The table lists the key=value pairs that define the variables
and their associated values.

:::tip Example
The job JobAdded-runtime-Envvar has environment variables defined as:

```shell
Run_Time=[[JI.1]]
Exit_Code=[[JI.2]]
```

This job can be added to the daily using an event with various values of Run_Time and Exit_Code.

```shell
[[$SCHEDULE DATE]],[[$SCHEDULE NAME]],JobAdded-runtime-Envvar,ap1,1=20;2=20,Y
[[$SCHEDULE DATE]],[[$SCHEDULE NAME]],JobAdded-runtime-Envvar,ap1,1=30;2=30,Y
[[$SCHEDULE DATE]],[[$SCHEDULE NAME]],JobAdded-runtime-Envvar,ap1,1=40;2=40,Y
```

:::

- **Env Variable Name**: Defines the environment variable name.

- **Env Variable Value**: Defines the environment variable value.
    OpCon properties can be used for values.

## Failure Criteria

The Failure Criteria determines how OpCon
reports the final status of the job. The three areas of value criteria
include Exit Codes, Core Dump, and Signals. If any of the specified
conditions are met, OpCon reports the job as
Failed. For additional information on UNIX exit codes, refer to [UNIX LSAM Exit Codes](../reference/Operations-Machine-Messages.md#UNIX2)
.

- **Basic Exit Codes**: Provides fields to define basic criteria for
    OpCon to determine the final status of
    the job based on the job's exit code. If basic criteria options do
    not meet the needs of the job, define the Advanced Exit Codes
    instead. Basic failure criterion contains two parts: *Operator* and
    *Exit code integer*.
  - **Operator**: A criterion may use one of the following operators
        to compare the exit code with a user-defined value.
    - **EQ** (equal to)
    - **NE** (not equal to)
    - **LT** (less than)
    - **GT** (greater than)
    - **GE** (greater than or equal to)
    - **LE** (less than or equal to)
  - **Exit code integer**: An integer to compare with the job's
        exit code. Due to operating system constraints, the UNIX
        LSAM only recognizes values between -127         and 127.
- **Advanced Failure Criteria**: UNIX jobs can make use of the
    Advanced Failure Criteria feature for the job defined in the Start
    Image. For more information, refer to [Advanced Failure Criteria](../objects/jobs.md#advanced-failure-criteria).
- **Fails on Core Dump**: Determines the configuration for how the
    LSAM should report the job's status when the job     does or does not create a core file. For example:
  - If the Fails on Core Dump flag is checked and a core dump is
        produced, then the job status will return a failed exit code.
  - If the Fails on Core Dump flag is checked and a core dump is not
        produced, then the job succeeds (assuming all other exit code
        processing is good).
- **Signals** (Optional): If any signal failure criterion is TRUE when
    a job finishes, OpCon reports the job as
    Failed. A user may define up to five different signal failure
    criteria.

## Job Start/End Step Specification and Job Restart

The UNIX LSAM supports the Job Restart Step capability which allows users to define the step at which execution is to begin
when a job is restarted from Schedule Operations. By default, jobs
restart from the first step. Additionally, UNIX jobs support the ability
for users to specify that only a portion of a job be executed. By
default, jobs execute "From Beginning to End". Use of either the Job
Restart Step or the Job Start/End Step capability requires formatting of
the job's top-level script, and use of the Job Start/End Step
capability requires formatting of the job's "Start Image" or
"Parameters" in the OpCon Job Details. For
additional information, refer to the
[sma_job_step](https://help.smatechnologies.com/opcon/agents/unix/latest/Files/Agents/UNIX/sma_job_step.md)
 utility in the **UNIX LSAM** online help.

## UNIX Job Sub-Types

UNIX job sub-types simplify the job definition process by displaying
fields to generate the command line for programs commonly used by SMA Technologies' customers. The following
job sub-types are currently supported for UNIX:

- [Episys: Run JobFile](#Episys:)
- [Episys: Answer Prompts](#Episys:2)
- [Episys: Compare ACH Totals](#Episys:3)
- [Episys: Find Batch Output Sequence Number](#Episys:4)
- [Episys: Find Report from Episys Reports](#Episys:5)
- [Episys: Find Report from RSJ Output](#Episys:6)
- [Episys: FTP all Reports in List](#Episys:7)

### Episys: Run JobFile

The following information applies to the Episys: Run JobFile sub-type:

- **Group ID/User ID**: Defines the UNIX Group ID and User ID. The
    group and user information must be defined as a Batch User ID in
    OpCon Administration. Refer to [Adding a     Batch User for
    UNIX](../Files/UI/Enterprise-Manager/Adding-Batch-Users.md#Adding)
     in the **Enterprise Manager** online help. The UNIX
    LSAM configuration determines how the LSAM will     interpret the Group ID/User ID. For more information, refer to
    [path_to_su](https://help.smatechnologies.com/opcon/agents/unix/latest/Files/Agents/UNIX/LSAM-Configuration-Parameters.md#path_to_su)
     in the **UNIX LSAM** online help.
- **RSJ Path**: Defines the path to the directory on the UNIX machine
    where the RSJ programs are installed.
- **SYM Number**: Defines the Episys "SYM" which contains the job
    for OpCon to run. The value should be a
    three-digit number or an OpCon token that
    resolves to a three-digit number. For information on creating tokens
    and setting their values, refer to [Using Properties for Automation](../objects/using-properties.md)
    .
- **Episys Job**: Defines the name of the job in Episys.
- **Restart Point**: The name of the restart point for the job.
  - If EM finds a token (text surrounded in double brackets like
        \[\[$SCHEDULE NAME\]\]), it will not validate the characters         within the token.
  - The EM will strip any trailing spaces on this field.
  - EM will automatically wrap this field in single quotes when
        building the command line. This means that user entered spaces
        that are not inside double brackets are allowed and will not
        cause an issue.
- **Edit File** (Optional): Defines the path and name of the edit file
    used by the Episys Job.
- **Multi-Thread** (Optional): Determines if the job can be
    multi-threaded, and is only available when no Edit File is being
    used.
- **Delete Edit File** (Optional): Determines if the edit file should
    be deleted upon completion of the job.
- **Advanced Failure Criteria**: The Episys: Run JobFile sub-type can
    make use of the Advanced Failure Criteria feature for the job
    defined in the Start Image. For more information, refer to [Advanced Failure Criteria](../objects/jobs.md#advanced-failure-criteria).

### Episys: Answer Prompts

The following information applies to the Episys: Answer Prompts
sub-type.

- **Group ID/User ID**: Defines the UNIX Group ID and User ID assigned
    to the job for UNIX security authentication. These numbers (e.g.,
    20/209) or names (e.g., staff/ajohnson) must have been previously
    defined as a Batch User ID in OpCon
    Administration. Refer to [Adding Batch     Users](../Files/UI/Enterprise-Manager/Adding-Batch-Users.md)
     in the **Enterprise Manager** online help.
- **RSJ Path**: Defines the path to the directory on the UNIX Machine
    where the RSJ programs are installed.
- **SYM Number**: Defines the Episys "SYM" where the control file
    resides. The value should be a three-digit number or an
    OpCon token that resolves to a
    three-digit number. For information on creating tokens and setting
    their values, refer to [Properties](../objects/properties.md#using)
    .
- **Episys Job**: Defines the name of the job in Episys which contains
    the prompt(s) requiring answers. The name of the job is used to
    identify the Control File to update.
- **Update First Match Only** (Optional): Determines if the job will
    update only the first match for each prompt or if it will update all
    matches for each prompt.
- **Prompt/Response**: Defines the text for a Prompt and Response the
    Episys job will require.

### Episys: Compare ACH Totals

The following information applies to the Episys: Compare ACH Totals
sub-type.

- **Group ID/User ID**: Defines the UNIX Group ID and User ID assigned
    to the job for UNIX security authentication. These numbers (e.g.,
    20/209) or names (e.g., staff/ajohnson) must have been previously
    defined as a Batch User ID in OpCon
    Administration. Refer to [Adding Batch     Users](../Files/UI/Enterprise-Manager/Adding-Batch-Users.md)
     in the **Enterprise Manager** online help.
- **RSJ Path**: Defines the path to the directory on the UNIX machine
    where the RSJ programs are installed.
- **SYM Number**: Defines the Episys "SYM" where the output resides.
    The value should be a three-digit number or an
    OpCon token that resolves to a
    three-digit number. For information on creating Tokens and setting
    their values, refer to [Properties](../objects/properties.md#using)
    .
- **FED File**: Defines the full path and name of the FED file to use
    for comparison to the Batch Output File.
- **Batch Output File**: Defines the full path and name of the Batch
    Output file to use for comparison to the FED File. To ensure the
    correct file name is specified, use an
    OpCon token with the Property Name (e.g.,
    \[\[BatchOutputFile\]\]) defined by an associated "Find Batch     Output Sequence Number" type job.

### Episys: Find Batch Output Sequence Number

The following information applies to the Episys: Find Batch Output
Sequence Number sub-type.

- **Group ID/User ID**: Defines the UNIX Group ID and User ID assigned
    to the job for UNIX security authentication. These numbers (e.g.,
    20/209) or names (e.g., staff/ajohnson) must have been previously
    defined as a Batch User ID in OpCon
    Administration. Refer to [Adding Batch     Users](../Files/UI/Enterprise-Manager/Adding-Batch-Users.md)
     in the **Enterprise Manager** online help.
- **RSJ Path**: Defines the path to the directory on the UNIX machine
    where the RSJ programs are installed.
- **SYM Number**: Defines the Episys "SYM" where the output resides.
    The value should be a three-digit number or an
    OpCon token that resolves to a
    three-digit number. For information on creating Tokens and setting
    their values, refer to [Properties](../objects/properties.md#using)
    .
- **Episys Job**: Defines the name of the job that ran in Episys
    through RSJ.
- **Property Name**: Defines the name of the
    OpCon Property (e.g., BatchOutputFile)
    that will have its value set by this job. An
    OpCon token on an associated "Compare
    ACH Totals" job will reference this property name (e.g.,
    \[\[BatchOutputFile\]\]. Refer to     [Properties](../objects/properties.md).
- **MSGIN Directory**: Defines the full path to the MSGIN directory on
    the UNIX machine the job will run on.
- **OpCon User ID**: Defines an OpCon User ID with privileges
    to "Maintain Global Properties".
- **External Event Password**: Defines the External Event Password for
    the OpCon User ID specified (this is not the same     password as the user's login password). Refer to [External Events](../events/defining.md#external-events)
     in the **OpCon Events** online help.

### Episys: Find Report from Episys Reports

The following information applies to the Episys: Find Report from Episys
Reports sub-type.

- **Group ID/User ID**: Defines the UNIX Group ID and User ID assigned
    to the job for UNIX security authentication. These numbers (e.g.,
    20/209) or names (e.g., staff/ajohnson) must have been previously
    defined as a Batch User ID in OpCon
    Administration. Refer to [Adding Batch     Users](../Files/UI/Enterprise-Manager/Adding-Batch-Users.md)
     in the **Enterprise Manager** online help.
- **RSJ Path**: Defines the path to the directory on the UNIX machine
    where the RSJ programs are installed.
- **SYM Number**: Defines the Episys "SYM" where the report resides.
    The value should be a three-digit number or an
    OpCon token that resolves to a
    three-digit number. For information on creating tokens and setting
    their values, refer to [Properties](../objects/properties.md#using)
    .
- **Report Name**: Defines the name of the report whose sequence
    number is of interest.
- **Property Name**: Defines the name of the
    OpCon Property that will have its value
    set by this job. For information on Properties, refer to
    [Properties](../objects/properties.md#using).
- **MSGIN Directory**: Defines the full path to the MSGIN directory on
    the UNIX machine the job will run on.
- **OpCon User ID**: Defines an OpCon User ID with privileges
    to "Maintain Global Properties".
- **External Event Password**: Defines the External Event Password for
    the OpCon User ID specified (this is not the same     password as the user's login password). Refer to [External Events](../events/defining.md#external-events)
     in the **OpCon Events** online help.
- **Occurrence to Search for**: Defines a numerical value (maximum
    value 99) that identifies the occurrence of the Report title to
    search for.

### Episys: Find Report from RSJ Output

The following information applies to the Episys: Find Report from RSJ
Output sub-type.

- **Group ID/User ID**: Defines the UNIX Group ID and User ID assigned
    to the job for UNIX security authentication. These numbers (e.g.,
    20/209) or names (e.g., staff/ajohnson) must have been previously
    defined as a Batch User ID in OpCon
    Administration. Refer to [Adding Batch     Users](../Files/UI/Enterprise-Manager/Adding-Batch-Users.md)
     in the **Enterprise Manager** online help.
- **RSJ Path**: Defines the path to the directory on the UNIX machine
    where the RSJ programs are installed.
- **SYM Number**: Defines the Episys "SYM" where the report resides.
    The value should be a three-digit number or an
    OpCon token that resolves to a
    three-digit number. For information on creating tokens and setting
    their values, refer to [Properties](../objects/properties.md#using)
    .
- **Episys Job**: Defines the name of the job that ran in Episys
    through RSJ.
- **Report Name**: Defines the name of the report whose sequence
    number is of interest.
- **Property Name**: Defines the name of the
    OpCon property that will have its value
    set by this job. Refer to [Properties](../objects/properties.md)
    .
- **MSGIN Directory**: Defines the full path to the MSGIN directory on
    the UNIX machine the job will run on.
- **OpCon User ID**: Defines an OpCon User ID with privileges
    to "Maintain Global Properties".
- **External Event Password**: Defines the External Event Password for
    the OpCon User ID specified (this is not the same     password as the user's login password). Refer to [External Events](../events/defining.md#external-events)
    .
- **Occurrence to Search for**: Defines a numerical value (maximum
    value 99) that identifies the occurrence of the Report title to
    search for.
- **Advanced Failure Criteria**: The Episys: Find Report from RSJ
    Output sub-type can make use of the Advanced Failure Criteria
    feature for the job defined in the Start Image. For more
    information, refer to [Advanced Failure Criteria](../objects/jobs.md#advanced-failure-criteria).

### Episys: FTP all Reports in List

The following information applies to the Episys: FTP all Reports in List
sub-type.

:::note
The destination server must allow FTP to be able to use this sub-type. Verify FTP is allowed by going to the SAM server and starting a command prompt. Type the following command :

```bash
telnet DestinationServer 21
```

(21 is the default FTP server port. Replace DestinationServer with the desired server name.)
:::

- **Group ID/User ID**: Defines the UNIX Group ID and User ID assigned
    to the job for UNIX security authentication. These numbers (e.g.,
    20/209) or names (e.g., staff/ajohnson) must have been previously
    defined as a Batch User ID in OpCon
    Administration. Refer to [Adding Batch     Users](../Files/UI/Enterprise-Manager/Adding-Batch-Users.md)
     in the **Enterprise Manager** online help.
- **RSJ Path**: Defines the path to the directory on the UNIX machine
    where the RSJ programs are installed.
- **SYM Number**: Defines the Episys "SYM" where the report resides.
    The value should be a three-digit number or an
    OpCon token that resolves to a
    three-digit number. For information on creating tokens and setting
    their values, refer to [Properties](../objects/properties.md#using)
    .
- **Report Name**: Defines the name of the report whose sequence
    number is of interest.
- **FTP User**: Defines the name of the user which the files will be
    "FTPed" as.
- **FTP User Password**: Defines the FTP User's Password. Some
    special characters have a special meaning to the UNIX shell and may
    be converted by the shell into other strings (such as '\*'). These
    characters must be 'escaped' with a backslash.
- **Destination Host Name**: Defines the name of the Server the files
    will be sent to.
- **Port Number**: Defines the FTP Port number to use.
- **Destination Folder**: Defines the directory to place the files on
    the destination Host machine.
- **Extension**: Defines the optional parameter used to give the
    reports an extension.

# Viewing, Adding, and Editing Unix Job Details

To view, add, or edit a Unix job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Viewing Unix Job Details

1. To view a Unix job, go to **Library** > **Master Jobs**.
1. Select a Unix job in the list.
1. Select **Edit**.
1. Expand the **Task Details** panel to expose its content.

---

## Adding Unix Job Details

1. Create the job and general info as described in [Adding a Job](../../Adding-Master-Jobs.md).
1. Expand the **Task Details** section.
1. In the **Machine Selection** frame, select from the **Machines or Machine Group** drop-down list the
   **machine** where the LSAM is installed. If you wish instead to specify a machine group, then toggle the **Machines**
   switch to _Machine Group_ then select the **machine group** from the
   drop-down list. When toggled to Machine Group, the button will
   appear green ![Green Enabled     Switch](../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch').
1. In the **General** frame,
   1. Select a **User Id** to use when running the job.
   1. Select a **Job Action**.

For a Unix job, you can add the following job actions:

- [Run Program](#Run-Program)
- [File Arrival](#File-Arrival)
- [Embedded Script](#Embedded-Script)

---

## Editing Unix Job Details

1. To edit Unix job details, go to **Library** > **Master Jobs**.
1. Select a Unix job.
1. Select **Edit**.
1. Select the lock icon. The button appears gray and locked (![Master Job Definition Read-only Button](../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png 'Master Job Definition Read-only Button'))
   when in **Read-only** mode and appears green and unlocked (![Job Definition Admin Button](../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png 'Job Definition Admin Button'))
   when in **Admin** mode.
1. Expand the **Task Details** panel.
1. In the **Machine Selection** frame, select from the **Machines or Machine Group** drop-down list the
   **machine** where the LSAM is installed. If you wish instead to specify a machine group, then toggle the **Machines**
   switch to _Machine Group_ then select the **machine group** from the
   drop-down list. When toggled to Machine Group, the button will
   appear green ![Green Enabled Switch](../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch').
1. In the **General** frame,
   1. Select a **User Id** to use when running the job.
   1. Select a **Job Action**.

For a Unix job, you can edit the following job actions:

- [Run Program](#Run-Program)
- [File Arrival](#File-Arrival)
- [Embedded Script](#Embedded-Script)

---

## Run Program

**In the Prerun frame:**

The **Prerun** frame is used to define the information for a
prerequisite process that runs immediately before the primary job.

1. Enable the **Prerun** switch ![Green Enabled Switch](../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch').
1. Enter the _command line detail_ for the prerun process. This should be
   the full path to the executable file on the LSAM machine to execute immediately before the job specified in the Start Image. This
   field permits up to 4000 characters.

**In the Run frame:**

The **Run** frame is used to define the information for running the
primary job.

1. Enter the _full path and file name of the program to execute_ in the UNIX
   **Start Image**. This field permits up to 4000 characters.
2. Enter any required _command-line parameters_. This field permits up to
   4000 characters.

:::note
OpCon concatenates the Start Image and Parameters and inserts a space between them before sending the job to the UNIX LSAM.
:::

3. Enter the _NICE Value_ to increase/decrease the priority of the job
   and prerun (if present). Valid values range from -20 to 20 with a default of zero (0).

:::note
A lower NICE Value signifies a higher priority; therefore, entering a negative number raises the priority and a positive number lowers the priority.
:::

**In the Job Output Parsing frame:**

The **Job Output Parsing** frame is used to define the search criteria
for analyzing job output that matches the defined characters (string)
and will result in the defined exit code.

1. Click the green **Add** button (**+**) to define the parsing criteria.

2. Select the **Search Operation** from the drop-down list.

3. Enter the **String to Search**. Wildcard characters are supported in the
   string. This field permits up to 255 characters.

4. Select or enter the **Exit Code**.

:::note
Remove any defined parsing criteria by clicking the **Delete** button at the end of the row.
:::

5. Enter the **Custom Application Log Path**. Wildcard characters are
   supported for specifying multiple logs.

**In the Failure Criteria frame:**

The **Failure Criteria** frame is used to define the criteria for
OpCon to determine the final status of the
primary job.

1. Select an **operator** then enter or select the **exit code integer**.

2. Specify whether the defined criteria should be used to determine if the
   job Failed or Finished OK.

Defining Multiple Failure Criteria:

1. Use the **and/or** field to define multiple failure criteria. This field
   defines the way the strings are evaluated together. You must define all "And" comparisons before the "Or" comparisons. Additionally, if the Comparison Operator on the previous group is "Equal To", then the _and/or_ value must be set to "Or".

2. Use the **Fail on Core Dump** switch to configure how the
   LSAM should report the status of the job when the job does or does not create a core file.

- If the **Fail on Core Dump** switch is enabled ![Green Enabled Switch](../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch')
  and a core dump is produced, then the job status will return a failed exit code.
- If the **Fail on Core Dump** switch is enabled ![Green Enabled Switch](../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch')
  and a core dump is not produced, then the job succeeds (assuming all other exit code processing is good).

:::note
The final exit code processing has nothing to do with whether a core dump is produced or not. It simply is a final determination of whether the program produced an acceptable job status.
:::

Define up to five different signal failure criteria. If any signal
failure criterion is TRUE when a job finishes,
OpCon reports the job as Failed.

**In the Environment Variables frame:**

The **Environment Variables** frame is used to define the environment
variables for the job to use.

1. Click the green **Add** button (**+**) to define the environment
   variables.

2. Enter a _name_ in the **Name** field.

3. Enter a _value_ in the **Value** field. Remove any defined environment
   variable by clicking the **Delete** button at the end of the row.

4. Click the **OK** button to add the name/value.

:::note
Click the **Undo** button if you wish to undo your changes for any reason.
:::

5. Click the **Save** button.

## File Arrival

1. Enter the _file path and name of the file to detect_ in the **File
   Name** field. UNIX wildcard characters are supported in the file
   name (e.g., /usr/local/abc\*.txt). This field permits up to 4000
   characters.
1. Specify whether or not to search the sub-directory under the
   specified path by utilizing the **Sub-directory Search** toggle
   switch. When enabled, the switch will appear green.
1. Specify the time frame (_Start Time_ and _End Time_) within which
   the file must arrive in the directory. Either manually input the
   time frame or utilize the input field selectors to make your
   selections.
1. Specify the amount of time in seconds (_Duration_) that the file
   size must remain stable. Either manually input the number of seconds
   or utilize the input field selector(s) to make your selection.
1. Select an **operator** then enter or select the **exit code
   integer**.
1. Specify whether the defined criteria should be used to determine if
   the job Failed or Finished OK.
1. Click the **Save** button.

## Embedded Script

For conceptual information, refer to [Embedded Scripts](../../../../../../../automation-concepts/embedded-scripts.md) in the
**Concepts** online help.

:::note
If you do not have the Script Privilege for the script, then you will not be able to see the task details or edit the daily job definition (the Lock button will be disabled).
:::

**In the Embedded Script frame:**

The **Embedded Script** frame is used to associate an embedded script to
run with the job.

1. Select the **script** that you wish to associate with the job. The
   **Type** field will populate to show the type of script selected.

2. Select the specific **version (or revision) of the script** to run for
   this job. The **Comments** field will populate with any notes provided
   about the script.

:::note
Selecting the "Latest" version means that just before the job runs, the latest version of the script will be used.
:::

Viewing Scripts:

To view the details about a script, click the **Preview** button
(![Daily Job Definition Preview Button](../Resources/Images/SM/Daily-Job-Definition-View-Script.png 'Daily Job Definition Preview Button')).
Once clicked, the **Script Viewer** pop-up window will display
information (e.g., name, description, type, version, version comment,
author, created, updated) about and the contents of the selected script.

:::note
The **Preview** button will only be enabled for embedded scripts for which the user is a member of a role with privileges to view the contents. A user must be a member of a role with All Administrative Functions, All Function Privileges, View Embedded Script Contents privilege, or must be in the ocadm role to view the contents.
:::

:::note
If you do not have the View Embedded Script Contents privilege, then you will not be able to see any of the script contents in **Preview** mode.
:::

**In the Runner frame:**

The **Runner** frame is used to configure the run definition that is
used to execute the script.

1. Select the **runner** (interpreter) that will be used to run the script.
   The **Run Command Template** field will populate to show the syntax for
   the runner.

2. Enter any _argument(s)_ that you wish to pass to the script at runtime.
   This field permits up to 255 characters.

:::note
When defining the argument, keep in mind the that the equal sign (=) is a restricted character.
:::

**In the Failure Criteria frame:**

The **Failure Criteria** frame is used to define the criteria for
OpCon to determine the final status of the
job.

1. Select an **operator** then enter or select the **exit code integer**.

2. Specify whether the defined criteria should be used to determine if the
   job Failed or Finished OK.

Defining Multiple Failure Criteria:

1. Use the **and/or** field to define multiple failure criteria. This field
   defines the way the strings are evaluated together. You must define all "And" comparisons before the "Or" comparisons. Additionally, if the Comparison Operator on the previous group is "Equal To", then the _and/or_ value must be set to "Or".

2. Use the **Fail on Core Dump** switch to configure how the
   LSAM should report the status of the job when the job does or does not create a core file.

- If the **Fail on Core Dump** switch is enabled ![Green Enabled     Switch](../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch')
  and a core dump is produced, then the job status will return a failed exit code.
- If the **Fail on Core Dump** switch is enabled ![Green Enabled     Switch](../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch')
  and a core dump is not produced, then the job succeeds (assuming all other exit code processing is good).

:::note
The final exit code processing has nothing to do with whether a core dump is produced or not. It simply is a final determination of whether the program produced an acceptable job status.
:::

Define up to five different signal failure criteria. If any signal
failure criterion is TRUE when a job finishes,
OpCon reports the job as Failed.

**In the Environment Variables frame:**

The **Environment Variables** frame is used to define the environment
variables for the job to use.

1. Click the green **Add** button (**+**) to define the environment
   variables.

2. Enter a _name_ in the **Name** field.

3. Enter a _value_ in the **Value** field. Remove any defined environment
   variable by clicking the **Delete** button at the end of the row.

4. Click the **OK** button to add the name/value.

:::note
Click the **Undo** button if you wish to undo your changes for any reason.
:::

5. Click the **Save** button.

---

### More Information

For conceptual information, refer to [Unix Jobs](../../../../../../../job-types/unix.md) in
the **Concepts** online help.

# Updating UNIX Job Details

In **Admin** mode, UNIX job type properties can be updated or defined.
For a UNIX job, you can:

- [Update Job Action: Run Program Job Details](#Updating)
- [Update Job Action: File Arrival Job Details](#Updating2)
- [Update Job Action: Embedded Script Job Details](#Updating3)

For conceptual information, refer to [UNIX Job Details](../../../job-types/unix.md) in the
**Concepts** online help.

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Daily-Job-Definition.md#Required) in the **Accessing Daily Job Definition** topic.
:::

:::note
If you do not have the Machine Privilege, then you will not be able to edit the daily job definition.
:::

:::note
Changes made to the job properties in the **Daily Job Definition** will take place immediately. If the job has already run, the changes will take effect the next time the job runs.
:::

## Updating Job Action: Run Program Job Details

To perform this procedure:

Click on the **Processes** button at the top-right of the **Operations
Summary** page. The **Processes** page will display.

Ensure that both the **Date** and **Schedule** toggle switches are
enabled so that you can make your date and schedule selection,
respectively. Each switch will appear green when enabled.

![Schedule Status Updates Date & Schedule Toggle Switches Enabled](../Resources/Images/SM/Schedule-Status-Update_Date&ScheduleToggles.png "Schedule Status Updates Date & Schedule Toggle Switches Enabled")

Select the desired **date(s)** to display the associated schedule(s).

Select one or more **schedule(s)** in the list.

Select one **job** in the list. A record of your selection will display
in the [status bar](SM-UI-Layout.md#Status) at the bottom of the
page in the form of a breadcrumb trail.

![Job Processes](../Resources/Images/SM/Job-ProcessesUNIX.png "Job Processes")

Click on the job record (e.g., 1 job(s)) in the status bar to display
the **Selection** panel.

:::note
As an alternative, you can right-click on the job selected in the list to display the **Selection** panel.
:::

![Job Summary Tab in Operations](../Resources/Images/SM/Job-Summary-Tab-(UNIX).png "Job Summary Tab in Operations")

Click the **Daily Job Definition** button ![Daily Job Definition Button](../Resources/Images/SM/Daily-Job-Definition-Button.png "Daily Job Definition Button")
at the top-left corner of the panel to access the **Daily Job
Definition** page. By default, this page will be in **Read-only** mode.

Click the **Lock** button ![Daily Job Definition Read-only Button](../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Daily Job Definition Read-only Button")
at the top-right corner to place the page in **Admin** mode. The button
will switch to display a white lock unlocked on a green background
![Daily Job Definition Admin Switch](../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Daily Job Definition Admin Switch")
when enabled.

:::note
The **Lock** button will not be visible to users who do not have the appropriate permissions.
:::

Expand the **Task Details** panel to expose its content.

:::note
All required fields are designated by a red asterisk.
:::

Select a **User Id** to use when running the job. Either use the default
value of "0/0" or assign it to an available batch user. Keep in mind
that user information must be defined as a Batch User ID in
OpCon Administration.

Select from the **Machines or Machine Group** drop-down list the
**machine** where the LSAM is installed. If you wish instead to specify a machine group, then toggle the **Machines** switch
to *Machine Group* then select the **machine group** from the drop-down
list. When toggled to Machine Group, the button will appear green
![Green Enabled Switch](../Resources/Images/SM/Enabled-Switch.png "Green Enabled Switch").

**In the Prerun frame:**

The **Prerun** frame is used to define the information for a
prerequisite process that runs immediately before the primary job.

\

Enable the **Prerun** switch ![Green Enabled Switch](../Resources/Images/SM/Enabled-Switch.png "Green Enabled Switch").

Enter the *command line detail* for the prerun process. This should be
the full path to the executable file on the LSAM machine to execute immediately before the job specified in the Start Image. This
field permits up to 4000 characters.

**In the Run frame:**

The **Run** frame is used to define the information for running the
primary job.

\

Enter the *full path and file name of the program to execute in the UNIX
Start Image*. This field permits up to 4000 characters.

Enter any required *command-line parameters*. This field permits up to
4000 characters.

:::note
OpCon concatenates the Start Image and Parameters and inserts a space between them before sending the job to the UNIX LSAM.
:::

Enter the *NICE Value* to increase/decrease the priority of the job
and prerun (if present). Valid values range from -20 to 20 with a default of zero (0).

:::note
A lower NICE Value signifies a higher priority; therefore, entering a negative number raises the priority and a positive number lowers the priority.
:::

**In the Job Output Parsing frame:**

The **Job Output Parsing** frame is used to define the search criteria
for analyzing job output that matches the defined characters (string)
and will result in the defined exit code.

Click the green **Add** button (**+**) to define the parsing criteria.

Select the **Search Operation** from the drop-down list.

Enter the **String to Search**. Wildcard characters are supported in the
string. This field permits up to 255 characters.

Select or enter the **Exit Code**.

:::note
Remove any defined parsing criteria by clicking the **Delete** button at the end of the row.
:::

Enter the **Custom Application Log Path**. Wildcard characters are
supported for specifying multiple logs.

**In the Failure Criteria frame:**

The **Failure Criteria** frame is used to define the criteria for
OpCon to determine the final status of the
primary job.

\

Select an **operator** then enter or select the **exit code integer**.

Specify whether the defined criteria should be used to determine if the
job Failed or Finished OK.

Defining Multiple Failure Criteria:

Use the **and/or** field to define multiple failure criteria. This field
defines the way the strings are evaluated together.

:::note
You must define all "And" comparisons before the "Or" comparisons. Additionally, if the Comparison Operator on the previous group is "Equal To", then the *and/or* value must be set to "Or".
:::

Use the **Fail on Core Dump** switch to configure how the
LSAM should report the status of the job when the job does or does not create a core file.

- If the **Fail on Core Dump** switch is enabled ![Green Enabled     Switch](../Resources/Images/SM/Enabled-Switch.png "Green Enabled Switch")
    and a core dump is produced, then the job status will return     a failed exit code.
- If the **Fail on Core Dump** switch is enabled ![Green Enabled     Switch](../Resources/Images/SM/Enabled-Switch.png "Green Enabled Switch")
    and a core dump is not produced, then the job succeeds     (assuming all other exit code processing is good).

:::note
The final exit code processing has nothing to do with whether a core dump is produced or not. It simply is a final determination of whether the program produced an acceptable job status.
:::

Define up to five different signal failure criteria. If any signal
failure criterion is TRUE when a job finishes,
OpCon reports the job as Failed.

**In the Environment Variables frame:**

The **Environment Variables** frame is used to define the environment
variables for the job to use.

\

Click the green **Add** button (**+**) to define the environment
variables.

Enter a *name* in the **Name** field.

Enter a *value* in the **Value** field. Remove any defined environment
variable by clicking the **Delete** button at the end of the row.

Click the **OK** button to add the name/value.

:::note
Click the **Undo** button if you wish to undo your changes for any reason.
:::

Click the **Save** button.

## Updating Job Action: File Arrival Job Details

To perform this procedure:

1. Click on the **Processes** button at the top-right of the
    **Operations Summary** page. The **Processes** page will display.
2. Ensure that both the **Date** and **Schedule** toggle switches are
    enabled so that you can make your date and schedule selection,
    respectively. Each switch will appear green when enabled.
3. Select the desired **date(s)** to display the associated
    schedule(s).
4. Select one or more **schedule(s)** in the list.
5. Select one **job** in the list. A record of your selection will
    display in the [status bar](SM-UI-Layout.md#Status) at the
    bottom of the page in the form of a breadcrumb trail.
6. Click on the job record (e.g., 1 job(s)) in the status bar to
    display the **Selection** panel.
7. Click the **Daily Job Definition** button ![Daily Job Definition     Button](../Resources/Images/SM/Daily-Job-Definition-Button.png "Daily Job Definition Button")
    at the top-left corner of the panel to access the **Daily Job
    Definition** page. By default, this page will be in **Read-only**
    mode.
8. Click the **Lock** button ![Daily Job Definition Read-only     Button](../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Daily Job Definition Read-only Button")
    at the top-right corner to place the page in **Admin** mode. The
    button will switch to display a white lock unlocked on a green
    background ![Daily Job Definition Admin     Switch](../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Daily Job Definition Admin Switch")
    when enabled.
9. Expand the **Task Details** panel to expose its content.
10. Select a **User Id** to use when running the job. Either use the
    default value of "0/0" or assign it to an available batch user.
    Keep in mind that user information must be defined as a Batch User
    ID in OpCon Administration.
11. Select from the **Machines or Machine Group** drop-down list the
    **machine** where the LSAM is installed. If you wish     instead to specify a machine group, then toggle the **Machines**
    switch to *Machine Group* then select the **machine group** from the
    drop-down list. When toggled to Machine Group, the switch will
    appear green.
12. Enter the *file path and name of the file to detect* in the **File
    Name** field. UNIX wildcard characters are supported in the file
    name (e.g., /usr/local/abc\*.txt). This field permits up to 4000
    characters.
13. Specify whether or not to search the sub-directory under the
    specified path by utilizing the **Sub-directory Search** toggle
    switch. When enabled, the switch will appear green.
14. Specify the time frame (*Start Time* and *End Time*) within which
    the file must arrive in the directory. Either manually input the
    time frame or utilize the input field selectors to make your
    selections.
15. Specify the amount of time in seconds (*Duration*) that the file
    size must remain stable. Either manually input the number of seconds
    or utilize the input field selector(s) to make your selection.
16. Select an **operator** then enter or select the **exit code
    integer**.
17. Specify whether the defined criteria should be used to determine if
    the job Failed or Finished OK.
18. Click the **Save** button.

## Updating Job Action: Embedded Script Job Details

For conceptual information, refer to [Embedded Scripts](../../../automation-concepts/embedded-scripts.md) in the
**Concepts** online help.

:::note
If you do not have the Script Privilege for the script, then you will not be able to see the task details or edit the daily job definition (the Lock button will be disabled).
:::

To perform this procedure:

Click on the **Processes** button at the top-right of the **Operations
Summary** page. The **Processes** page will display.

Ensure that both the **Date** and **Schedule** toggle switches are
enabled so that you can make your date and schedule selection,
respectively. Each switch will appear green when enabled.

![Schedule Status Updates Date & Schedule Toggle Switches Enabled](../Resources/Images/SM/Schedule-Status-Update_Date&ScheduleToggles.png "Schedule Status Updates Date & Schedule Toggle Switches Enabled")

Select the desired **date(s)** to display the associated schedule(s).

Select one or more **schedule(s)** in the list.

Select one **job** in the list. A record of your selection will display
in the [status bar](SM-UI-Layout.md#Status) at the bottom of the
page in the form of a breadcrumb trail.

![Job Processes](../Resources/Images/SM/Job-ProcessesUNIX.png "Job Processes")

Click on the job record (e.g., 1 job(s)) in the status bar to display
the **Selection** panel.

:::note
As an alternative, you can right-click on the job selected in the list to display the **Selection** panel.
:::

![Job Summary Tab in Operations](../Resources/Images/SM/Job-Summary-Tab-(UNIX).png "Job Summary Tab in Operations")

Click the **Daily Job Definition** button ![Daily Job Definition Button](../Resources/Images/SM/Daily-Job-Definition-Button.png "Daily Job Definition Button")
at the top-left corner of the panel to access the **Daily Job
Definition** page. By default, this page will be in **Read-only** mode.

Click the **Lock** button ![Daily Job Definition Read-only Button](../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Daily Job Definition Read-only Button")
at the top-right corner to place the page in **Admin** mode. The button
will switch to display a white lock unlocked on a green background
![Daily Job Definition Admin Switch](../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Daily Job Definition Admin Switch")
when enabled.

:::note
The **Lock** button will not be visible to users who do not have the appropriate permissions.
:::

Expand the **Task Details** panel to expose its content.

:::note
All required fields are designated by a red asterisk.
:::

Select a **User Id** to use when running the job. Either use the default
value of "0/0" or assign it to an available batch user. Keep in mind
that user information must be defined as a Batch User ID in
OpCon Administration.

Select from the **Machines or Machine Group** drop-down list the
**machine** where the LSAM is installed. If you wish instead to specify a machine group, then toggle the **Machines** switch
to *Machine Group* then select the **machine group** from the drop-down
list. When toggled to Machine Group, the switch will appear green.

**In the Embedded Script frame:**

The **Embedded Script** frame is used to associate an embedded script to
run with the job.

\

Select the **script** that you wish to associate with the job. The
**Type** field will populate to show the type of script selected.

Select the specific **version (or revision) of the script** to run for
this job. The **Comments** field will populate with any notes provided
about the script.

:::note
Selecting the "Latest" version means that just before the job runs, the latest version of the script will be used.
:::

Viewing Scripts:

To view the details about a script, click the **Preview** button
(![Daily Job Definition Preview Button](../Resources/Images/SM/Daily-Job-Definition-View-Script.png "Daily Job Definition Preview Button")).
Once clicked, the **Script Viewer** pop-up window will display
information (e.g., name, description, type, version, version comment,
author, created, updated) about and the contents of the selected script.

:::note
The **Preview** button will only be enabled for embedded scripts for which the user is a member of a role with privileges to view the contents. A user must be a member of a role with All Administrative Functions, All Function Privileges, View Embedded Script Contents privilege, or must be in the ocadm role to view the contents.
:::

:::note
If you do not have the View Embedded Script Contents privilege, then you will not be able to see any of the script contents in **Preview** mode.
:::

**In the Runner frame:**

The **Runner** frame is used to configure the run definition that is
used to execute the script.

\

Select the **runner** (interpreter) that will be used to run the script.
The **Run Command Template** field will populate to show the syntax for
the runner.

Enter any *argument(s)* that you wish to pass to the script at runtime.
This field permits up to 255 characters.

:::note
When defining the argument, keep in mind the that the equal sign (=) is a restricted character.
:::

**In the Failure Criteria frame:**

The **Failure Criteria** frame is used to define the criteria for
OpCon to determine the final status of the
job.

\

Select an **operator** then enter or select the **exit code integer**.

Specify whether the defined criteria should be used to determine if the
job Failed or Finished OK.

Defining Multiple Failure Criteria:

Use the **and/or** field to define multiple failure criteria. This field
defines the way the strings are evaluated together.

:::note
You must define all "And" comparisons before the "Or" comparisons. Additionally, if the Comparison Operator on the previous group is "Equal To", then the *and/or* value must be set to "Or".
:::

Use the **Fail on Core Dump** switch to configure how the
LSAM should report the status of the job when the job does or does not create a core file.

- If the **Fail on Core Dump** switch is enabled ![Green Enabled     Switch](../Resources/Images/SM/Enabled-Switch.png "Green Enabled Switch")
    and a core dump is produced, then the job status will return     a failed exit code.
- If the **Fail on Core Dump** switch is enabled ![Green Enabled     Switch](../Resources/Images/SM/Enabled-Switch.png "Green Enabled Switch")
    and a core dump is not produced, then the job succeeds     (assuming all other exit code processing is good).

:::note
The final exit code processing has nothing to do with whether a core dump is produced or not. It simply is a final determination of whether the program produced an acceptable job status.
:::

Define up to five different signal failure criteria. If any signal
failure criterion is TRUE when a job finishes,
OpCon reports the job as Failed.

**In the Environment Variables frame:**

The **Environment Variables** frame is used to define the environment
variables for the job to use.

\

Click the green **Add** button (**+**) to define the environment
variables.

Enter a *name* in the **Name** field.

Enter a *value* in the **Value** field. Remove any defined environment
variable by clicking the **Delete** button at the end of the row.

Click the **OK** button to add the name/value.

:::note
Click the **Undo** button if you wish to undo your changes for any reason.
:::

Click the **Save** button.
