# Accessing Master Job Definition

As part of the **Library** module, those with the appropriate
privileges can view the master job definition as well as modify job
properties. To make this possible, **Master Job Definition** has the
following two modes:

- **Read-only**: In this mode, you can review the defined properties
  for the selected job. Job properties cannot be edited while in this
  mode.
- **Admin**: In this mode, you can modify the properties, which
  includes reconfiguring platform-specific details, for the selected
  job.

## Required Privileges

In order to view the master job details, you must have at least all of the following privileges:

- **Schedule Privilege**: User must be at least in a role that has
  access to the job's parent schedule.
- **Departmental Function Privilege**: User must be at least in a role
  that has All Function Privileges, Add Jobs To Master Schedules, Modify Jobs In MasterSchedules, All Job Master Functions, or View Jobs In Master Schedules privileges for the
  assigned job's department.
- **Access Code Privilege**: User must be at least in a role that has
  access to the assigned job access code.
- **Department Privilege**: User must be at least in a role that has
  access to the assigned job department or All Departments.
- **Machine / Machine Group Privilege**: User must be at least in a role that has
  access to the assigned job machine or machines in the machine group.

In order to edit the master job details, you must be in the ocadm role
or have at least all of the following privileges:

- **Schedule Privilege**: User must be at least in a role that has
  access to the job's parent schedule.
- **Access Code Privilege**: User must be at least in a role that has
  access to the assigned job access code with **Allow job updates**
  flag set to true.
- **Machine / Machine Group Privilege**: User must be at least in a role that has
  access to the assigned job machine or machines in the machine group.
- **Departmental Function Privilege**: User must be at least in a role
  that has All Function Privileges, or Modify Jobs In MasterSchedules or All Job Master Functions privileges and department privilege.
- **Department Privilege**: User must be at least in a role that has
  access to the assigned job department or All Departments.

## Master Job Definition Access

To access the master job details:

1. To view all master jobs, go to **Library** > **Master Jobs**.
1. Select one **job** in the list.
1. Click the **View** button at the top-left corner of the panel to access the **Master Job Definition** page. By default, this page will be in **Read-only** mode.
1. Click the **Back** button to return to the previous page.
1. Close the **Selection** panel when done.

## Master Job Definition Properties

