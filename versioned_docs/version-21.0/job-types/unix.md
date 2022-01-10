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
