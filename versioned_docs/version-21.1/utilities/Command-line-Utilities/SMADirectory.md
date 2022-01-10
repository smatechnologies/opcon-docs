# SMADirectory

SMADirectory utility (SMADirectory.exe) is used to manage OpCon
directories. The utility is specifically useful for keeping log and
report directories from using too much disk space.

Based upon user criteria and filters, the utility can be used to:

- Delete files
- Zip (compress) files
- Move files (for full recursive directories)
- Recover files (for full recursive directories)

## Backwards Compatibility

This directory cleanup utility is compatible with SMADeleteOldFiles and
ClearDir. Customers who wish to convert should contact SMA Technologies.

## Requirements

The SMADirectory utility requires the following:

- Microsoft LSAM
- Microsoft .NET Framework 4.5

## Syntax

This utility supports the following types of arguments: dash, forward
slash, and comma delimited.

:::note
SMADirectory is standardized to use (US) English localization, exclusively. The utility only accepts US settings or command-line values.
:::

### Dash Argument

The SMADirectory.exe program accepts arguments using dash.

The following is an example of the command-line syntax:

SMADirectory.exe -d "c:\\Test" -r -u -e \*.\*

:::note
To get the full capability of this utility, SMA Technologies recommends using the dash (-) argument.
:::

#### Parameters

The next table identifies all the acceptable parameters for this
argument.

|Parameter|Name|Default|Description|
|--- |--- |--- |--- |
|-b|Bin|By default, the program will recover the files.|This parameter indicates to recover the files in the default location: `<driveTarget>\ProgramData\OpConxps\MSLSAM\SMADirectory\<directoryTarget>`. If you wish to set a custom location, you may do so using the -o switch.|
|-B|No Bin||This parameter indicates that no recovery will be performed. If you enter -B (No recycle), then the program will not save a copy of the directory in the default location. You may be explicit about recovery using  -b (recover).|
|-c|Time to Retain|5D|This parameter specifies the length of time that files should be retained within the timespan. The value must be in the following form: `<Number><TimeSpan>` with TimeSpan  represented as: D (day), H (hour), X (month), M (minute), S (second), or Y (year). For example: `5D` (for 5 days)|
|-d|Directory Name||This **required** parameter specifies the folder to be cleaned up or moved.|
|-e|Extensions||This **required** parameter accepts  “|” to separate extensions and / or filters.|
|-F|TimeType|FM|This parameter specifies the time type information on files for processing. The available values are:
FA (for last Access date), FM (for last Modification date), or FC (for Creation date)|
|-h|No Hidden|By default, the program will process hidden and system files.|This parameter specifies not to process system and hidden files.|
|-m|Move|Null|This parameter specifies the path to which a folder will be moved. If the -m and/or -z switches are entered, then the program will perform a move operation instead of a delete operation.If the zip command was entered, the program will zip the folder. This case is the only scenario where the -x (delete) switch may be entered.|
|-o|RecoverPath|%ProgramData%/OpConxps/SMADirectory|If recovery is on, this parameter allows you to specify a location for a recovery copy of the Directory to process. This process will only recover qualifying files.|
|-r|Recursive|The process does not run recursively.|This parameter specifies to process subfolders and files under subfolders.|
|-u|Debug||This parameter places the program in Debug mode.|
|-v|Verbose|No|This parameter to print non-deleted file names.|
|-x|Delete|By default, moved files are not deleted.|When -m (move) or -z (zip) is specified, the moved files can be also deleted by setting this switch. The user can use the -x command to delete the files after the move path location if desired. The -x command will delete the files under the MOVE path. The -x command is useful when the user only needs a zip file as the result. Since we move the files to the MOVE PATH location, then we create the zip file the files under the MOVE PATH can be deleted using this option.|
|-z|Zip|By default, no file compression occurs.|This parameter compresses (zips) the files moved. Enter the name of the zip. If the zip command was entered, the program will zip the folder. This program is built with .Net 4.5 for windows; therefore, the compression process requires the compression utility that comes with any Windows operation system. When the user enters the -z command, the user can also include the -m command. The user can only enter the -x command when both -m and -z are included. The -z command requires the name of the file resulted on the compression when there is no -m (move) command entered. If there is no zip filename specified, then the program will use the following naming convention to set the filename: zip.currentdate.zip. For example: `zip.03212016.zip`. The compression only occurs after the Move process is completed and the files are compressed in the -m path entered by the user.|

