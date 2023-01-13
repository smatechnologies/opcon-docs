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
between the two modes. The button appears gray and locked (![Master Job Definition Read-only Button](../../../../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Master Job Definition Read-only Button"))
when in **Read-only** mode and appears green and unlocked (![Job Definition Admin Button](../../../../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Job Definition Admin Button"))
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
