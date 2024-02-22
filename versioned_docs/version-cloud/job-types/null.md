# Null Job Details

The Null job provides a way to generate OpCon events and/or set thresholds without having to run a job.

- Examples of Null job use are:
  - To keep schedules open
  - Initialize thresholds at a specific point in a schedule
  - Send notifications
- Null jobs are set up like any other job, except the '**Job Type**' is set to Null.
- Apart from the fact no job-specific details are associated with it, a Null job is identical to other jobs (i.e., it has at least one frequency and may have dependencies, etc., associated with it).
- A Null job always finishes **OK** as soon as it starts.

# Viewing and Adding Null Job Details

To view, add, or edit a Null job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Viewing Null Job Details

1. To view a null job, go to **Library** > **Master Jobs**.
1. Select a null job in the list.
1. Select **Edit**.
1. Expand the **Task Details** panel to expose its content.

---

## Adding Null Job Details

Create the job and general info as described in [Adding a Job](../../Adding-Master-Jobs.md).

---

### More Information

For conceptual information, refer to [Null Jobs](../../../../../../../job-types/null.md) in
the **Concepts** online help.

# Viewing Null Job Details

Since Null jobs are very specific, you will only be able to view the job
details in **Daily Job Definition**. For more conceptual information,
refer to [Null Job Details](../../../job-types/null.md) in the
**Concepts** online help.

To view job details:

Click on the **Processes** button at the top-right of the **Operations
Summary** page. The **Processes** page will display.

Ensure that both the **Date** and **Schedule** toggle switches are
enabled so that you can make your date and schedule selection,
respectively. Each switch will appear green when enabled.

![Schedule Status Updates Date & Schedule Toggle Switches Enabled](../Resources/Images/SM/Schedule-Status-Update_Date&ScheduleToggles.png "Schedule Status Updates Date & Schedule Toggle Switches Enabled")

Select the desired **date(s)** to display the associated schedule(s).

Select one or more **schedule(s)** in the list.

Select one **Null job** in the list. A record of your selection will
display in the [status bar](SM-UI-Layout.md#Status) at the bottom
of the page in the form of a breadcrumb trail.

![Job Processes](../Resources/Images/SM/Job-ProcessesNull.png "Job Processes")

Click on the job record (e.g., 1 job(s)) in the status bar to display
the **Selection** panel.

:::note
As an alternative, you can right-click on the job selected in the list to display the **Selection** panel.
:::

![Job Summary Tab for Null Jobs](../Resources/Images/SM/Job-Summary-Tab-(Null).png "Job Summary Tab for Null Jobs")

Click the **Daily Job Definition** button ![Daily Job Definition Button](../Resources/Images/SM/Daily-Job-Definition-Button.png "Daily Job Definition Button")
at the top-left corner of the panel to access the **Daily Job
Definition** page. By default, this page will be in **Read-only** mode.

Expand the **Task Details** panel to expose its content. For Null jobs,
the following read-only detail is displayed:

- **Type**: The job type.
