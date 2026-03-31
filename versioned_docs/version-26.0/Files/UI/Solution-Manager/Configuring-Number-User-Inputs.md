---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Configuring Number User Inputs
description: "When configured, the Number User Input displays to users as an input box with validation rules when they run the Service Request."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Configuring Number User Inputs

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

When configured, the Number User Input displays to users as an input box with validation rules when they run the Service Request.

To configure the user input, complete the following steps:

1. Select the specific User Input in the **User Inputs** list on the **Service Request definition** page, or select the blue **Edit** button next to the desired user input

![Edit User Input](../../../Resources/Images/SM/Editing-User-Input.png "Edit User Input")

2. The **Configure User Input** page displays

![Configure User Input Screen](../../../Resources/Images/SM/Setting-Up-User-Inputs_number.png "Configure User Input Screen")

3. Enter the **User Input Caption** to display when users run the Service Request. By default, the Variable name is used
4. Toggle the **Required Variable** switch to require the user to input a value for this field
5. Select **Number** in the **User Input Type** list
6. Select **OK** to confirm, or **Cancel** to discard changes and return to the **Service Request definition** page

#### Specify validation rules using the following options:

* **Minimum**: Specifies the minimum value allowed
* **Maximum**: Specifies the maximum value allowed

:::note
User inputs are limited to the regular integer range of -2147483648 to 2147483647.
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Minimum | Specifies the minimum value allowed | — | — |
| Maximum | Specifies the maximum value allowed | — | — |

## FAQs

**Q: What does configuring number user inputs control?**

Configuring number user inputs defines the settings that determine how OpCon behaves for this feature. Review the available options and set values appropriate for your environment.

**Q: How many steps are required to configure number user inputs?**

The configuration procedure involves 6 steps. Complete all steps in order and select **Save** to apply the changes.

## Glossary

**Service Request**: A Solution Manager feature that lets operators trigger predefined automation workflows using a simple form. Service Requests encapsulate schedule builds, job submissions, or events without requiring direct access to schedule definitions.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
