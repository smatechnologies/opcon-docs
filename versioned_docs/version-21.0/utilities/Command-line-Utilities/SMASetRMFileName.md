# SMASetRMFileName

Although the SMA Resource Monitor for Windows supports the use of
wildcards, customers frequently want to monitor files that are named
with a date component that is explicitly controlled by the customer. For
example, a file created on July 25, 2008 may be named something like
DATA20082507.TXT. Basically, there is a base component of the name (in
this case, DATAxxxxxxxx.TXT) and a date component.

The combination of the powerful date formatting functions in SAM with
the SMASetRMFileName utility resolves this requirement. SMASetRMFileName
updates the specified file name for monitoring in the Rules file for a
particular rule.

## Syntax

The command-line syntax is:

SMASetRMFileName.exe --rRulesDirectory --fFileName

### Arguments

There are two arguments to be supplied to SMASetRMFileName. These
arguments are:

- **-r**: This argument is used to specify the full path to the Rules
    file in the SMAResourceMonitor\\Rules directory. The Rules file is
    named the same as the Rule itself.
- **-f**: The -f argument is used to specify the name of the file to
    watch for.

### Examples

:::tip Example
A file with a base name of C:\temp\dynxxxxxxxx.txt where xxxxxxxx represents MMDDYYYY needs to be monitored.

1. Since SMASetRMFileName ONLY updates, it is mandatory that the rule to monitor the file be created.
2. Create a token called $DATEMMDDYYYY with a value of mmddyyyy.
3. Create a job that executes SMASetRMFileName with the following arguments:
   - **-r** "C:\ProgramData\OpConxps\SMAResourceMonitor\Rules\<Rule Name\>.Rule"
   - **-f** "C:\temp\dym\[\[$DATEMMDDYYYY]].txt"
4. This new job can be run daily to update the name specification in the Rules file.
:::

:::tip Example
A file with an unknown filename is created on a UNIX machine (or on another platform that supports MSGIN). This file is then transferred to C:\temp on the PC where SMAResourceMonitor is running.

1. Since SMASetRMFileName ONLY updates, it is mandatory that a rule be created to monitor the file that will be created.
2. Create a token called DYNFNAME with a value of x.
3. Create a job that executes SMASetRMFileName with the following arguments:
   - **-r** "C:\ProgramData\OpConxps\SMAResourceMonitor\Rules\<Rule Name\>.Rule"
   - **-f** "\[\[DYNFNAME]]"
4. Before running this job, an event to set this token must be generated from the UNIX machine (or from another platform that supports MSGIN).
:::

## Exit Values

The SMASetRMFileName.exe program uses the following exit values:

|Value|Description|
|--- |--- |
|0|Successful execution.|
|NOT 0|An error occurred – See the output file for a text message.|
