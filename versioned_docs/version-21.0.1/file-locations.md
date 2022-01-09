# File Locations

During the installation, someone chose where the OpCon programs were installed and where they would write output files.

The configuration file location is based on where the programs were installed.

- If the programs were installed anywhere on the system drive (e.g., C:\\), the configuration files will be in the <systemdrive\>:\\ProgramData\\OpConxps directory.
- If the programs were installed to a non-system drive (e.g., D:\\), the configuration files will be in the same folder as the programs.

The output files and folders can be configured for any local hard drive location, but their default location is based on where the programs were installed.

- If the programs were installed anywhere on the system drive (e.g., C:\\), the output files will default to the <systemdrive\>:\\ProgramData\\OpConxps directory.
- If the programs were installed to a non-system drive (e.g., D:\\), the output files will default to the same folder as the programs.
- If a custom path was defined, the SMACommon.ini configuration file will indicate the path to the output files.

The subsequent examples show different possible installation directory structures.

## Installed to System Drive using Default Path

:::info Example
This example shows where you will find your programs and files if they were installed to a system drive using the default paths.

**Programs**: C:\Program Files\OpConxps\\*program folder*

**Configuration files**: C:\ProgramData\OpConxps\\*program folder*

**Output files**: C:\ProgramData\OpConxps\\*program folder*
:::

:::note
The root OpConxps data folder is likely hidden. To access this directory, type C:\\ProgramData in your File Explorer address bar.
:::

## Installed to System Drive using Custom Path

:::info Example
This example shows where you would find your programs and files if they were installed to a custom system path of C:\My OpCon\OpConxps\ and accepted the default output path.

**Programs**: C:\My OpCon\\*program folder*

**Configuration files**: C:\ProgramData\OpConxps\My OpCon\\*program folder*

**Output files**: C:\ProgramData\OpConxps\My OpCon\\*program folder*
:::

## Installed to Non-System Drive using Custom Path

:::info Example
This example shows where you would find your programs and files if they were installed to a custom path on a non-system drive of D:\My Programs\OpConxps\ and accepted the default output path.

**Programs**: D:\My Programs\OpConxps\\*program folder*

**Configuration files**: D:\My Programs\OpConxps\\*program folder*

**Output files**: D:\My Programs\OpConxps\\*program folder*
:::

## Installed Output Files using Custom Path

:::info Example
This example shows where you would find your output files if you chose a custom path. No matter where the programs were installed, the output files could have been configured for a custom location on any local hard drive.

In this example, the default path was accepted for the program files and a custom path of E:\Logs\OpConxps\ was defined for the output files.

**Programs**: C:\Program Files\OpConxps\\*program folder*

**Configuration files**: C:\ProgramData\OpConxps\\*program folder*

**Note**: The SMACommon.ini file in this folder contains the location for the output files.

**Output files**: E:\Logs\OpConxps\\*program folder*
:::
