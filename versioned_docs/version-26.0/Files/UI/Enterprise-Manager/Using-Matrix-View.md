# Using Matrix View

The **Matrix** view is used to provide an alternative way to view and to
update job information by way of a grid format.

When on the screen, it displays a calendar showing the days that have
schedules in the Daily tables, a list of schedules for the current day,
and a **Job Matrix** table. The **Job Matrix** table shows all of the
jobs in the selected schedule. In order for the schedule and jobs
information to display in the **Gantt**, **PERT**, **Bar Chart**, **Pie
Chart**, and **Workload Chart** views, you **must** first activate the
**Send the current selection to other views** button on the **Matrix**
toolbar.

The **Listen for selection changes in other views** button must also be
activated in the views that receive the schedule and job information
(e.g., **Gantt**, **PERT**, **Bar Chart**, **Pie Chart**, and **Workload
Chart** views).

## Matrix Toolbar

The **Matrix** view also has a toolbar that allows you to perform
actions in the view. Click on any specific icon on the toolbar below to
learn more about its functionality.

![Matrix toolbar](../../../Resources/Images/EM/EMmatrixtoolbar.png "Matrix toolbar")

## Job Matrix Table

The **Matrix** view contains a table for all jobs that belong to the
selected schedule for a selected day. The **Job Matrix** table provides
the columnar information listed below. The column order can be set to
the user's preference. In order to change the order of a column, click
on the column heading of the column to be moved and drag the column to
the preferred location. Each column value will also be displayed in a
tool tip by hovering over a row.

:::note
If the "Show Job Containers" preference is turned off, the **Job Matrix** table will not show the Container jobs. For more information on this setting, refer to [Setting Preferences from Enterprise Manager](Preferences-from-EM.md).
:::

- **Machine Name**: The name of the OpCon
    machine used by the job in each row of the matrix.
- **Schedule Name**: The name of the OpCon
    schedule in each row of the matrix.
- **Job Name**: The name of the OpCon job
    in each row of the matrix.
- **Department**: The department of the
    OpCon schedule in each row of the matrix.
- **Local Start Time**: The time calculated for the job to start based
    on where the EM is running. This value will only be displayed in the
    tool tip.
- **Server Start Time**: The actual date and time the job started on
    the OpCon Server.
  - When a job has not yet started, the clock icon appears in front
        of the time to indicate that the value is an estimated start
        time.
  - When a job has started, the actual start time appears without
        the clock.
- **Server End Time**: The date and time the job ended.
  - When a job has not ended, the clock icon appears in front of the
        word "Running" to indicate that the job has not ended.
  - When a job has ended, the actual end time appears without the
        clock.
- **Duration**: The amount of time it took the job in each row of the
    matrix to run.
- **Job Status**: The status of the job in each row of the matrix.
- **Priority**: Displays the priority defined for each job.
- **Term Description**: This column contains the termination
    description of the job in each row of the matrix.

## Matrix Right-click Menus

In the **Matrix** view, the right-click menus for schedules and jobs are
the same as those in the **List** view. For more information, refer to
[Operations Right-click Menus](Working-with-Operation.md#Operatio).

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Synchronizing Data between the List and Matrix     Views](Synchronizing-Data-between-List-and-Matrix-Views.md)
- [Creating/Updating Job     Filters](Creating_Updating-Job-Filters-Matrix.md)
- [Changing Focus of Days in     Calendars](Changing-Focus-of-Days-in-Calendars.md)
- [Viewing Schedule and/or Job     information](Viewing-Schedule-or-Job-Info.md)
- [Performing Schedule     Procedures](Performing-Schedule-Procedures-Matrix.md)
- [Performing Job     Procedures](Performing-Job-Procedures-Matrix.md)
