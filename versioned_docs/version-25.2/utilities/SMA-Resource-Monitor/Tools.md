# SMA Resource Monitor Tools

The SMA Resource Monitor User Interface includes the following tools:

- [Copy](#Copy)
- [Delete](#Delete)
- [Find](#Find)
- [Filter](#Filter6)

## Copy

When the **Copy** button is selected from the main SMA Resource Monitor
User Interface screen, an action pane appears below the menu.

- **From**: Select the monitor or action group to copy.
- **To**: Type the name for the new Monitor or Action Group (maximum
    characters: 60).
- **OK**: Click the **OK** button to copy the monitor or action group.
- **Cancel**: Click the **Cancel** button to cancel the copy action.

## Delete

Click on the gray box to the left of the row for the specific Monitor or
Action Group item to delete. Select the **Delete** button. When the
**Delete** button is clicked, a confirmation message displays:

- If the **Yes** button is selected, the monitor or action group is
    deleted.
- If the **No** button is selected, the screen returns without
    deleting the monitor or action group.

## Find

When the **Find** button is selected from the main SMA Resource Monitor
User Interface screen, an action pane appears below the menu.

- **Name**: Type the Monitor or Action Group name to be found.
- **Whole Words Only**: Indicates if the whole word must be found to
    match the criteria.
  - If selected, the search will only find the whole word as it
        stands alone (e.g., typing 'rule' for the name would only find
        (if it existed) Rule, rule).
  - If not selected, the search will find the name not only if it
        stands alone, but will also find other words that match the same
        order of characters for the name (e.g., typing 'rule' for the
        name would find (if it existed) Rule, rule, Ruler, ruler, Ruled,
        ruled).
- **Case-Sensitive**: Indicates if case-sensitivity should be applied
    to the search.
  - If selected, the search will only find matches for the uppercase
        or lowercase that was typed in the Name text box.
  - If not selected, the search will not match case.
- **Find/Next**: Click the **Find** button to initiate the search.
    After the first search, the button changes to **Next** to find the
    next item.
- **Previous**: Click the **Previous** (Prev) button to find the
    previous match in the table.
- **Done**: Click the **Done** button to finish the search and close
    the Find pane.

## Filter

When the **Filter** button is selected, an action pane appears below the
menu. Depending on the tab selected, the Filter steps contain different
details.

- [Filter File Monitors](#Filter)
- [Filter Counter Monitors](#Filter2)
- [Filter Service Monitors](#Filter3)
- [Filter Process Monitors](#Filter4)
- [Filter Action Groups](#Filter5)

### Filter File Monitors

- **Name Contains**: Type all or part of the file name.
- **File State**: Choose the file state (e.g., Create, Delete,
    SizeChange, AbsoluteSize, Modify, EOFMarker, ScanString, InUse) from
    the drop-down list.
- **Filter**: Click the **Filter** button to apply the filter to the
    selected table. The table will refresh to only display those items
    matching the filter settings.
- **Done**: Click the **Done** button to close the filter pane. The
    table will refresh to show all records.

### Filter Counter Monitors

- **Name Contains**: Type all or part of the counter name.
- **Performance Object**: Choose the Performance Object from the
    drop-down list.
- **Counter Name**: Choose the Counter Name from the drop-down list.
- **Filter**: Click the **Filter** button to apply the filter to the
    selected table. The table will refresh to only display those items
    matching the filter settings.
- **Done**: Click the **Done** button to close the filter pane. The
    table will refresh to show all records.

### Filter Service Monitors

- **Name Contains**: Type all or part of the service name.
- **ServiceState**: Choose the ServiceState (e.g., Started, Not
    Started, Stopped) from the drop-down list.
- **Filter**: Click the **Filter** button to apply the filter to the
    selected table. The table will refresh to only display those items
    matching the filter settings.
- **Done**: Click the **Done** button to close the filter pane. The
    table will refresh to show all records.

### Filter Process Monitors

- **Name Contains**: Type all or part of the process name.
- **ProcessState**: Choose the ProcessState (e.g., Running, Not
    Running) from the drop-down list.
- **Filter**: Click the **Filter** button to apply the filter to the
    selected table. The table will refresh to only display those items
    matching the filter settings.
- **Done**: Click the **Done** button to close the filter pane. The
    table will refresh to show all records.

### Filter Action Groups

- **Name Contains**: Type all or part of the name of the file for the
    filter.
- **Action Contains**: Type information regarding the specific action.
- **Filter**: Click the **Filter** button to apply the filter to the
    selected table. The table will refresh to only display those items
    matching the filter settings.
- **Done**: Click the **Done** button to close the filter pane. The
    table will refresh to show all records.
