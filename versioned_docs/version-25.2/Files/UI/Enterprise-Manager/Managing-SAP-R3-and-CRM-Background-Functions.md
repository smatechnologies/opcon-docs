# Managing SAP R/3 and CRM Background Functions

## SAP Login

The first time you attempt to retrieve data from the SAP system, the
User Interface displays an **SAP Login** screen. The **Login** screen
contains the following fields:

- **Machine**: Select the SAP R/3 and CRM LSAM Machine name. For
    information on adding an LSAM Machine to
    OpCon, refer to the [Managing     Machines](Managing-Machines.md).
- **User ID**: Enter a *valid SAP login ID*.
- **Password**: Enter the correct *SAP password* for the User ID.
- **Language**: Enter the *two-character language abbreviation* (e.g.,
    enter EN for English).

To log in to the SAP machine:

1. Double-click on **Machine Status** under the **Operation** topic.
2. Right-click on the preferred **SAP R/3 and CRM machine**.
3. Hover over **SAP Machine** in the right-click menu and click on
    **SAP Jobs**.

## SAP Machine

The **SAP Machine** context menu provides access to SAP background
functions through the **Machine Status** screen. The menu contains the
following options: **Event Driven Automation, SAP Jobs, Interception
Profiles, Intercept SAP Jobs, Background Process Resources, Raise SAP
Events,** and **Event Profiles.**

### Event Driven Automation

The **SAP Event Driven Automation** screen provides a list of triggers
to define for a job.

:::note
An event profile which monitors the SAP events defined in Event Driven Automation must be created and active on the SAP system for Event Driven Automation to work.
:::

- **Add**: Click the **Add** button to create a new trigger.
- **Remove**: Click the **Remove** button to delete a trigger.
- **Edit**: Click the **Edit** button to edit a trigger.
- **Name**: Defines the name of the trigger.
- **SAP Event ID**: Defines the ID for the SAP Event.
- **SAP Event Param**: Defines the parameters set for the SAP Event.
- **OpCon Events**: Indicates the number of OpCon Events defined for
    the trigger.
- **Save**: Click the **Save** button to save the latest changes.

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Managing Event Driven     Automation](Managing-Event-Driven-Automation.md)

### SAP Jobs

The **View SAP Jobs** screen contains search filter criteria to support
copying SAP jobs, editing SAP jobs, and viewing SAP job logs. The
filtering is optional.

**Job Name Criteria**: Enter case-sensitive text matching the name of
the preferred job(s) in the SAP system. If unsure of the whole job name,
use wildcards (\*) to expand the search.

**Search SAP**: Clicking the **Search SAP** button retrieves all job
names matching the search criteria and populates the SAP Jobs grid.

**Filter by Create Date or Event ID**: Use one of the two following
options:

- **Date**: Enter a *date range* to search for the job.
- **Event ID**: Enter an *Event ID* associated with the job.

**Filter by Job Status**: Select the checkbox by each job status to
include in the data grid. Available job statuses are:

- Scheduled
- Ready
- Finished
- Released
- Active
- Canceled

**SAP Jobs**: Below the job status checkboxes, a table contains the
search results in the following columns: **Job Name**, **Job Number**,
**Status**.

**Job Log**: Click the **Job Log** button to view the selected job's
SAP job log information.

**Edit Job**: Click the **Edit** Job button to modify the job on the SAP
system.

**Copy Job**: Click the **Copy** Job button to create a duplicate job on
the SAP system.

**SAP Global Actions Shortcuts**:

