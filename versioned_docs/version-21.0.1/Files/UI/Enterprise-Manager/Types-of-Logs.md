# Types of Logs

Upon activation, the **Logs** screen will display the current date and
time and the log information details. This section describes the various
types of logs that you may access.

## SAM Log

The **SAM Log** includes all processing information relating to Schedule
and Job starts, Schedule and Job completions, Event processing, etc. The
SAM also writes all configuration information to the log when it starts
up or when it regenerates.

## Critical Log

The **Critical Log** includes all processing errors relating to machine
communication failures, database connection problems, event processing
failures, license expiration notifications, and so forth.

## Netcom Log

The **SMANetCom Log** includes configuration type information relating
to configuration parameters, basic communication information and the
configuration for each LSAM machine. If the default value for a
parameter is changed, the default value will be listed in parentheses
next to the relevant parameter.

## Netcom Trace Log

The SMANetCom will write all processing information into the
**SMANetComTrace.log**. The trace records written to this log will
include detailed TCP/IP messages as well as socket connection errors to
help with any debugging process.

## ServMan Log

The **SMAServMan Log** includes all information relating to the
management of all listed applications.

## ENS Log

The **ENS Log** or the **SMANotifyHandler.log** records all information
relating to notification processing.

## Request Router Log

The **SMARequestRouter Log** includes all information relating to
request routing.

## External File

The External file gives you the opportunity to open a file located on
the server.

**To open an external file:**

1. Expand the **Logs** option(click on the
    ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)**arrow** to
    the left)under the **Information** topic.
2. Double-click on **External File**.
3. Select the **directory** where the external file is located.
4. Enter a *file name* in the **File Name** text box, or select one
    that is displayed in the drop-down list.
5. *(Optional)* Select the **file type** in the **Files
    of type** drop-down list.
6. Click the **Open** button to open the selected file or click the
    **Cancel** button to cancel the open request.
