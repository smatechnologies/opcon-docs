# Building Daily Schedules

Building Daily schedules is the process of copying the Master schedules and jobs that qualify for specified dates and putting them into the active Daily processing tables for SAM. SMA Technologies recommends that customers build schedules before the schedule start times to allow time for all dependencies to resolve.

:::note
If building a schedule for a date older than today or for a range of dates with the first date being older than today, OpCon automatically places the schedule On Hold for all included defined dates.
:::

When defining the schedules to build, the user will have the option to:

- Set a range of dates for building.
- Determine if schedules will or will not be overwritten if found in the Daily tables.
  - Existing schedules that are processing cannot be overwritten.
  - If a schedule is set as *Multi-Instance*, the "Overwrite Existing" setting would never apply because each build would create a new instance.
- Set specific property definitions for each schedule instance requested. If enabled, the following information can be supplied:
  :::note
  If specific definitions are not supplied for each schedule instance, OpCon automatically builds all defined instances for the schedule.
  :::
- If the schedule being processed has no defined instances, (refer to [Instance Definition](../job-components/instances.md)), the user can enter property definitions for an instance of a specific schedule in the format:

  ```shell
  PName1=PValue1;PName2=PValue2…
  ```

  For more information, refer to [Properties](../objects/properties.md).
- In graphical interface, if the schedule being processed is configured to build an instance for each machine in a machine group (refer to [Instance Definition](../job-components/instances.md)), the user can select a specific machine from the group.
- In graphical interface, if the schedule being processed has one or more instance definitions with predefined user properties (refer to [Instance Definition](../job-components/instances.md)), the user can enter property definitions for an instance of a specific schedule in the format:
- In graphical interface, if the schedule being processed is associated with one or more named instances (refer to [Instance Definition](../job-components/instances.md)), the user can select a specific named instance then enter property definitions for the named instance in the format:

![Schedule Build Process](../Resources/Images/Concepts/schedulebuildprocess.png "Schedule Build Process")

All schedule build processing is managed by the SMASchedMan program on the OpCon server. For additional information, refer to [SMASchedMan](../server-programs/request-router.md#smasched) in the **Server Programs** online help.

Building Daily schedules can be managed using the following methods:

- If automatic schedule maintenance is configured, the SAM will automatically build Daily schedules. For additional information, refer to [Schedule Maintenance](../objects/schedules.md#schedule-maintenance).
- Schedule builds can also be automated using:
  - OpCon events (refer to [Schedule-Related Events](../events/types.md#schedule) in the **OpCon Events** online help)
  - The DoBatch utility (refer to [DoBatch](../utilities/Command-line-Utilities/DoBatch.md) in the in the **Utilities** online help)
- If an automatic Schedule Build process fails, the SAM will process the events on the SMA_SKD_BUILD job. For additional information, refer to [SMA_SKD Jobs on the AdHoc Schedule](../objects/schedules.md#adhoc-schedule).
- Schedule builds can be requested through the graphical interfaces.
