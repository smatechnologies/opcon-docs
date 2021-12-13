# Deleting Daily Schedules

Deleting Daily Schedules is the process of deleting Completed or unprocessed schedules from the Daily tables. OpCon does not delete schedules that are In Process or On Hold (and previously released). If there is a need to keep schedules in the Daily tables for longer than a single day, SMA Technologies recommends that no more than two weeks of schedules be kept. The SAM and supporting services perform better when there are fewer days of schedules built.

All schedule delete processing is managed by the SMASchedMan program on the OpCon server. For additional information, refer to [SMASchedMan](../server-programs/request-router.md#smasched) in the **Server Programs** online help.

- If automatic schedule maintenance is configured, the SAM will automatically delete daily schedules. For additional information, refer to [Schedule Maintenance](../objects/schedules.md#schedule-definition).
- If an automatic Schedule Delete process fails, the SAM will process the events on the SMA_SKD_DELETE job. For additional information, refer to [SMA_SKD Jobs on the AdHoc Schedule](../objects/schedules.md#adhoc-schedule).
- Schedule deletions can be automated using:
  - OpCon events (refer to [Schedule-Related Events](../events/types.md#schedule) in the **OpCon Events** online help)
  - The DoBatch utility (refer to [DoBatch](../utilities/Command-line-Utilities/DoBatch.md) in the in the **Utilities** online help)
- Schedule deletions can be requested through the graphical interfaces.
