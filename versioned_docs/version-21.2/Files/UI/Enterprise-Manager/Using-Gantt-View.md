# Using Gantt View

The **Gantt** view displays the estimated length and chronological order
of jobs by schedule. For the display to be accurate, the average run
time of jobs must be calculated frequently by the **SMA_JOBAVG**
utility. Refer to [SMA Job Average](../../../objects/schedules.md#smautility-schedule) in
the **Concepts** online help. There are a few preferences relating to
the **Gantt** view that can be changed according to your preference. For
additional information on changing these preferences, refer to [Setting Preferences for Gantt](Preferences-for-Gantt.md).

When on the **Gantt** screen displays schedule dates and all of the jobs
(in start time order) on all schedules for a selected day. If job
dependencies exist, lines connect the dependent jobs. In order for the
schedule and jobs information to display in the **Gantt** view, you
**must** first activate the **Listen for selection changes in other
views** button on the **Gantt** toolbar.

The **Send the current selection to other views** button must also be
activated in another view (e.g., **Daily list** and/or **Matrix**).

:::note
The **Gantt** screen will only display first-level schedule jobs. This means that the individual jobs on a subschedule will not be displayed although the Container job will be shown.
:::

## Gantt View Toolbar

The **Gantt** view also has a toolbar that allows you to perform actions
in the view. Click on any specific icon on the toolbar below to learn
more about its functionality.

![Gantt View toolbar](../../../Resources/Images/EM/EMgantttoolbar.png "Gantt View toolbar")

## Gantt View Right-click Menu

Right-clicking in the **Gantt** view will show the following menu items:

- **Zoom in**: Selecting this menu item will change the display by
    allowing more time to be allocated to each time column. Therefore
    showing less time on the entire screen.
- **Zoom out**: Selecting this menu item will change the display by
    allowing more time to be allocated to the entire screen display.
    Continuing to zoom out will eventually change the time allocation
    per column from hours to days.
- **Find Job**: Selecting this menu item will open the **Find a Job**
    dialog. The jobs from the currently displayed schedule will be
    displayed in the **Find a Job** dialog.

Right-clicking on a **Job** icon will show several job-related menu
items. Refer to [Job Right-click Menu](Working-with-Operation.md)
for more detail.

![White "person reading" icon on bluecircular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Using Plan Mode](Using-Plan-Mode.md)
- [Synchronizing Data between List and Gantt     Views](Synchronizing-Data-between-List-and-Gantt-Views.md)
- [Performing Job     Procedures](Performing-Job-Procedures-Gantt.md)
