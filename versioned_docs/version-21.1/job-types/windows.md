# Windows Job Details

The information in this section applies to defining a Windows Job. For
additional information about this platform, refer to [Microsoft LSAM Configuration and
Operation](https://help.smatechnologies.com/opcon/agents/windows/latest/Files/Agents/Microsoft/Configuration-and-Operation.md)
 in the **Microsoft LSAM** online help.

Jobs can be .exe, .com, .bat, or .cmd type files. If specifying a .com
file, the command line must have the .com extension.

## Windows Definition

- **Job Action**: Defines the run process the job uses. A job action
    can be [Run Program](#Fields), [File Arrival](#Fields2), or
    [Embedded Script](#Fields3).
- **User ID**: Defines the User ID assigned to the job for Windows
    security authentication.
  - Define "Use Service Account" if the MSLSAM is running as a
        Domain User. For additional information on running the MSLSAM as
        a Domain User, refer to [Service Configuration         Options](https://help.smatechnologies.com/opcon/agents/windows/latest/Files/Agents/Microsoft/Service-Configuration-Options.md)
         in the **Microsoft LSAM** online help.
  - Define a specific Domain User if the MSLSAM is running as the
        Local System. For additional information on running the MSLSAM
        as the Local System, refer to [Service Configuration         Options](https://help.smatechnologies.com/opcon/agents/windows/latest/Files/Agents/Microsoft/Service-Configuration-Options.md)
         in the **Microsoft LSAM** online help.
  - If the User ID does not list the Domain User, register the
        Domain User in the EM. For information on registering a Domain
        User in the Enterprise Manager (EM), refer to [Setting up a New         Microsoft (MS) LSAM Batch
        User](../Files/UI/Enterprise-Manager/Adding-Batch-Users.md#Setting)
         in the **Enterprise Manager** online help.

### Fields for Run Program

**Job Priority**: Defines the Windows process priority for the job. The
options are Normal, High, Idle, or Real-Time.

:::warning
Do not use Real-Time unless the machine can be dedicated to that single process.
:::

**Run in Command Shell**: Defines whether or not to run the defined
Windows command line in a command shell.

**Prerun**: Defines the information for a prerequisite process that runs
immediately before the primary job and contains the Command Line and
Working Directory information.

- If a prerun fails, the primary job does not start. Upon failure, the
    SAM reschedules the prerun at a user-defined interval. For
    information on this Prerun setting, refer to [Time Settings](../administration/server-options.md#time-settings).
- The Prerun job continues to execute at the user-defined interval
    until it succeeds. When a prerun job is successful, the primary job
    starts (provided there are no other dependencies).

**(Prerun) Working Directory**: Defines the working directory for the
job listed in the Prerun. A working directory is a requirement for jobs
needing input (e.g., .ini files) or creating output (e.g., log files).

- The maximum length of the working directory is 255 characters (or
    the current Windows working-directory maximum).
- The working directory supports OpCon and
    Windows System Variables.
- Enclose OpCon properties in double
    brackets to create tokens (e.g., \[\[property\]\]). -   Enclose Windows System Variables in percent signs (e.g., %TEMP%).
- For OpCon or Windows System Variables,
    verify that the expanded text does not exceed the maximum length of
    the working directory.
- Operating systems Windows XP and higher support a Universal Naming
    Convention (UNC) pathname in the working directory.

**Command Line**: Defines the full path to the executable file on the
LSAM machine.

- The maximum length of the command line is 255 characters (or the
    current Windows command-line maximum).
- The command line supports the Universal Naming Convention (UNC)
    standards (e.g., \\\\server\\bin\\wintst.exe).
- If a job uses a Machine Group, a wildcard (\*) character should
    replace the computer name in the UNC pathname (e.g.,
    \\\\\*\\bin\\wintst.exe). A wildcard allows the job to run on the
    machine the SAM selects from the Machine Group.
- If the command line has a reference to a directory or filename that
    contains spaces, the directory and file name must be enclosed in
    double quotes (e.g., "c:\\this is my directory\\test.exe").
- Do not place command-line parameters within the double quotes.
- The MSLSAM automatically executes .com, .exe, .cmd, and .bat files;
    otherwise, the command line must specify a path to a file
    interpreter and must specify a path to the file itself. Another
    approach would be to insert the command line information in a .com,
    .exe, .cmd, or .bat file and execute the file normally through
    OpCon.
- The command line supports OpCon and
    Windows System Variables.
- Enclose OpCon properties in double
    brackets to create tokens (e.g., \[\[property\]\]). -   Enclose Windows System Variables in percent signs (e.g., %TEMP%).
- For OpCon or Windows System Variables,
    verify that the expanded text does not exceed the maximum length of
    the command line.

**Working Directory**: Defines the working directory for the job listed
in the Command Line. A working directory is a requirement for jobs
needing input (e.g., .ini files) or creating output (e.g., log files).

- The maximum length of the working directory is 255 characters (or
    the current Windows working-directory maximum).
- The working directory supports OpCon and
    Windows System Variables.
- Enclose OpCon properties in double
    brackets to create tokens (e.g., \[\[property\]\]). -   Enclose Windows System Variables in percent signs (e.g., %TEMP%).
- For OpCon or Windows System Variables,
    verify that the expanded text does not exceed the maximum length of
    the working directory.
- Operating systems Windows XP and higher support a Universal Naming
    Convention (UNC) pathname in the working directory.

**E.C.O.F.**: Defines the full path to the Exit Code Override File
(E.C.O.F.). Since some jobs do not return a meaningful termination
status to the operating system, SMA Technologies provides the E.C.O.F feature to help create informative feedback from
jobs.

- If a job uses this feature, the value in the E.C.O.F. supersedes the
    job's standard termination value.
- Upon termination, the job produces the E.C.O.F. The MSLSAM reads the
    E.C.O.F. and compares the value in the file to the Failure Criteria
    (refer to below) to determine the job's final status. Refer to
    [Microsoft LSAM Configuration and     Operation](https://help.smatechnologies.com/opcon/agents/windows/latest/Files/Agents/Microsoft/Configuration-and-Operation.md)
     in the **Microsoft LSAM** online help.

**Basic Failure Criteria**: Provides fields to define basic criteria for
OpCon to determine the final status of the
job. If basic criteria options do not meet the needs of the job, define
the Advanced Failure Criteria instead. The Exit Codes section applies to
the primary job and the Prerun Exit Codes section applies to the prerun
job.

- **Job Exit Codes**: If any one of the criteria is TRUE at the end of
    a job, the OpCon reports the job as
    Failed. Up to five different failure criteria may be defined. A
    failure criterion contains two parts: *Operator* and *Exit Code
    integer:*
  - **Operator**: An exit code criterion may use one of the
        following operators to compare the exit code with a user-defined
        value.
    - **EQ** (equal to)
    - **NE** (not equal to)
    - **LT** (less than)
    - **GT** (greater than)
    - **GE** (greater than or equal to)
    - **LE** (less than or equal to)
  - **Exit Code**: Any integer (-2,147,483,648 through
        2,147,483,647) to compare with the job's exit code.

**Advanced Failure Criteria**: Windows jobs can make use of the Advanced
Failure Criteria feature for the job defined in the Command Line. For
more information, refer to [Advanced Failure Criteria](../objects/jobs.md#advanced-failure-criteria).

:::note
If Advanced Failure Criteria is selected, no job-related customized log entries will be added to the Windows Event Log.
:::

**Prerun Exit Code**: If the criterion is TRUE at the end of a prerun
job, the OpCon reports the prerun job as
Failed. After a failure, the SAM reschedules the prerun job.
OpCon allows only one prerun failure
criteria. The failure criterion's structure for the prerun job and for
the main job is the same. (Refer to the description for Exit Codes
above.)

**Job Output Parsing**: Provides fields to define the search criteria
for analyzing job output that matches the defined characters (string)
and will result in the defined exit code.

- **Search Operation**: Defines the type of search operation to
    perform.
- **String to Search**: Defines the parsing value string to be
    searched. Windows wildcard characters are supported in the string
    value.
- **Exit Code**: Defines the exit code to use if the String to Search
    matches the Search Operation criteria. If no matches are found, the
    Agent will return the Windows job exit code.
- **Custom Application Log**: Defines an external application log to
    be attached to the job output log. The external log will be searched
    for a matching String to Search value(s) to determine the
    application's exit code. Windows wildcard characters can be used to
    create a file naming pattern for specifying multiple application log
    files.

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
    The file path and name support the Universal Naming Convention (UNC)
    standards, and Windows wildcard characters are supported in the file
    name (e.g., C:\\Folder\\Filename?ABC\*.txt).
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
- **Failure Criteria**: Windows jobs can make use of the Advanced
    Failure Criteria feature for the job defined in the Start Image. For
    more information, refer to [Advanced Failure Criteria](../objects/jobs.md#advanced-failure-criteria).

### Fields and Controls for Embedded Script

**Script**: Defines the embedded script to associate with the job. Refer
to the [Embedded Scripts](../automation-concepts/embedded-scripts.md)
concept.

- At runtime, the script and type information are used by the Agent to
    create a temporary script file in the location of the $FILE
    placeholder in the run command template. For more information, refer
    to [Adding Script     Runners](../Files/UI/Enterprise-Manager/Adding-Script-Runners.md)
     in the **Enterprise Manager** online help.

**Script Type**: Displays the script type associated with the script.

**Version**: Defines the specific version (or revision) of the script to
run for this job.

**View**: Displays the contents of the script when clicked.

:::note
The **View** button will only be enabled for embedded scripts for which the user is a member of a role with privileges to view the contents from Job Details. A user must be a member of a role with All Administrative Functions, All Function Privileges, Maintain Embedded Scripts privilege, View Embedded Script Contents privilege, or must be in the ocadm role to view the contents.
:::

**Runner**: Defines the run command template for executing the script.

**Run Command Template:** Displays the syntax for the selected runner.

**Arguments**: Defines any script parameters to pass to the script at
runtime.

- At runtime, the Agent will place the arguments in the location of
    the $ARGUMENTS placeholder. For more information, refer to [Adding     Script
    Runners](../Files/UI/Enterprise-Manager/Adding-Script-Runners.md)
     in the **Enterprise Manager** online help.

**Working Dir.**: Provides the executed script a specific execution
context in the same manner as with a standard Windows job.

**Failure Criteria**: Windows jobs can make use of the Advanced Failure
Criteria feature for the job defined in the Start Image. For more
information, refer to [Advanced Failure Criteria](../objects/jobs.md#advanced-failure-criteria).

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

## Windows Job Sub-Types

Windows job sub-types simplify the job definition process by displaying
fields to generate the command line for programs commonly used by SMA Technologies' customers. The following
job sub-types are currently supported for Windows:

- [Command: File Copy](#Command:)
- [Command: File Delete](#Command:2)
- [Command: File Move](#Command:3)
- [Command: File Rename](#Command:4)
- [Corelation](#Corelati)
- [WS_FTP Pro](#WS_FTP)

### Command: File Copy

This Windows sub-type is for an OpCon user who does a lot of Windows
File Copies. Enterprise Manager provides a simple Job SubType screen in
order to copy a file.

#### Basic Tab

- **User Id**: Defines the User ID assigned to the job for Windows
    security authentication.
- **Source File**: Defines the directory and file or files to be
    copied.
  - For multiple files, use wildcards.
- **Destination File**: Specifies the directory and/or filename for
    the new file(s).

#### Advanced Tab

In the Advanced tab, this frame contains a place to define the options
for Windows File Copy.

- **Verify Destination File(s)**: Verifies that new files are written
    correctly.
- **Use Short Name Format**: Uses short filename (if available) when
    copying a file.
- **Copy Subdirectories**: Copies directories and subdirectories,
    unless they are empty.
- **Other Options**: Used to specify additional options for the copy
    command. Type **xcopy /?** in a Windows Command prompt to see all
    possible options.

### Command: File Delete

This Windows sub-type is for an OpCon user
who does a lot of Windows File Deletes. Enterprise Manager provides a
simple Job SubType screen in order to delete a file.

#### Basic Tab

This tab will contain the most basic options for the command.

- **User Id**: Defines the User ID assigned to the job for Windows
    security authentication.
- **File To Delete**: Specifies a comma separated list of one or more
    files or directories.
  - Wildcards may be used to delete multiple files.
  - If a directory is specified, all files within the directory will
        be deleted.

#### Advanced Tab

This tab will contain all the advanced options for the command.

- **Force Delete Read Only Files**: If activated, this option will
    force delete read-only files.
- **Delete Specified Files from all Subdirectories**: If activated,
    this option will delete specified files from all subdirectories.
- **Delete Files with Attributes**: This frame contains options to
    select files to delete based on attributes.
  - **Read Only**
    - Select **Include** to delete all *Read Only Files*
    - Select **Exclude** to **not** delete *Read Only Files*
  - **Hidden**
    - Select **Include** to delete all *Hidden Files*
    - Select **Exclude** to **not** delete *Hidden Files*
  - **Not Content Indexed**
    - Select **Include** to delete *Not Content Indexed Files*
    - Select **Exclude** to **not** delete *Not Content Indexed
            Files*
  - **System**
    - Select **Include** to delete *System Files*
    - Select **Exclude** to **not** delete *System Files*
  - **Archive**
    - Select **Include** to delete all Files ready for *Archiving*
    - Select **Exclude** to **not** delete all Files ready for
            *Archiving*
  - **Reparse Point**
    - Select **Include** to delete all files with *Reparse Points*
    - Select **Exclude** to **not** delete files with *Reparse
            Points*
- **Other Options**:
  - Type **del /?** in a Windows Command prompt to see all possible
        options for deleting one or more files or directories.

### Command: File Move

This Windows sub-type moves one or more files from one directory to the
specified directory. Enterprise Manager provides a simple Job SubType
screen in order to move a file.

- **User Id**: Defines the User ID assigned to the job for Windows
    security authentication.
- **Source File**: Defines the directory and file or files to be
    moved.
  - For multiple files, use wildcards or file1+file2+file3 format.
- **Destination File**: Specifies the directory and/or filename for
    the new file(s).

### Command: File Rename

This Windows sub-type is for an OpCon user
who does a lot of Windows File renaming. Enterprise Manager provides a
simple Job SubType screen in order to rename a file.

- **User Id**: Defines the User ID assigned to the job for Windows
    security authentication.
- **Path and Current File Name**: Defines full path to the location of
    the file to rename and the current file name.
- **New File Name**: Defines the new file name for the file.

### Corelation

This Windows sub-type is for an OpCon user
connecting to the SMA Corelation connector to define Corelation job
details.

:::note
The Corelation subtype will automatically add needed quotation marks around the Connector Location and Configuration File fields.
:::

- **User Id**: Defines the User ID assigned to the job for Windows
    security authentication.

#### General

- **Jobname**: Sets the jobname to start.
- **Jobserial**: Sets the jobserial to start.
- **Connector Location** (Required): Defines the     path where the SMACorelation.exe program is installed. The default
    value is \[\[RCJPATH\]\].
  - SMA Technologies recommends creating a
        Global Property named RCJPATH so a token can be placed in the
        Corelation details and the path maintained by an administrator.
        The value for the property should contain the path to the
        SMACorelation.exe program without the trailing slash. When the
        job is saved, the EM will append \\SMACorelation.exe to
        construct the command.
- **Corelation Job** (Required): Defines the     **Jobname** or **Jobserial**. This value will be a name for
    **Jobname**, and the value will be a number for **Jobserial**.
- **Configuration File** *(Optional)*: Defines the
    name of the configuration file to use. If no configuration file is
    specified, SMARunCorelationJob.ini (located in the same directory as
    SMARunCorelationJob.exe) is assumed.
- **Batch Server** *(Optional)*: Defines an argument
    to allow the specification of the batch server.
- **Batch Queue** *(Optional)*: Defines an argument
    to allow the specification of the batch queue to use. This must be a
    valid queue name on the specified (or default) batch server.
- **Include XML in output** *(Optional)*: Specifies
    that XML messages between SMARunCorelation server are included in
    the output.
- **Show view submit response**: Defines an option that instructs
    SMARunCorelationJob to show the response to the VIEW_SUBMIT of the
    job.
- **Include job details in output** *(Optional)*:
    Directs SMARunCorelationJob to dump the job details and exit.
- **Show Job List** *(Optional)*: Defines an option
    that instructs SMARunCorelationJob to display all of the batch jobs
    that are defined in the Corelation database.
- **Include debug messages** *(Optional)*: Defines an
    option to turn on all debug print. All XML is displayed. This
    includes the series of queries and responses for the job status.

#### Parameters

- **Batch Options**: Defines an optional way to specify parameters.
    Some job parameters are "nested." Each parameter consists of
    multiple arguments. The simplest format is "tag\|value" (similar
    to **Batch Options**). If this is a nested parameter, then the
    "parents" are specified as well. If this value is selected, the
    **Include job details in output** checkbox is selected
    automatically, and **Property Owner** is optional when selecting
    **Batch Options**. When defining a **Name** or **Value**, \| (pipe)
    is an invalid character.
- **Property Owner**: Specifies the property under which the batch
    options are nested.
- **Parameters**: Defines an optional way to specify parameters. When
    defining a **Value**, \| (pipe) is an invalid character.
- **Name**: Defines the property name.
- **Value**: Defines the property value.

### WS_FTP Pro

For SMA Technologies' customers who own WS_FTP Pro, the following information applies to the WS_FTP Pro
sub-type:

:::note
The WS_FTP Pro subtype will automatically add needed quotation marks around the WS_FTP Pro Location, Source Profile, Source File, Destination Profile and Destination File fields. If you are using the File Transfer Options field, you will need to include any required quotation marks.
:::

**WS_FTP Pro Location**: Defines the path to the directory on the
Windows Machine where WS_FTP Pro is installed. WS_FTP Pro installs by
default to the "C:\\Program Files\\Ipswitch\\WS_FTP Professional"
directory on the machine where the job will run (with WS_FTP Pro
installed).

- SMA Technologies recommends creating a Global     Property so a token can be placed in the WS_FTP Pro details and the
    path maintained by an administrator. The value for the property
    should contain the path without the trailing slash. When the job is
    saved, the EM will append \\wsftppro to construct the command.

**Source Profile**: Defines the name of the WS_FTP Pro profile for the
source file.

**Source File**: Defines the full path and file name, or the saved
WS_FTP Pro location and file name for the source file.

:::tip Example
The following example shows a sample destination profile in WS_FTP Pro:

```shell
vendor!swcorp
```

:::

**Destination Profile**: Defines the name of the WS_FTP Pro profile for
the destination file.

**Destination File**: Defines the full path and file name for the
destination file.

**File Transfer Options**: Defines all desired WS_FTP Pro File Transfer
Options. For more information, please consult the WS_FTP Pro Tools Guide
under the heading "File Transfer Options". You can download the manual
from
<http://docs.ipswitch.com/WS_FTP-124/Manuals/English/WS_FTP_Tools_Guide.pdf>.

- Be sure to use the appropriate syntax as defined by the WS_FTP Pro
    Tools Guide. Remember to use quotes to enclose any parameters with
    spaces.
- If your job fails with an exit code not in the [Microsoft LSAM     Machine
    Messages](https://help.smatechnologies.com/opcon/agents/windows/latest/Files/Agents/Microsoft/Machine-Messages.md)
    , please consult the WS_FTP Pro Tools Guide under the heading
    "Return Codes".

**Advanced Failure Criteria**: The WS_FTP Pro sub-type can make use of
the Advanced Failure Criteria feature for the job defined in the Command
Line. For more information, refer to [Advanced Failure Criteria](../objects/jobs.md#advanced-failure-criteria).
