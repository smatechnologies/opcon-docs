# Accessing Application Logs

The Enterprise Manager application logs are generated while the Enterprise Manager is open and in use. The log files record your activities in the EM. When the you report a problem with the EM through the **[Report Problem](Reporting-Problems.md)** dialog, the log files can automatically be attached to an email.

EM logs are located in the **.enterpriseManager/.metadata/** directory, which is located in your home directory.

:::tip Example
In the case of a Windows XP user, this directory location would be:

C:\Documents and Settings\User\\.enterpriseManager\\.metadata\\.log
:::

The log files are kept small for performance reasons, so once the log file reaches 1,002 KB ,the .log file is saved to a file with the name of .bak_0.log and a new .log file is started. The next saved log file would have the name of .bak_1.log, with the number increasing each time to keep the file name unique.

Each saved log file will have a comment near the beginning of the file which lists the previous log file name along with the creation date and time of the log file. The EM keeps 10 log files only, and these will automatically close and open a new one once the maximum size is reached. Once the EM has reached the maximum of 10 log files, it will continue by overwriting the oldest log file when necessary.
