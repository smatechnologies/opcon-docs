---
lang: en-us
title: Configuring Text Collection User Inputs
viewport: width=device-width, initial-scale=1.0
---

# Configuring Text Collection User Inputs

When configured, the Text Collection User Input will be displayed to
users as a text box with validation rules when they run the Service
Request.

To configure the user input:

Double-click on the specific User Input in the **User Inputs** list on
the **Service Request definition** page or click the blue **Edit**
button next to the desired user input to edit.

![Edit User Input](../../../Resources/Images/SM/Editing-User-Input.png "Edit User Input")

The **Configure User Input** page will display.

Enter the *User Input Caption* to display when users run the Service
Request. By default, the Variable name is used.

Toggle the **Required Variable** switch if you want to require the user
to input a value for this field.

Select **Text Collection** in the **User Input Type** drop-down list to
define that type of input to present when users run the Service Request.

![Configure User Input Screen](../../../Resources/Images/SM/Setting-Up-User-Inputs_text-collection.png "Configure User Input Screen")

Specify the validation rules for the User Input, using the following
options:

**Restrict Duplicates**: Prevents users from entering the same value
multiple times.

**Delimiter**: Allows you to specify the special character used to
separate the user-defined values when concatenated to a single string
while injected into the OpCon Event for processing by the SAM.

**Minimum Characters**: Allows you to specify a minimum character length
restriction.

**Maximum Characters**: Allows you to specify a maximum character length
restriction.

**Invalid Characters**: Allows you to identify any invalid
\[restricted\] characters.
**Regular Expression**: Allows you to define the following options:

- **Regular Expression Pattern**: Allows you to build a regular
    expression matcher pattern to validate what the user has entered in
    the text field before it is injected.

- **Custom Error Message**: Allows you to define a customized error
    message that will be displayed to users if there is a regular
    expression text validation exception thrown, thus enriching the user
    experience. For example, the following might be a custom error
    message provided to users when they have entered incorrect phone
    number formats: "Please enter a 10-digit phone number with hyphens
    (e.g., 281-446-5000)."

Click the **OK** button to confirm User Input configuration, or click
the **Cancel** button to discard changes. This will return you to the
**Service Request definition** page.
:::