**Master Job Definition** contains general information about the job as
well as panels that expose the defined properties when expanded. For
those with the appropriate privileges, a **Lock** button will also
appear at the top-right corner of the page that allows you to switch
between the two modes. The button appears gray and locked (![Master Job Definition Read-only Button](../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Master Job Definition Read-only Button"))
when in **Read-only** mode and appears green and unlocked (![Job Definition Admin Button](../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Job Definition Admin Button"))
when in **Admin** mode. The page also has a [menu](#Daily3) for quickly
accessing the panels.

### General Info

For information about the **General Info** section, refer to [Viewing and Updating General Info](Viewing-And-Updating-General-Info.md).

### Master Job Definition Panels

Each expandable panel that is displayed on the **Master Job Definition**
page represents a job property category.

- In **Read-only** mode, a panel is displayed only when properties
  have been defined for the category. These properties can be viewed
  only and not changed while in this mode.
- In **Admin** mode, all available panels are displayed on the page
  and may contain properties that can be modified.

### Master Job Definition Menu

The menu in the left portion of the page allows you to access any of the
master job definition panels quickly. The menu can be collapsed to show
icons and tool tips only. When a menu item is left clicked, the view
automatically scrolls to that particular panel on the page and the panel
is expanded to expose its contents. Right clicking a menu item will
toggle **Full Screen** mode.

# Viewing and Updating General Info

The section at the top of the **Master Job Definition** page displays
general job details which include:

- Schedule Name (read-only)
- Job Name
- Job Type (read-only)
- Department
- Access Code
- Disable Build
- Allow Multi-Instance

Some of the general job properties are read-only, as indicated above,
while others may be updated while in **Admin** mode. Refer to the next
section for instructions on updating these such properties.

## Updating General Information

In **Admin** mode, the job name, department, access code, disable build, and allow multi-instance properties can be updated.

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Jobs** topic.
:::

### Updating Departments

For conceptual information, refer to
[Departments](../../../../../../objects/departments.md) in the
**Concepts** online help.

To perform this procedure:

1. See [Accessing Master Jobs](Accessing-Master-Jobs.md) to navigate to the master job definition page.
1. Select a **department** from the **Department** combo box.
1. Click the **Save** button.

### Updating Access Codes

For conceptual information, refer to [Access Codes](../../../../../../objects/access-codes.md) in the
**Concepts** online help.

To perform this procedure:

1. See [Accessing Master Jobs](Accessing-Master-Jobs.md) to navigate to the master job definition page.
1. Select an **access code** from the **Access Code** combo box.
1. Click the **Save** button.

# Viewing and Updating Documentation

The **Documentation** panel in **Master Job Definition** displays the
documentation relating to the job and frequencies of the job and may
include hyperlinks that are clickable in **Read-only** mode.

- The panel can be placed in **Full Screen** mode by simply clicking
  the icon (![Full Screen Panel Icon     ](../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon"))
  to the far-right side of the panel bar. Escape **Full Screen** mode
  by clicking on the icon again.
- When the panel contains defined properties, a blue circular
  indicator containing a number (![Job Properties     Indicator](../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator"))
  will appear to the right of the panel name to indicate the number of
  properties that have been defined.

## Adding or Updating Documentation

In **Admin** mode, documentation properties can be updated. For
conceptual information, refer to
[Documentation](../../../../../../job-components/documentation.md) in the
**Concepts** online help.

<!-- 1. See [Accessing Master Jobs](Accessing-Master-Jobs.md) to navigate to the master job definition page.
1. Select an **access code** from the **Access Code** combo box.
1. Click the **Save** button. -->

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.

:::

To perform this procedure:

1. See [Accessing Master Jobs](Accessing-Master-Jobs.md) to navigate to the master job definition page.
2. Expand the **Documentation** panel to expose its content.
3. Enter the changes to the **Job** and/or **Frequency** frames.
   Hyperlinks may be included in the documentation information.
4. Click the **Save** button.

# Viewing and Updating Tags

The **Tags** panel in **Master Job Definition** displays the
tags relating to the job and frequencies of the job.

- The panel can be placed in **Full Screen** mode by simply clicking
  the icon (![Full Screen Panel Icon     ](../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon"))
  to the far-right side of the panel bar. Escape **Full Screen** mode
  by clicking on the icon again.
- When the panel contains defined properties, a blue circular
  indicator containing a number (![Job Properties     Indicator](../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator"))
  will appear to the right of the panel name to indicate the number of
  properties that have been defined.

## Adding or Updating Tags

In **Admin** mode, tags can be updated. For
conceptual information, refer to
[Tags](../../../../../../job-components/tags.md) in the
**Concepts** online help.

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.

:::

To perform this procedure:

1. See [Accessing Master Jobs](Accessing-Master-Jobs.md) to navigate to the master job definition page.
2. Expand the **Tags** panel to expose its content.
3. Enter the changes to the **Job** and/or **Frequency** frames.
4. Click the **Save** button.

# Viewing and Updating Frequencies

The **Frequencies** panel in **Master Job Definition** displays the
Frequencies relating to the job.

- The panel can be placed in **Full Screen** mode by simply clicking
  the icon (![Full Screen Panel Icon     ](../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon"))
  to the far-right side of the panel bar. Escape **Full Screen** mode
  by clicking on the icon again.
- When the panel contains defined properties, a blue circular
  indicator containing a number (![Job Properties     Indicator](../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator"))
  will appear to the right of the panel name to indicate the number of
  properties that have been defined.

## Adding or Updating Frequencies

In **Admin** mode, frequencies can be updated. For
conceptual information, refer to
[Frrequency](../../../../../../job-components/frequency.md) in the
**Concepts** online help.

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.
:::

To perform this procedure:

1. See [Accessing Master Jobs](Accessing-Master-Jobs.md) to navigate to the master job definition page.
2. Expand the **Frequency** panel to expose its content.
3. Select a frequency from the **Active** left side list (Note: More than one frequency can be selected for Multi-Forecasting).
   ![Frequency Active List](../Resources/Images/SM/Library/MasterJobs/active-frequencies.png)
4. Click one of the available buttons (![Frequency Buttons](../Resources/Images/SM/Library/MasterJobs/frequency-buttons.png "Frequency Buttons")). Or edit the job specific settings.
5. To remove existing frequencies from the job, select a frequency from the **Active** left side list and click the right arrow button (![Frequency Remove Button](../Resources/Images/SM/Library/MasterJobs/remove-frequency.png)).
6. To add existing frequencies to the job, select a frequency from the **Inactive** right side list and click the left arrow button (![Frequency Assign Button](../Resources/Images/SM/Library/MasterJobs/assign-frequency.png)).
   ![Frequency Inactive List](../Resources/Images/SM/Library/MasterJobs/inactive-frequencies.png)
7. Click the **Save** button.

# Viewing and Updating Events

The **Events** panel in **Master Job Definition** displays the
events relating to the job.

- The panel can be placed in **Full Screen** mode by simply clicking
  the icon (![Full Screen Panel Icon     ](../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon"))
  to the far-right side of the panel bar. Escape **Full Screen** mode
  by clicking on the icon again.
- When the panel contains defined properties, a blue circular
  indicator containing a number (![Job Properties     Indicator](../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator"))
  will appear to the right of the panel name to indicate the number of
  properties that have been defined.

## Adding or Updating Events

In **Admin** mode, events can be updated. For
conceptual information, refer to
[Events](../../../../../../job-components/events.md) in the
**Concepts** online help.

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.

:::

To perform this procedure:

1. See [Accessing Master Jobs](Accessing-Master-Jobs.md) to navigate to the master job definition page.
2. Expand the **Events** panel to expose its content.
3. Enter the changes to the existing **Event** and/or add new **Events** with the green plus icon button.
4. Fill out the event dialog form.
5. Click the **Save** button on the dialog.
6. Click the **Save** button on the Master Job Definition page.

# Viewing and Updating Instance Properties

The **Instance Properties** panel in **Master Job Definition** displays the
Instance Properties relating to the job.

- The panel can be placed in **Full Screen** mode by simply clicking
  the icon (![Full Screen Panel Icon     ](../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon"))
  to the far-right side of the panel bar. Escape **Full Screen** mode
  by clicking on the icon again.
- When the panel contains defined properties, a blue circular
  indicator containing a number (![Job Properties     Indicator](../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator"))
  will appear to the right of the panel name to indicate the number of
  properties that have been defined.

## Adding or Updating Instance Properties

In **Admin** mode, instance properties can be updated.

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.

:::

To perform this procedure:

1. See [Accessing Master Jobs](Accessing-Master-Jobs.md) to navigate to the master job definition page.
2. Expand the **Instance Properties** panel to expose its content.
3. Enter the changes to the existing **Instance Properties** and/or add new **Instance Properties** with the green plus icon button.
4. Fill out the **Name** and **Value** columns.
5. Click the **Save** button.

# Viewing and Updating Job Dependencies

The **Job Dependency** panel in **Master Job Definition** displays the
Job Dependencies relating to the job.

- The panel can be placed in **Full Screen** mode by simply clicking
  the icon (![Full Screen Panel Icon     ](../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon"))
  to the far-right side of the panel bar. Escape **Full Screen** mode
  by clicking on the icon again.
- When the panel contains defined properties, a blue circular
  indicator containing a number (![Job Properties     Indicator](../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator"))
  will appear to the right of the panel name to indicate the number of
  properties that have been defined.

## Adding or Updating Job Dependencies

In **Admin** mode, job dependencies can be updated. For
conceptual information, refer to
[Job Dependencies](../../../../../../job-components/job-dependencies.md) in the
**Concepts** online help.

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.

:::

To perform this procedure:

1. See [Accessing Master Jobs](Accessing-Master-Jobs.md) to navigate to the master job definition page.
2. Expand the **Job Dependency** panel to expose its content.
3. Enter the changes to the existing **Job Dependencies** and/or add new **Job Dependencies** with the green plus icon button.
4. Fill out the job dependency dialog form.
5. Click the **Save** button on the dialog.
6. Click the **Save** button on the Master Job Definition page.

# Viewing and Updating Expression Dependencies

The **Expression Dependency** panel in **Master Job Definition** displays the
expression dependencies relating to the job and frequencies of the job.

- The panel can be placed in **Full Screen** mode by simply clicking
  the icon (![Full Screen Panel Icon     ](../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon"))
  to the far-right side of the panel bar. Escape **Full Screen** mode
  by clicking on the icon again.
- When the panel contains defined properties, a blue circular
  indicator containing a number (![Job Properties     Indicator](../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator"))
  will appear to the right of the panel name to indicate the number of
  properties that have been defined.

## Adding or Updating Expression Dependencies

In **Admin** mode, job dependencies can be updated. For
conceptual information, refer to
[Expression Dependencies](../../../../../../job-components/expression-dependencies.md) in the
**Concepts** online help.

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.

:::

To perform this procedure:

1. See [Accessing Master Jobs](Accessing-Master-Jobs.md) to navigate to the master job definition page.
2. Expand the **Expression Dependency** panel to expose its content.
3. Enter the changes to the **Job** and/or **Frequency** frames.
4. Click the **Save** button.

# Viewing and Updating Threshold Dependencies

The **Threshold Dependency** panel in **Master Job Definition** displays the
Threshold Dependencies relating to the job.

- The panel can be placed in **Full Screen** mode by simply clicking
  the icon (![Full Screen Panel Icon     ](../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon"))
  to the far-right side of the panel bar. Escape **Full Screen** mode
  by clicking on the icon again.
- When the panel contains defined properties, a blue circular
  indicator containing a number (![Job Properties     Indicator](../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator"))
  will appear to the right of the panel name to indicate the number of
  properties that have been defined.

## Adding or Updating Threshold Dependencies

In **Admin** mode, threshold dependencies can be updated. For
conceptual information, refer to
[Threshold/Resource Dependencies](../../../../../../job-components/threshold-resource-dependencies.md) in the
**Concepts** online help.

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.

:::

To perform this procedure:

1. See [Accessing Master Jobs](Accessing-Master-Jobs.md) to navigate to the master job definition page.
2. Expand the **Threshold Dependency** panel to expose its content.
3. Enter the changes to the existing **Threshold Dependencies** and/or add new **Threshold Dependencies** with the green plus icon button.
4. Fill out the threshold dependency dialog form.
5. Click the **Save** button on the dialog.
6. Click the **Save** button on the Master Job Definition page.

# Viewing and Updating Resource Updates

The **Resource Update** panel in **Master Job Definition** displays the
Resource Updates relating to the job.

- The panel can be placed in **Full Screen** mode by simply clicking
  the icon (![Full Screen Panel Icon     ](../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon"))
  to the far-right side of the panel bar. Escape **Full Screen** mode
  by clicking on the icon again.
- When the panel contains defined properties, a blue circular
  indicator containing a number (![Job Properties     Indicator](../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator"))
  will appear to the right of the panel name to indicate the number of
  properties that have been defined.

## Adding or Updating Resource Updates

In **Admin** mode, resource updates can be updated. For
conceptual information, refer to
[Threshold/Resource Updates](../../../../../../job-components/threshold-resource-updates.md) in the
**Concepts** online help.

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.

:::

To perform this procedure:

1. See [Accessing Master Jobs](Accessing-Master-Jobs.md) to navigate to the master job definition page.
2. Expand the **Resource Update** panel to expose its content.
3. Enter the changes to the existing **Resource Updates** and/or add new **Resource Updates** with the green plus icon button.
4. Fill out the resource update dialog form.
5. Click the **Save** button on the dialog.
6. Click the **Save** button on the Master Job Definition page.

# Viewing and Updating Threshold Updates

The **Threshold Update** panel in **Master Job Definition** displays the
Threshold Updates relating to the job.

- The panel can be placed in **Full Screen** mode by simply clicking
  the icon (![Full Screen Panel Icon     ](../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon"))
  to the far-right side of the panel bar. Escape **Full Screen** mode
  by clicking on the icon again.
- When the panel contains defined properties, a blue circular
  indicator containing a number (![Job Properties     Indicator](../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator"))
  will appear to the right of the panel name to indicate the number of
  properties that have been defined.

## Adding or Updating Threshold Updates

In **Admin** mode, threshold updates can be updated. For
conceptual information, refer to
[Threshold/Resource Updates](../../../../../../job-components/threshold-resource-updates.md) in the
**Concepts** online help.

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.

:::

To perform this procedure:

1. See [Accessing Master Jobs](Accessing-Master-Jobs.md) to navigate to the master job definition page.
2. Expand the **Threshold Update** panel to expose its content.
3. Enter the changes to the existing **Threshold Updates** and/or add new **Threshold Updates** with the green plus icon button.
4. Fill out the threshold update dialog form.
5. Click the **Save** button on the dialog.
6. Click the **Save** button on the Master Job Definition page.

# Viewing and Updating Notification Triggers

The **Notification Triggers** panel in **Master Job Definition** displays the
Notification Triggers relating to the job.

- The panel can be placed in **Full Screen** mode by simply clicking
  the icon (![Full Screen Panel Icon     ](../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon"))
  to the far-right side of the panel bar. Escape **Full Screen** mode
  by clicking on the icon again.
- When the panel contains defined properties, a blue circular
  indicator containing a number (![Job Properties     Indicator](../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator"))
  will appear to the right of the panel name to indicate the number of
  properties that have been defined.

## Adding or Updating Notification Triggers

**Notification Triggers** can be modified in the Notification Triggers page.

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.
:::

To perform this procedure:

1. See [Accessing Master Jobs](Accessing-Master-Jobs.md) to navigate to the master job definition page.
2. Expand the **Notification Triggers** panel to expose its content.
3. Click the (![Manage Notification Triggers](../Resources/Images/SM/Library/MasterJobs/manage-notification-triggers.png "Manage Notification Triggers Button")) button. This will navigate you to the Notification Triggers page where you can manage the notification triggers on the job.
