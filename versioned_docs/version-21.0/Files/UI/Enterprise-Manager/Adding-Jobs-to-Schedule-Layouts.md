# Adding Jobs to Schedule Layouts

To add a job to the schedule layout:

Double-click on **Workflow Designer** under the **Administration**
topic.

Select a **schedule** in the **Select Schedule** tree view or expand a
**schedule** to refer to its SubSchedule(s). Use the **filter** text box
to filter to a specific **schedule** or **SubSchedule**.

Click, drag, and drop the **Add Job** icon in the **Tools** frame to the
schedule diagram.

Enter the *job information*.

Click ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon")
**Save** on the **Job Master** toolbar.

Click **Close ☒** (to the right of the **Job Master** tab) to close the
**Job Master** screen.

## Add a Job Dependency

:::note
If you do not have the privileges to "Modify Jobs in Job Master" in at least one department or "All Administration Functions" or "All Functions," the **Add Dependency** tool is disabled.
:::

Establish the dependency link by following either of the two procedures:

a.  Clicking **Add Dependency** in the **Tools** frame.
b.  Clicking on the **job** that is the object of the dependency.
c.  Clicking on the **job** in which to create the dependency.
d.  Proceeding to Step 8.

OR

a.  Clicking **Select**.
b.  Pressing the **Ctrl** key then clicking on the **job** that is the
    object of the dependency.
c.  Dragging the line for the link across to the **job** in which to
    create the dependency.
d.  Proceeding to Step 8.

In the Add Dependency dialog:

Select the **Instance Name** for the Predecessor Job.

:::note
The Instance Name drop-down will only be available for Multi-Instance Schedules.
:::

Select the preferred **Dependency Type** radio button.

Select the preferred **Dependency Options**.

Select the **Frequency** for the Successor Job.

Click the **OK** button to save the added job dependency.

:::note
The dependencies will be displayed linking the respective jobs. The dependencies appear in different colors and styles depending on the type of dependency (e.g., Requires, After, Excludes or Conflict. Refer to [[Workflow Designer Dependency Lines](Workflow-Designer-Dependency-Lines.md).
:::

## Edit a Job

Click **Select** in the **Tools** frame.

Right-click the **job** whose job details need to be changed.

Click **Edit**.

Enter the *job information changes*.

Click ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon")
**Save** on the **Job Master** toolbar.

Click **Close ☒** (to the right of the **Job Master** tab) to close the
**Job Master** screen.

## Edit a Job Dependency

Right-click the **Job dependency** link (line) whose details need to be
changed.

:::note
When clicking on the job dependency link line, the line should thicken and become bold.
:::

Click **Edit**. The **Edit Dependency** dialog displays.

Select the **Instance Name** for the Predecessor Job.

:::note
The Instance Name drop-down will only be available for Multi-Instance Schedules.
:::

Select the preferred **Dependency Type** radio button.

Select the preferred **Dependency Options**.

Select the **Frequency** for the Successor Job.

Click the **OK** button to save the job dependency change(s).

## Delete a Job

:::note
If you do not have the privileges to "Delete Jobs in Job Master" in at least one department or "All Administration Functions" or "All Functions," the **Delete** option is disabled.
:::

Click **Select** in the **Tools** frame.

Right-click the **job** to delete.

Click **Delete**.

Click the **Yes** button to confirm the deletion or click the **No**
button to cancel the deletion.

## Delete a Dependency

:::note
If you do not have the privileges to "Modify Jobs in Job Master" in at least one department or "All Administration Functions" or "All Functions," the **Delete** option is disabled.
:::

Click **Select** in the **Tools** frame.

Right-click the **Dependency** link (line) to delete.

:::note
When clicking on the dependency link line, the line should thicken and become bold.
:::

Click **Delete**.

Click the **Yes** button to confirm the deletion or click the **No**
button to cancel the deletion.

Click **Close ☒** (to the right of the **Workflow Designer** tab) to
close the **Workflow Designer** screen.