- [BP Resources](#Backgrou)
- [Intercept Jobs](#Intercep)
- [Interception Profiles](#Intercep2)
- [Raise Event](#Raise)

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Copying SAP Jobs](Copying-SAP-Jobs.md)
- [Editing SAP Jobs](Editing-SAP-Jobs.md)
- [Viewing SAP Job Logs](Viewing-SAP-Job-Logs.md)

### Interception Profiles

The **SAP Interception Profiles** screen contains a list of SAP profiles
from SAP that are set for job interception and allows the user to create
additional profiles for interception.

- **Create**: Click the **Create** button to create a profile for
    interception.
- **Edit**: Click the **Edit** button to edit a profile for
    interception.
- **Activate**: Click the **Activate** button to activate a profile
    for interception.
- **Deactivate**: Click the **Deactivate** button to deactivate a
    profile for interception.
- **Delete**: Click the **Delete** button to delete a profile for
    interception.
- **Profile ID**: Defines the ID assigned to the profile.
- **Description**: Defines the description for the profile for
    interception.
- **State**: Defines whether the profile is activated or deactivated.
    An X indicates the profile is active.
- **Author**: Defines the User ID that created the profile for
    interception.
- **Refresh**: Click the **Refresh** button to refresh the page.

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Managing Interception     Profiles](Managing-Interception-Profiles.md)

### Intercept SAP Jobs

The **View Intercepted SAP Jobs** screen contains a list of numbers for
all intercepted SAP jobs. Below is a brief explanation of the screen.

:::note
Click on the specific column header to sort in ascending or descending order.
:::

- **Job Name**: Contains the intercepted SAP job names.
- **Job Number**: Contains the intercepted SAP job numbers.
- **Childs**: Indicates the number of child jobs.
- **Parent Child**: Identifies the job as a Child (C) or Parent (P).
- **Parent Count**: If the job is a Child, contains the intercepted
    job's SAP parent job number.
- **Parent Name**: If the job is a Child, contains the intercepted
    job's SAP parent job name.
- **Intercepted Date**: Date the job was intercepted.
- **Intercepted Time**: Time the job was intercepted.
- **Start ASAP**: Click the **Start ASAP** button to enable the
    selected SAP job to start as soon as there is a background process
    available.
- **Refresh**: Click the **Refresh** button to retrieve an updated
    list of intercepted jobs.

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Starting Intercepted Jobs     ASAP](Starting-Intercepted-Jobs-ASAP.md)

### Background Process Resources

The **Background Process Resources** screen contains information
regarding the availability of SAP background processes.

- **Query SAP**: Click the **Query SAP** button to retrieve an updated
    status of background process resource availability.
- **Application Server Name**: Contains the application server names
    that have designated background processes for SAP job processing.
- **Host**: Contains the host servers supporting the SAP application.
- **Total Processes**: Contains the number of total background
    processes assigned for background job processing.
- **Free Processes**: Contains the number of background processes
    available (e.g., not busy) to run jobs.

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Monitoring SAP R/3 and CRM Background Process     Resources](Monitoring-SAP-R3-and-CRM-Background-Process-Resources.md)

### Raise SAP Events

The **Raise SAP Events** screen contains the fields to send an SAP event
to satisfy an SAP job event requirement.

- **SAP Event Id**: Enter the text event to trigger the preferred SAP
    job(s). One event triggers all SAP jobs waiting for that same event.
- **Parameters**: (Optional) Enter any required parameters for the
    event.
- **Send**: Click the **Send** button to send the event to the SAP
    system.

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Raising Events](Raising-Events.md)

### Event Profiles

The **SAP Event History Profiles** screen defines the profile that will
be used to match against any event happening on the SAP System. The
Event History profile lets you configure what type of SAP events
occurring on the SAP system should be monitored.

- **Create**: Click the **Create** button to create a profile for
    monitoring SAP event history.
- **Edit**: Click the **Edit** button to edit a profile for monitoring
    SAP event history.
- **Activate**: Click the **Activate** button to activate a profile
    for monitoring SAP event history.
- **Deactivate**: Click the **Deactivate** button to deactivate a
    profile for monitoring SAP event history.
- **Delete**: Click the **Delete** button to delete a profile for
    monitoring SAP event history.
- **Profile ID**: Defines the ID assigned to the profile.
- **Description**: Contains the description for the profile for
    monitoring SAP event history.
- **State**: Defines whether the profile is activated or deactivated.
    An X indicates the profile is active.
- **Author**: Defines the User ID that created of the profile for
    monitoring SAP event history.
- **Refresh**: Click the **Refresh** button to refresh the page.

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Managing Event Profiles](Managing-Event-Profiles.md)
