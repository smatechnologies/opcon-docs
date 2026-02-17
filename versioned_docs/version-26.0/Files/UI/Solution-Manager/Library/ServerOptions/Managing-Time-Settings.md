# Managing Time Settings

## Required Privileges

In order to configure the **Time** setting, you must have one of the following:

- **Role**: Role_ocadm.
- **Function Privilege**: Maintian server options.

---

## Configuring Time

To configure Times Settings, go to **Library** > **Server Options** > click on the **TIME** tab.

![A screen showing time settings under server options](../../../../../Resources/Images/SM/Library/ServerOptions/Time-Settings.png "Configuring Time Settings")

\*_The table below shows default values for each settings. If user changes the default value of a setting, ![An user icon representing value changed by user](../../../../../Resources/Images/SM/Library/ServerOptions/Logging-User-Defined.png "User defined icon") icon will show next to the field._

### Configuration Options

The Time settings tab configures intervals that SAM will poll on statuses.

| Setting                                               | Default | Range   | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| ----------------------------------------------------- | ------- | ------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Hour of each day SAM should detect Schedules to build | 0       | 0-23    | By default, at midnight the SAM detects schedules to build. The hours are based on a 24-hour format starting from 0 (midnight) to 23 (11 p.m.). The SAM only processes the builds once per day. If this hour changes after the build process, SAM does not consider this parameter until the next day. Set specific times for individual schedules to build on the schedule definitions. For more information, refer to Schedule Maintenance. Note: To enable notification for failed schedule build processes, define OpCon events on the SMA_SKD_BUILD job on the AdHoc schedule. |
| Minutes between checking running jobs                 | 5       | 1-1440  | This parameter determines the maximum time period for the SAM to wait before inquiring about job status.                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Seconds SAM should wait between PreRun attempts       | 180     | 0-32000 | This parameter determines the amount of time in seconds between prerun attempts. By default, the SAM re-attempts prerun jobs every 180 seconds (3 minutes) until the job succeeds.                                                                                                                                                                                                                                                                                                                                                                                                  |
