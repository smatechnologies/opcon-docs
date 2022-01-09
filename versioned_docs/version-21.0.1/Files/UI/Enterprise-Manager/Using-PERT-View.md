# Using PERT View

The **PERT** view provides the best view for the schedule's individual
jobs and the job dependency relationships. There are a few preferences
relating to the **PERT** view that can be changed according to your
preference. For additional information on changing these preferences,
refer to [Preferences for Update Sites](Preferences-for-Update-Sites.md). For information on error
messages displayed for failed jobs, refer to [Operations Machine Messages](../../../reference/Operations-Machine-Messages.md)
 in the **Concepts** online help.

When on the **PERT** screen, it displays the job dependency
relationships and the job's current status in simple schedules. In
order for the schedule and jobs information to display in the **PERT**
view, you **must** first select a schedule within another view (e.g.,
**List** or **Matrix**) and activate the **Listen for selection changes
in other views** button on the **PERT** toolbar.

The **Send the current selection to other views** button must also be
activated in another view (e.g., **Daily List** and/or **Matrix** ). In
order to refer to the changes simultaneously in both views, refer to the
[Synchronizing Data between List and PERT Views](Synchronizing-Data-between-List-and-PERT-Views.md)
procedure.

## PERT View Toolbar

The **PERT** view also has a toolbar that allows you to perform actions
in the view. Click on any specific icon on the toolbar below to learn
more about its functionality.

![PERT View toolbar](../../../Resources/Images/EM/EMperttoolbar.png "PERT View toolbar")

## PERT View Right-click menu

Right-click on one of the jobs displayed in the **PERT** view to display
the following items:

- **Job**: Refer to [Job Right-click     Menu](Working-with-Operation.md#Job).
- **Open SubSchedule**: When a Container job is selected, selecting
    this menu option will change the display to show the jobs in the
    subschedule.
- **Find**: Selecting this menu item will open the **Find a Job**
    dialog.
- **Isolate**: These items relate to the display regarding jobs
    dependencies.
  - **Previous Dependencies**: This menu item displays all preceding
        jobs in a dependent chain.
  - **Subsequent Dependencies**: This menu item displays all
        subsequent jobs in a dependent chain.
  - **Dependency Chain**: This menu item displays an entire
        dependency chain (e.g., is preceding critical path and
        subsequent jobs).
  - **Shortest Path**: This option shows the shortest path among all
        of the dependency chains to the job selected.
- **Layout:** Selecting this menu item opens the sub-menu allowing one
    to change the layout format of the display. The choices are:
  - **Top to Bottom**: Selecting this item will change the display
        to a vertical tree layout.
  - **Left to Right**: Selecting this item will change the display
        to a horizontal tree layout.
- **Zoom In:** Selecting this menu item will change the zoom action
    for the diagram. Options include: 10%, 20%, 30%, 40%, 50%, 60%, 70%,
    80%, 90%, 100%, 150%, and 200%. Each time 'zoom in' is selected
    the display will increase to the next greater percentage available.
- **Zoom Out:** Selecting this menu item will change the zoom action
    for the display. The display will decrease to next lower percentage
    available.
- **Print:** Selecting this menu item opens the **Print** dialog which
    allows one to print the diagram on view.
- **Take Screenshot**: Selecting this menu item will provide the
    function to take a screenshot and save the visible area of the
    current view.

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Creating and Saving Custom     Diagrams](Creating-Custom-Diagrams-PERT.md)
- [Synchronizing Data between List and PERT     Views](Synchronizing-Data-between-List-and-PERT-Views.md)
- [Creating/Updating Job     Filters](Creating_Updating-Job-Filters-PERT.md)
- [Opening Mini Maps](Opening-Mini-Maps.md)
- [Viewing Job Information](Viewing-Job-Info.md)
- [Viewing Job History     Information](Viewing-Job-History-Info.md)
- [Viewing Container Jobs'     SubSchedules](Viewing-Container-Job-SubSchedules.md)
- [Performing Additional Job     Procedures](Performing-Job-Procedures-PERT.md)
