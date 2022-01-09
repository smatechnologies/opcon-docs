# SMALogEvent

With the SAM installation, SMA Technologies provides a program SMALogEvent to write messages to the Windows event
log from a command line. Several OpCon
programs (e.g., SMAServMan, MSLSAM, etc.) allow configuration of scripts
to run when these programs start, stop, or encounter other triggers.
SMA Technologies recommends using SMALogEvent in these scripts for notification purposes.

SMA Technologies provides a command file to execute the SMALogEvent program. Installed with the SAM-SS, the required
files are in the <Target Directory\>\\OpConxps\\SAM\\ directory.

## Syntax

The command file contains the following syntax:

```shell
<Opconxps path\>SMALogEvent <Source\>, <Severity\>, <Message\>
```

### Parameters

The following describes the command file parameters:

**<OpConxps path\>**: The path to the location of the SMALogEvent
program.

- By default, SMA Technologies places the     SMALogEvent program in the SAM installation directory.
- If spaces exist in the path, enclose the path in double quotation
    marks.

**SMALogEvent**: The name of the program.

**<Source\>**: The value SMALogEvent writes to the Source column in the
Windows Event Log.

**<Severity\>**: The value SMALogEvent writes to the Type column in the
Windows Event Log.

- The value must be **I** (Information), **W** (Warning), or **E**
    (Error).

**<Message\>**: Any message the administrator desires to see in the
Windows Event Log. A third-party notification tool should be able to
identify the message to send an email, page, or network pop-up message.
The log message should be detailed and provide circumstances that
triggered notification.

:::tip
If the SMAServMan calls this command file for any of the definable scripts, there can be several helpful messages.

- For the SyncInitFailureScript setting, the message might be: "The Primary SMAServMan is unable to synchronize with the Secondary SMAServMan."
- For the PrimaryAbnormalShutdown setting, the message might be: "The Secondary SMA Service Manager has begun processing in the OpCon database."
:::

## Renaming the Command File

To prevent a production program from being overwritten by future
OpCon upgrades, SMA Technologies distributes the WriteEvent.cmd file
as Test_WriteEvent.cmd. To remove the characters "Test\_", copy and
rename the file.

:::note
Copying Test\_ WriteEvent.cmd retains a template and also provides a separate customizable file for the production job.
:::

:::note
SMA Technologies recommends creating a separate WriteEvent command file for each trigger for which the SMAServMan can execute a script. To create multiple WriteEvent command files in the SAM directory, choose unique names for each command file.
:::

To rename the command file:

1. Log on to the **SAM application server** as a *Windows user* with
    access to the OpCon installation
    directories.
2. Right-click on **Start** and select **Explore**.
3. Browse to and select the **<Configuration
    Directory\>\\OpConxps\\SAM\\**directory in Explorer's **Folders**
    frame.
4. Right-click on **Test_WriteEvent.cmd** and select **Copy**.
5. Right-click in the **<Configuration Directory\>\\OpConxps\\SAM\\**
    folder and select **Paste**.
6. Right-click on the **Copy of Test_WriteEvent.cmd file** and select
    **Rename**.
7. Delete **Copy of Test\_** from the front of the file name. The
    resulting name should be **WriteEvent.cmd**.
8. Press the **Enter** key.
9. **Close ☒** the **Explorer** window.

## Modifying the Command File

The WriteEvent.cmd file runs the SMALogEvent program to write a message
to the Windows Event Log.

To modify the command file:

1. Log on to the **SAM application server** as a *Windows user* with
    access to the OpCon installation directories.
2. Right-click on **Start** and select **Explore**.
3. Browse to and select the **<Target Directory\>\\OpConxps\\SAM\\**
    directory in Explorer's **Folders** frame.
4. Right-click the **WriteEvent.cmd** file and select **Edit**.
    **Notepad** should open.
5. Modify the path to the SAM directory **"C:\\Program
    Files\\OpConxps\\SAM\\SMALogEvent"** for the *actual path to the
    SAM directory*.
6. Modify the source **SMAServMan** with the *desired source for the
    event*.
7. Modify the severity **W** with the *desired severity for the event*.
8. Modify the message **Msg201: The Secondary SMA Service Manager has
    begun processing in the OpCon database**
    with the *desired message for the event*.
9. Use Menu path: **File \> Save**.
10. **Close ☒** **Notepad**.

:::tip Example
The example command file tells the administrator that SMAServMan has encountered something causing it to execute a script.

Our command file, C:\Program Files\OpConxps\SAM\WriteEvent.cmd, contains the following:

```shell
"C:\Program Files\OpConxps\SAM\SMALogEvent" SecondServMan, I, MSG201
```

:::
