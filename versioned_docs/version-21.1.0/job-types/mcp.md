# MCP Job Details

The information in this section applies to defining an MCP job. The text
fields in the graphical interfaces support
OpCon token replacement.
[Tokens](../objects/using-properties.md#tokens)
 are resolved as the SAM prepares to send the job to the LSAM. For
additional information about this platform, refer to [MCP LSAM Configuration](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Configuration.md)
 in the **MCP LSAM** online help.

## Job Information

- **User Code**: Defines the usercode under which the job executes.
  - The maximum number of characters for the User Code is 17.
  - The User Code can only be numbers and uppercase letters.
  - The User Code must already be defined to the MCP.
  - A job and its prerun job always have the same User Code.
- **Access Code** (Optional): Defines the Access Code under which the
    mainframe job executes.
  - The maximum number of characters for the Access Code is 17.
  - The Access Code can only be numbers and uppercase letters.
  - A job and its prerun job always have the same Access Code.
- **MCP Job Type**: Defines the command that initiates a process on
    the MCP machine.
  - **RUN**: Define RUN for a program.
  - **START**: Define *START* for a WFL.
  - **EAE/AB Suite**: Define EAE/AB Suite to run reports.
  - **COPY**: Defines that this is a COPY sub-type job and will tell
        MCP LSAM to copy the file or the whole directory         specified in the **Source File or Directory** field.
  - **CHANGE**: Defines that this is a CHANGE job and will tell MCP
        LSAM to change the name of a file or a whole         directory specified in the **Source File or Directory** field.
  - **REMOVE**: Defines that this is a REMOVE sub-type job and will
        tell MCP LSAM to REMOVE the file or the whole         directory specified in the **Source File or Directory** field.

### START and RUN Fields

The START and RUN type jobs use the following fields:

- **File Title**: Defines the WFL or the program to execute.
  - The maximum number of characters for the File Title is 96.
  - Do not begin the WFL or program text with START or RUN. This
        causes the job to fail.
  - Do not use lowercase letters for the File Title; otherwise, the
        error PARAM/ATTR ERR occurs.
- **Arguments**: Defines the parameters and/or task attribute(s) to be
    passed to the task.
  - The maximum number of characters for Arguments is 200.
  - A WFL accepts string, integer, and Boolean arguments.
  - Enclose a string argument in double quotes ("STRING PARAM").
  - Pass integer arguments as numbers (e.g., 5).
  - Pass Boolean arguments as TRUE or FALSE.
  - Parentheses are allowed around all the arguments.
  - Separate the arguments with a comma (,).

- **Template Display File**: Defines the file used in lieu of a
    job-specific displays file, and it allows the customer to use a
    single set of definitions for multiple OpCon jobs rather than create
    a job-specific displays file for each OpCon job. For more
    information, refer to [Automated     Response](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Automated-Response.md#Automate)
    .
- **EOT Notice Message**: Defines whether to treat each end-of-task
    notification for this job as a display message. For more
    information, refer to [Automated     Response](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Automated-Response.md#Automate)
    .
  - Enabling this setting permits the user to set up an Automated
        Response to trigger action upon end of task without having to
        wait for the job to fully complete.

### Task Attributes Fields

- **Define Task Attribute**: Defines the text for a Task Attribute the
    MCP job will require.
- **Task Attributes**: Defines the Task Attributes used to modify,
    override, or elaborate existing task attributes that apply to the
    MCP program or WFL.
  - The maximum number of characters for each Task Attribute is 300.
  - Any single given task attribute definition must fit within a
        single line and cannot be continued from one line to the next.
  - There can be up to 10 task attributes. There is one task
        attribute per each line; however, should a user need to define
        more than 10 task attributes, the additional ones may be
        appended to any existing task attribute by preceding the next
        task attribute with a semicolon. For example, SW1=TRUE;SW2=TRUE.
        This only applies to the additional task attribute.

### File Attributes Fields

- **Define File Attribute**: Defines the text for a File Attribute the
    MCP job will require.
- **File Attributes**: Defines a subset of Task Attributes and are
    used to define, enhance, or override default attributes for files
    used by the MCP program.
  - The maximum number of characters for File Attributes is 300.
  - Any single given file attribute definition must fit within a
        single line and cannot be continued from one line to the next.
  - There can be up to 10 file attributes. There is one file
        attribute per each line; however, should a user need to define
        more than 10 file attributes, the additional attributes may be
        appended to any existing file attribute by preceding the next
        attribute with a semicolon. For example, FILE
        INFILE(TITLE=(USER)MY/FILE/IN ON DISK; FILE
        OUTFILE(TITLE=OTHERUSER)YOUR/FILE/OUT ON DISK. This only applies
        to the additional file attribute.

### Job Summary Information Fields

**Job Summary Information**: For START type jobs, this frame contains
the fields to define a specific location for the job summary
information. This is useful for sites that choose to store job summary
in locations other than the MCP LSAM's default location. The JORS process will use this information to look up the file
when a JORS request is sent.

- **User Code**: Defines the MCP user to impersonate when looking up
    job summary information.
- **Family**: Defines the Family name to use when looking up the Job
    Summary Information.
  - Tokens are supported in this field.
  - The family name cannot exceed 20 characters.

**Directory or File Name**: Defines the Directory or Filename to use
when looking up the Job Summary information. When entering a directory
name, do not use an equals sign (=) at the end of the field. The correct
way to search for job summaries that appear in a given directory is to
use the following syntax: `<directory name\>`

:::tip Example
Use **MYJOBSUMMARY** as opposed to MYJOBSUMMARY/=
:::

- Tokens are supported in this field.
- The Directory or Filename cannot exceed 200 characters.

### EAB/AE Suite Fields

:::note
For information on cleaning up files generated by the MCP LSAM when running EAE/AB Suite jobs, refer to [Using \*SMA/WFL/CLEANUP/LINC17/FILES](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/SMA_WFL_CLEANUP_LINC17_FILES.md) in the **MCP LSAM** online help.
:::

- **Report Name**: Defines the name of the EAE/AB Suite report to
    execute.
  - Tokens are supported in this field.
  - The report name cannot exceed 256 characters.
- **Acceptfile**: Defines the filename that the LSAM     will create with the arguments in the Parameters field for the
    EAE/AB Suite command.
  - Tokens are supported in this field.
  - The Acceptfile name cannot exceed 256 characters.
  - Following completion (or failure) of the job, the Acceptfile is
        saved as a permanent file in the directory,
        \*SMA/LINC17/FILES/=.
    - SMA Technologies recommends that this             directory be cleaned up at regular intervals.
    - A utility called SMA/WFL/CLEANUP/LINC17/FILES is provided in
            the MCP LSAM release container and may be             scheduled via OpCon to perform this maintenance.
- **Parameters**: Defines all the parameters to run the EAE/AB Suite
    report.
  - Tokens are supported in this field.
  - The Parameters cannot exceed 256 characters.

- **Template Display File**: Defines the file used in lieu of a
    job-specific displays file, and it allows the customer to use a
    single set of definitions for multiple OpCon jobs rather than create
    a job-specific displays file for each OpCon job. For more
    information, refer to [Automated     Response](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Automated-Response.md#Automate)
    .
- **EOT Notice Message**: Defines whether to treat each end-of-task
    notification for this job as a display message. For more
    information, refer to [Automated     Response](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Automated-Response.md#Automate)
    .
  - Enabling this setting permits the user to set up an Automated
        Response to trigger action upon end of task without having to
        wait for the job to fully complete.

### COPY Fields

The COPY type jobs use the following fields:

- **Source File or Directory** (Required): Specifies the filename (Ex:
    (UC)MYUSER/FILES) or the directory (Ex: (UC)MYUSER/=) that will be
    copied.
  - The maximum number of characters for the **Source File or
        Directory** field is 256.
  - Tokens are supported in this field.
- **From** (Required): Specifies the place where the source file is.
    It can be a Family Disk name or a tape name.
  - The maximum number of characters for the **From** field is 40.
  - Tokens are supported in this field.
- **Kind** (Required): Specifies the kind of the device for the source
    file.
  - The Device choices are PACK or TAPE (default).
- **Destination File or Directory**: Specifies the new filename (Ex:
    (UC)MYUSER/SAVED/FILES) or the directory (Ex: (UC)MYUSER/SAVED/=)
    for the copied file.
  - The maximum number of characters for the **Destination File or
        Directory field** is 256.
  - Tokens are supported in this field.
- **To** (Required): Specifies where the destination file will be
    placed. It can be a Family Disk name or a tape name.
  - The maximum number of characters for the **To** field is 40.
  - Tokens are supported in this field.
- **Kind** (Required): Specifies the kind of the device for the
    destination file.
  - The Device choices are PACK or TAPE (default).
- **Hostname (if BNA Transfer)** (Optional): Specifies the Unisys MCP
    hostname to where the file will be copied. If blank, the application
    assumes that this is not a BNA Transfer copy.
  - The maximum number of characters for the **Hostname** field
        is 256.
  - Tokens are supported in this field.
- **Copy & Compare** (Optional): Specifies to use the "COPY &
    COMPARE" feature if the check box is marked to copy the file.

### CHANGE Fields

The CHANGE type jobs use the following fields:

- **Source File or Directory** (Required): Specifies the filename (Ex:
    (UC)MYUSER/FILES) or the directory (Ex: (UC)MYUSER/=) that will be
    changed.
  - The maximum number of characters for the **Source File or
        Directory** field is 256.
  - Tokens are supported in this field.
- **New File or Directory** (Required): Specifies the new filename
    (Ex: \*(UC)MYUSER/SAVED/FILES) or the directory (Ex:
    \*(UC)MYUSER/SAVED/=) for the new file.
  - The maximum number of characters for the **New File or
        Directory** field is 256.
  - Tokens are supported in this field.
- **From** (Required): Specifies the place where the source file is.
    It can be a Family Disk name or a tape name.
  - The maximum number of characters for the **From** field is 40.
  - Tokens are supported in this field.

### REMOVE Fields

The REMOVE type jobs use the following fields:

- **Source File or Directory** (Required): Specifies the filename (Ex:
    (UC)MYUSER/FILES) or the directory (Ex: \*(UC)MYUSER/FILES/=) that
    will be removed.
  - The maximum number of characters for the **Source File or
        Directory** field is 256.
  - Tokens are supported in this field.
- **From** (Required): Specifies the place where the source file is.
    It can be a Family Disk name or a tape name.
  - The maximum number of characters for the **From** field is 40.
  - Tokens are supported in this field.

:::note
Effective with MCP LSAM 16.02, the user will be able to modify the *SMA/WFL/REMOVEJOB WFL to elect to have the WFL complete OK even if there are no files deleted. Security errors and locked files will still cause the REMOVEJOB WFL to be reported as failed in this case.

To implement the alternate behavior, modify a working copy of *SMA/WFL/REMOVEJOB to comment out sequence #26600, and un-comment sequence 26650. Because the default behavior is to fail the REMOVE MCP job if there are no files to remove, it will be necessary to re-implement this modification each time the MCP LSAM is upgraded if the alternate behavior is desired.
:::

## Pre-Run Information

The primary purpose of a Prerun is to test any required preconditions
for job execution. If the Prerun job terminates with an error, it is
rescheduled at a user-defined interval. The Prerun job continues to
execute at the user-defined interval until it succeeds. After the Prerun
job completes successfully, the job defined in the Job Description is
allowed to process.

The following information applies to defining the Prerun job details and
allows the specification of an MCP job to be executed immediately before
the job specified on the Job Description:

- **MCP Pre-Run Type**: Defines the command that initiates a process
    on the MCP machine.
  - **START**: Define **START** for a WFL.
  - **RUN**: Define **RUN** for a program.
  - **EAE/AB Suite**: Define EAE/AB Suite to run reports.
  - **COPY**: Defines that this is a COPY sub-type job and will tell
        MCP LSAM to copy the file or the whole directory         specified in the **Source File or Directory** field.
  - **CHANGE**: Defines that this is a CHANGE job and will tell MCP
        LSAM to change the name of a file or a whole         directory specified in the **Source File or Directory** field.
  - **REMOVE**: Defines that this is a REMOVE sub-type job and will
        tell MCP LSAM to REMOVE the file or the whole         directory specified in the **Source File or Directory** field.
- **File Title**: Defines the WFL or the program to execute.
  - The maximum number of characters for the File Title is 96.
  - Do not begin the WFL or program text with START or RUN. This
        causes the job to fail.
  - Do not use lowercase letters in the File Title; otherwise, the
        error PARAM/ATTR ERR occurs.
- **Arguments**: Defines the parameters and/or task attribute(s) to be
    passed to the task.
  - The maximum number of characters for Arguments is 92.
  - A WFL accepts string, integer, and Boolean arguments.
  - Enclose a string argument in double quotes ("STRING PARAM").
  - Pass integer arguments as numbers (e.g., 5).
  - Pass Boolean arguments as TRUE or FALSE.
  - Parentheses are allowed around all the arguments.
  - Separate the arguments with a comma (,).

- **Template Display File**: Defines the file used in lieu of a
    job-specific displays file, and it allows the customer to use a
    single set of definitions for multiple OpCon jobs rather than create
    a job-specific displays file for each OpCon job. For more
    information, refer to [Automated     Response](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Automated-Response.md#Automate)
    .
- **EOT Notice Message**: Defines whether to treat each end-of-task
    notification for this job as a display message. For more
    information, refer to [Automated     Response](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Automated-Response.md#Automate)
    .
  - Enabling this setting permits the user to set up an Automated
        Response to trigger action upon end of task without having to
        wait for the prerun job to fully complete.

### Task Attributes Fields

**Define Task Attribute**: Defines the text for a Task Attribute the MCP
job will require.

**Task Attributes**: Defines the Task Attributes used to modify,
override, or elaborate existing task attributes that apply to the MCP
program or WFL.

- The maximum number of characters for Task Attributes is 300.

- Any single given task attribute definition must fit within a single
    line and cannot be continued from one line to the next.
- There can be up to 10 task attributes. There is one task attribute
    per each line; however, should a user need to define more than 10
    task attributes, the additional ones may be appended to any existing
    task attribute by preceding the next task attribute with a
    semicolon. For example, SW1=TRUE;SW2=TRUE. This only applies to the
    additional task attribute.

### File Attributes Fields

- **Define File Attribute**: Defines the text for a File Attribute the
    MCP job will require.
- **File Attributes**: Defines a subset of Task Attributes and are
    used to define, enhance, or override default attributes for files
    used by the MCP program.
  - The maximum number of characters for File Attributes is 300.
  - Any single given file attribute definition must fit within a
        single line and cannot be continued from one line to the next.
  - There can be up to 10 file attributes. There is one file
        attribute per each line; however, should a user need to define
        more than 10 file attributes, the additional attributes may be
        appended to any existing file attribute by preceding the next
        attribute with a semicolon. For example, FILE
        INFILE(TITLE=(USER)MY/FILE/IN ON DISK; FILE
        OUTFILE(TITLE=OTHERUSER)YOUR/FILE/OUT ON DISK. This only applies
        to the additional file attribute.

### Job Summary Information Fields

**Job Summary Information**: For START type Prerun jobs, this frame
contains the fields to define a specific location for the job summary
information. This is useful for sites that choose to store job summary
in locations other than the MCP LSAM's default location. The JORS process will use this information to look up the file
when a JORS request is sent.

**User Code**: Defines the MCP user to impersonate when looking up job
summary information.

**Family**: Defines the Family name to use when looking up the Job
Summary Information.

- Tokens are supported in this field.
- The family name cannot exceed 20 characters.

**Directory or File Name**: Defines the Directory or Filename to use
when looking up the Job Summary information. When entering a directory
name, do not use an equals sign (=) at the end of the field. The correct
way to search for job summaries that appear in a given directory is to
use the following syntax: <directory name\>

:::tip Example
Use **MYJOBSUMMARY** as opposed to MYJOBSUMMARY/=
:::

- Tokens are supported in this field.
- The Directory or Filename cannot exceed 200 characters.

### EAB/AE Suite Fields

:::note
For information on cleaning up files generated by the MCP LSAM when running EAE/AB Suite jobs, refer to [Using \*SMA/WFL/CLEANUP/LINC17/FILES](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/SMA_WFL_CLEANUP_LINC17_FILES.md) in the **MCP LSAM** online help.
:::

- **Report Name**: Defines the name of the EAE/AB Suite report to
    execute.
  - Tokens are supported in this field.
  - The report name cannot exceed 256 characters.
- **Acceptfile**: Defines the filename that the LSAM     will create with the arguments in the Parameters field for the
    EAE/AB Suite command.
  - Tokens are supported in this field.
  - The Acceptfile name cannot exceed 256 characters.
  - Following completion (or failure) of the job, the Acceptfile is
        saved as a permanent file in the directory,
        \*SMA/LINC17/FILES/=.
    - SMA Technologies recommends that this             directory be cleaned up at regular intervals.
    - A utility called SMA/WFL/CLEANUP/LINC17/FILES is provided in
            the MCP LSAM release container and may be             scheduled via OpCon to perform
            this maintenance.
- **Parameters**: Defines all the parameters to run the EAE/AB Suite
    report.
  - Tokens are supported in this field.
  - The Parameters cannot exceed 256 characters.

- **Template Display File**: Defines the file used in lieu of a
    job-specific displays file, and it allows the customer to use a
    single set of definitions for multiple OpCon jobs rather than create
    a job-specific displays file for each OpCon job. For more
    information, refer to [Automated     Response](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Automated-Response.md#Automate)
    .
- **EOT Notice Message**: Defines whether to treat each end-of-task
    notification for this job as a display message. For more
    information, refer to [Automated     Response](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Automated-Response.md#Automate)
    .
  - Enabling this setting permits the user to set up an Automated
        Response to trigger action upon end of task without having to
        wait for the job to fully complete.

### COPY Fields

The COPY type jobs use the following fields:

- **Source File or Directory** (Required): Specifies the filename (Ex:
    \*SMA/COMM) or the directory (Ex: \*SMA/=) that will be copied.
  - The maximum number of characters for the **Source File or
        Directory** field is 256.
  - Tokens are supported in this field.
- **From** (Required): Specifies the place where the source file is.
    It can be a Family Disk name or a tape name.
  - The maximum number of characters for the **From** field is 40.
  - Tokens are supported in this field.
- **Kind** (Required): Specifies the kind of the device for the source
    file.
  - The Device choices are PACK or TAPE (default).
- **Destination File or Directory**: Specifies the new filename (Ex:
    \*SMA/COMM) or the directory (Ex: \*SMA/=) for the copied file.
  - The maximum number of characters for the **Destination File or
        Directory field** is 256.
  - Tokens are supported in this field.
- **To** (Required): Specifies where the destination file will be
    placed. It can be a Family Disk name or a tape name.
  - The maximum number of characters for the **To** field is 40.
  - Tokens are supported in this field.
- **Kind** (Required): Specifies the kind of the device for the
    destination file.
  - The Device choices are PACK or TAPE (default).
- **Hostname (if BNA Transfer)** (Optional): Specifies the Unisys MCP
    hostname to where the file will be copied. If blank, the application
    assumes that this is not a BNA Transfer copy.
  - The maximum number of characters for the **Hostname** field
        is 256.
  - Tokens are supported in this field.
- **Copy & Compare** (Optional): Specifies to use the "COPY &
    COMPARE" feature if the checkbox is marked to copy the file.

### CHANGE Fields

The CHANGE type jobs use the following fields:

- **Source File or Directory** (Required): Specifies the filename (Ex:
    \*SMA/COMM) or the directory (Ex: \*SMA/=) that will be changed.
  - The maximum number of characters for the **Source File or
        Directory** field is 256.
  - Tokens are supported in this field.
- **New File or Directory** (Required): Specifies the new filename
    (Ex: \*SMA/COMM) or the directory (Ex: \*SMA/=) for the new file.
  - The maximum number of characters for the **New File or
        Directory** field is 256.
  - Tokens are supported in this field.
- **From** (Required): Specifies the place where the source file is.
    It can be a Family Disk name or a tape name.
  - The maximum number of characters for the **From** field is 40.
  - Tokens are supported in this field.

### REMOVE Fields

The REMOVE type jobs use the following fields:

- **Source File or Directory** (Required): Specifies the filename (Ex:
    \*SMA/COMM) or the directory (Ex: \*SMA/=) that will be removed.
  - The maximum number of characters for the **Source File or
        Directory** field is 256.
  - Tokens are supported in this field.
- **From** (Required): Specifies the place where the source file is.
    It can be a Family Disk name or a tape name.
  - The maximum number of characters for the **From** field is 40.
  - Tokens are supported in this field.

## Failure Criteria

- **Fail Codes**: Defines words to compare to the MCP console display.
    If the words match the display, the LSAM follows the     failure logic established in the configuration. Refer to [Set up
    Failure and Status Message
    Logic](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Set-up-Failure-and-Status-Message-Logic.md)
     in the **MCP LSAM** online help.
  - The entry must begin with the first word of the MCP console
        display, followed by any additional words included in the search
        of the display.
  - Finish the entry with an asterisk (\*) as a wildcard for the
        remainder of the words in the display.
- **Fail Reset**: Defines words to compare to the MCP console display.
    If the words match the display, the LSAM follows the     failure logic established in the configuration. Refer to [Set up
    Failure and Status Message
    Logic](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Set-up-Failure-and-Status-Message-Logic.md)
     in the **MCP LSAM** online help.
:::
