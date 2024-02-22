---
lang: en-us
title: Managing Studio
viewport: width=device-width, initial-scale=1.0
---

# Overview

Studio is where Master Schedules are created and managed. The Master Schedules can contain multiple jobs, use the selection bar on the left side of this screen to learn more about the options.

![Managing Studio](../Resources/Images/SM/Studio/Managing-Studio.png "Managing Studio")

:::note
Use the bar on the left side of the screen
:::

Please check back for more content.

# Adding Master Schedules

## Required Privileges

n/a

## Adding a Schedule

To add a Master Schedule, go to **Studio**

Select **Add**. The Create Master Schedule page is displayed:

![Master Schedule Details](../Resources/Images/SM/Studio/MasterSchedules/master-schedule-details.png "Master Schedule Details")


### Adding Schedule Name and Documentation

1. Select a **Schedule Name**. For more information, refer to [Schedules](../../../../../objects/schedules.md) in the **Concepts** online help.

1. _(Optional)_ Enter the **Documentation** details. For more information, refer to [Schedule Details](../../../../../objects/schedules.md#schedule-details) in the **Concepts** online help.


### Adding Schedule Settings

1. _(Optional)_ Select the **Multi Instance** checkbox. 

1. _(Optional)_ Select the **Sub Schedule** checkbox. *Note: Selecting this option will reset and disable all autobuild settings (i.e., auto build and auto delete)*

1. _(Optional)_ Select the **Conflicts with other days** checkbox. 

### Adding Schedule Start Time and Work Days

1. Enter the **Start Offset Hour** 

1. Enter the **Start Offset Minutes** 

1. Select the **Workdays**

### Holiday Calendar Settings

1. _(Optional)_ Select **Additional Holidays**.

1. _(Optional)_ Select the **Use Master Holiday** checkbox.

### Schedule Build and Maintenance

For more information, refer to [Schedule Maintenance](../../../../../objects/schedules.md#schedule-maintenance) in the **Concepts** online help.
*Note: the autobuild checkbox and all autobuild settings (i.e., auto build and auto delete) will reset and become disabled when the sub-schedule checkbox is selected*


1. _(Optional)_ Select the **Auto Build** checkbox. For more information, refer to [Build Settings](../../../../../objects/schedules.md#build-settings) in the **Concepts** online help.

    *Note: Selecting this checkbox will un-disable **Auto Build** settings*

1. Enter the # of **Days in Advance**.

1. Enter the # of **Days to build for**.

1. Enter the **Build Offset Hours**.

1. Enter the **Build Offset Minute**.

1. _(Optional)_ Select the **Overwrite** checkbox.

1. _(Optional)_ Select the **Build on Hold** checkbox.

1. Select **Save** to create the schedule or **Cancel** to cancel the operation.

# Editing Master Schedules

## Required Privileges

n/a

## Editing a Schedule

To edit a Master Schedule, go to **Studio**.

Select a schedule and select **Edit**. The Create Master Schedule page is displayed with form values populated from the selected schedule:

Make edits as needed in the Master Schedule Page and Select **Save** to save changes. Select **Back** to cancel the operation and go back.

# Copying Master Schedules

## Required Privileges

In order to copy a master schedule, you must have at least all of the following privileges:

- **Function Privilege**: User must be in a role
  with at least one of these privileges
     - All Function Privileges 
     - Maintain Schedules

## Copying a Schedule

To copy a schedule, go to **Studio**.

Select a schedule and select **Copy**. 

![Master Schedule Copy Button](../Resources/Images/SM/Studio/MasterSchedules/master-schedule-copy-button.png "Master Schedule Copy Button")

A dialog will open to define *new* **Schedule Name** with options to **Copy Master Jobs** and **Copy Schedule Privileges**.  

![Master Schedule Copy Dialog](../Resources/Images/SM/Studio/MasterSchedules/master-schedule-copy-dialog.png "Master Schedule Copy Dialog")

1. Enter a *new* **Schedule Name**.  

1. Select **Save** to copy the schedule or **Cancel** to cancel the operation.

# Deleting Master Schedules

## Required Privileges

n/a

## Deleting a Schedule

To delete a Master Schedule, or multiple Master Schedule, go to **Studio**.

Select a schedule or schedules and select **Delete**. A confirmation dialog is displayed:

![Master Schedule Delete](../Resources/Images/SM/Studio/MasterSchedules/master-schedule-delete.png "Master Schedule Delete")

Select **Yes** to delete the schedules(s). Select **No** to cancel the operation.