### Forward Slash Argument

The forward slash argument is supported for backwards compatibility with
cleardir.exe and can be used in the same way as the dash switches.

The following is an example of the command-line syntax:

SMADirectory.exe /d "c:\\Test" /r /u /e \*.\*

### Comma Delimited Argument

The comma delimited argument is supported for backwards compatibility
with the SMADeleteOldFiles and can only be used to delete files (not
move or compress them). This mode requires three (3) parameters to run
successfully.

The following command-line syntax can be used:

```shell
<Target Directory\>\\OpConxps\\MSLSAM\\SMADirectory.exe Directory,DaysToRetain,FileExtensions
```

#### Parameters

The following describes the command-line parameters:

- **<Target Directory\>**: The path to the OpCon installation folder
    (e.g., "C:\\Program Files\").
- **Directory**: The path to the directory to examine.
- **DaysToRetain**: The number of days to keep in the directory.
  - The counter must be entered in English. For example, 5d.
  - The value must be greater than zero, but less than 32,757.
- **FileExtensions**: The file extensions to apply this retention
    period to (e.g., "log" would look for files with the log
    extension).
  - One or more file extensions can be specified (separated by
        commas).
  - The wildcard (\*) character can be specified to apply this
        retention period to all files in this directory.

#### Example

:::tip Example
The following command line would delete any files with an extension of "log" that were older than 5 days:

```shell
"C:\Program Files\OpConxps\MSLSAM\SMADirectory"
```

```shell
"C:\ProgramData\OpConxps\SAM\Log,5,log"
```

Notice that there is no period in front of log.
:::

## Exit Codes

The SMADirectory.exe program can exit with the following codes:

|Exit Code|Sample Command|Message|Status Description|
|--- |--- |--- |--- |
|202|-e||Less parameters|
|203|-d C:\Source -c 20W|[GetTimeCounter] Invalid Counter. Cannot be equal or less than zero...[GetTimeOptions] Error while loading settings.|Wrong Counter Letter|
|203|-d C:\Source -c -5D|[GetTimeCounter] Invalid Counter. Cannot be equal or less than zero...[GetTimeOptions] Error while loading settings.|Negative Counter|
|204|-d C:\Source -c 0D|[GetTimeCounter] Invalid Counter|Zero Counter|
|205|-d C:\InvalidFolder -c 5d -e *.*|The Directory does not exits|Directory specified is invalid.|
|206|-d C:\Source -c5D -e *.log -2||Invalid Option. Zip File Name is Required.|
|206|-d C:\Source -c5D||Invalid Options. The -e is Required.|

|Exit Code|Sample Command|Message|Status Description|
|--- |--- |--- |--- |
|202|C:\Source|[Main] Invalid number of arguments|Less parameters|
|203|C:\Source,5W,log|[ParseComaDelimited][SetCounter] Invalid Counter. Cannot be equal or less than zero....|Invalid Counter Letter|
|203|C:\Source,W,log|[ParseComaDelimited][SetCounter] Invalid Counter. Counter is not numeric|Counter is a letter|
|204|C:\Source,0,log|[ParseComaDelimited][SetCounter] Invalid Counter. Cannot be equal or less than zero....|Zero Counter|
|204|C:\Source,-5,log|[ParseComaDelimited][SetCounter] Invalid Counter. Cannot be equal or less than zero....|Negative Counter|
|205|C:\InvalidFolder,0,log|The Directory does not exits|Directory specified is invalid.|
|206|-d C:\Source,5,log|Exit Status 206|Invalid Options|
