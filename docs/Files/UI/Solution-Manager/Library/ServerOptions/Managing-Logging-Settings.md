# Managing Logging Settings
The Logging settings contains log and trace settings for the SAM.

:::note
Only the OpCon administrative users in the **ocadm** role can access the logging options.
:::

## Configuring Logging

To configure Logging Settings, go to **Library** > **Server Options** > click on the **Server Logging** panel.

![A screen showing logging settings under server options](../../../../../Resources/Images/SM/Library/ServerOptions/Logging-Settings.png "Configuring Logging Settings")


### Configuration Options

| Setting | Default Value | Required | Description |
| --- | --- | --- | --- |
| Log Critical messages to NT Events | False | Y | This parameter enables writing of all SAM critical errors to the Application Log in the Microsoft Event Log. To minimize overhead, the SAM does not write critical messages to the Windows event log by default. Valid values are True and False. |
| Log job dependency errors to Critical.log | True | Y | This parameter enables/disables logging job dependency errors to the critical log. Valid values are True and False.If True, the SAM logs all job dependency errors to Critical.log.If False, the SAM stops logging job dependency errors to the Critical.log. When the SAM Message Logging Level is set to Verbose or Debug, the SAM writes job dependency errors to the SAM.log. Refer to SAM Message Logging Level below. |
| Maximum number of days archived logs should be kept | 10 | Y | This parameter sets the maximum number of archive folders (i.e., days) for all log archives including Schedule Manager logs. By default, the SAM deletes archived logs older than 10 days. The SAM archives log files once per day. Valid values range from 0 to 365. CAUTION: This number must be less than the ArchiveDaysToKeep setting in the SMAServMan configuration file. Refer to License Types in the Server Programs online help. |
| SAM Message Logging Level | Terse | Y | This parameter determines the amount of SAM processing information written to the SAM log files. Valid values are Terse, Verbose, and Debug.Terse is the default setting providing only job/schedule start and finish information.Verbose provides additional information regarding machine processing.Debug provides verbose messaging plus more detailed information on SAM processing. |
