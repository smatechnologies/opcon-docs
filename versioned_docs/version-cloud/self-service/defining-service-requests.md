# Defining Service Requests

## Stylizing Service Request Buttons

You can also stylize the Service Request button using custom HTML.

**To customize the button**:

1. Click the **Edit** button at the top-right corner of the Service Request button. The **Edit Service Request** page displays.
2. Toggle the **Custom Html** switch on. A text field displays for entering the custom HTML code.
3. Enter the following template HTML code:

   ```html
   <div style="background-color: #043A4F;height: 12px;width:200px;border-radius: 3px;border: 2px solid #043A4F;color: white;font-size: 14px;font-weight: bold;padding: 25px">
   <span class="v-icon FontAwesome" style="color: #93D7FA">&#xf0ac</span>
   <span>SERVICE REQUEST NAME</span>
   </div>
   ```

4. Modify the code, as needed. Below are a few recommendations for updating the icon and text on the button.

**To modify the font icon that appears on the button**:

Change the color of the font icon by entering a new HEX color code in the template code, as shown below:

```html
<span class="v-icon FontAwesome" style="color: #93D7FA">&#xf0ac</span> 
```

Change the appearance of the font icon by entering or pasting a new Unicode in the template code, as shown below:

```html
<span class="v-icon FontAwesome" style="color: #93D7FA">&#xf0ac</span>
```

To find the desired Unicode:

1. Go to: <https://fontawesome.com/v4.7.0/icons/>.
2. Select the icon that you wish to include on the button.
3. Copy the Unicode from the icon's details page.

Remove the font icon from the button by commenting out the following line in the template code, as demonstrated below:

```html
<!--<span class="v-icon FontAwesome" style="color: #93D7FA">&#xf0ac</span>-->
```

To modify the text that appears on the button:

Change the `<span>` text in the template code to match the actual Service Request Name, as shown below:

```html
<span>SERVICE REQUEST NAME</span>
```

:::note
If you submit a Service Request using a URL, the URL uses the Service Request Name and not the text displayed by the custom HTML. To avoid confusion, it is recommended that you copy the Service Request Name into the custom HTML `<span>` text area. This way, the actual Service Request Name and the text displayed on the button will match.
:::

The result using the template code:

![Customized Service Request button](../Resources/Images/SM/Stylizing-Service-Request_1.png "Customized Service Request button")

## Disabling or Hiding Service Requests

You can define rules (or OpCon expressions) for disabling or hiding Service Request buttons. A rule can be either of the following:

- A boolean value (true/false)
- A [token](../../../objects/using-properties.md#tokens) whose value resolves to "true" or "false"
- A [complex expression](../reference/property-expressions-syntax.md)

Toggle either switch to on to view a text field that allows a rule to be defined.

:::note
Both the "Disable Rule" and "Hide Rule" are optional. If neither rule is defined, then the Service Request button will be enabled and visible.
:::

:::warning
Evaluation result must resolve to "true" or "false". If the evaluation fails, then the Service Request button will be disabled or hidden (by design).
:::

## Setting up OpCon Events

To add an OpCon event to the Service Request:

Click the green **Add** button below the **Events** label on the **New Service Request** page.

![Events toolbar with Add button](../Resources/Images/SM/Setting-Up-OpCon-Events.png "Events toolbar with Add button")

The **Create New Event** window will display, as shown in the example graphic.

![Create New Event Screen](../Resources/Images/SM/Setting-Up-OpCon-Events_1.png "Create New Event Screen")

Select an OpCon **Event Template** to start defining event details. Once you choose a template, the screen dynamically changes to provide UI assistance for filling out the event details.

:::note
The **Event Template** drop-down contains several Administrative Events for advanced operations. For more information on these type of events, refer to [Administrative Events](../../../events/types.md#Administ) in the **OpCon Events** online help.
:::

Insert *variable(s)* into any part of the Event using the following notation: **${variable}**

- You can use the same variable multiple times in the same Event, as well as in other Events for the same Service Request. If you do this, the variable will appear as only one User Input. This means that the one value the user supplies will be used for every instance of that variable.

- You have the option to use the following system variables specifically in Solution Manager:

  - **${SM.USER.LOGIN}** - Resolves to the Name defined for the OpCon user who clicked the Service Request button.
  - **${SM.USER.NAME}** - Resolves to the Full User Name defined for the OpCon user who clicked the Service Request button.
  - **${SM.USER.EMAIL}** - Resolves to the Email Address defined for the OpCon user who clicked the Service Request button.
  - **${SM.USER.COMMENTS}** - Resolves to the Comments defined for the OpCon user who clicked the Service Request button.

The variable(s) will be resolved before the Event is sent to OpCon.

- A preview of the defined Event displays below the **Event Template** drop-down list, as shown in the example graphic.

Complete the *Event definition*.

*(Optional)* Click the **Manual Edit** button to define an Event manually. **Manual Edit** can also be used to
edit an Event that was defined using the **Event Template** option, as
shown in the example graphic.

![Manual Edit](../Resources/Images/SM/Setting-Up-OpCon-Events_3.png "Manual Edit")

Click the **OK** button to apply your changes and return to the
**Service Request definition** page. You can also select the **Cancel**
button to discard the Event changes.

## Setting up User Inputs

When a Variable has been defined within the
OpCon Event definition, the Variable is then
recognized and available as a User Input. User Input fields will be
shown to users whenever they click the Service Request button.

By default, the system sets a new Variable as User Input of type «Text»
without any validation. This means users will be able to type anything
into the field, and the content of that text field will be placed in the
OpCon Event just before SAM receives it.

To change the order of the User Inputs, use the up/down arrows in the
User Input list. The order shown here is the order the fields will be
displayed to users when they click the Service Request button.

User Inputs Reordering Buttons

![User Inputs](../Resources/Images/SM/Setting-Up-User-Inputs.png "User Inputs with Reordering Options")

### Configuring Choice User Inputs

When configured, the Choice User Input will be displayed to users as a drop-down list of predefined values when they run the Service Request.

To configure the user input:

1. Double-click on the specific User Input in the **User Inputs** list on the **Service Request definition** page or click the blue **Edit** button next to the desired user input to edit.
2. Enter the *User Input Caption* to display when users run the Service Request. By default, the Variable name is used.
3. Toggle the **Required Variable** switch if you want to require the user to input a value for this field.
4. Select **Choice** in the **User Input Type** drop-down list to define that type of input to present when users run the Service Request.
5. Use the **Choice** toolbar options to define and order the set of values that will be presented to users for selection when they run the Service Request.
6. Click the **OK** button to confirm User Input configuration, or click the **Cancel** button to discard changes. This will return you to the **Service Request definition** page.

### Configuring Date User Inputs

When configured, the Date User Input will be displayed to users as a
date picker (calendar) with validation rules when they run the Service
Request.

To configure the user input:

Double-click on the specific User Input in the **User Inputs** list on
the **Service Request definition** page or click the blue **Edit**
button next to the desired user input to edit.

![Edit User Input](../Resources/Images/SM/Editing-User-Input.png "Edit User Input")

The **Configure User Input** page will display.

Enter the *User Input Caption* to display when users run the Service
Request. By default, the Variable name is used.

Toggle the **Required Variable** switch if you want to require the user
to input a value for this field.

Select **Date** in the **User Input Type** drop-down list to define that
type of input to present when users run the Service Request.

![Configure User Input Screen](../Resources/Images/SM/Setting-Up-User-Inputs_date.png "Configure User Input Screen")

Set a date range for the User Input, using the following options:

- **Start Date**: Allows you to specify a start date for the range. If
    configured, users will not be able to specify or enter a date that
    is earlier than the specified start date.
  - **Today**: Optionally, you can use the **Today** toggle switch
        to set the current day as the **Start Date**.
- **End Date**: Allows you to specify an end date for the range. If
    configured, users will not be able to specify or enter a date that
    comes later than the specified end date.
  - **Today**: Optionally, you can use the **Today** toggle switch
        to set the current day as the **End Date**.

Define an output format or select one of the following predefined
formats from the drop-down list:

- YYYY/MM/DD (2020/07/30)
- YYYY-MM-DD (2020-07-30)
- dddd MMMM D YYYY (Thursday July 30 2020)
- ddd MMMM D YYYY (Thu July 30 2020)
- MM/DD/YYYY (07/30/2020)
- M/D/YY (7/30/20)
- MMMM D YYYY (July 30 2020)

:::note
The date pattern format is based on the Javascript Moment format without the support of **yo**, **N**, **NN**, **NNN**, **NNNN**, **NNNNN**, **y**, **yy**, **yyy**, and **yyyy** patterns. For more information on the official date format, refer to <https://momentjs.com/docs/#/displaying/format>.
:::

Click the **OK** button to confirm User Input configuration, or click
the **Cancel** button to discard changes. This will return you to the
**Service Request definition** page.

###  Configuring Master Job User Inputs

When configured, the Master Job User Input will be displayed as a
drop-down list of all Master Jobs on which the logged user has
privileges when he or she runs the Service Request.

To configure the user input:

1.  Double-click on the specific User Input in the **User Inputs** list
    on the **Service Request definition** page or click the blue
    **Edit** button next to the desired user input to edit.
2.  Enter the *User Input Caption* to display when users run the Service
    Request. By default, the Variable name is used.
3.  Toggle the **Required Variable** switch if you want to require the
    user to input a value for this field.
4.  Select **Master Job** in the **User Input Type** drop-down list to
    define that type of input to present when users run the Service
    Request.
5.  Select the **Schedule Name** that will be used the populate the
    drop-down list of Master Jobs.
6.  Click the **OK** button to confirm User Input configuration, or
    click the **Cancel** button to discard changes. This will return you
    to the **Service Request definition** page.

###  Configuring Master Schedule User Inputs

When configured, the Master Schedule User Input will be displayed as a
drop-down list of Master Schedules on which the logged user has
privileges when he or she runs the Service Request.



To configure the user input:



1.  Double-click on the specific User Input in the **User Inputs** list
    on the **Service Request definition** page or click the blue
    **Edit** button next to the desired user input to edit.
2.  Enter the *User Input Caption* to display when users run the Service
    Request. By default, the Variable name is used.
3.  Toggle the **Required Variable** switch if you want to require the
    user to input a value for this field.
4.  Select **Master Schedule** in the **User Input Type** drop-down list
    to define that type of input to present when users run the Service
    Request.
5.  Click the **OK** button to confirm User Input configuration, or
    click the **Cancel** button to discard changes. This will return you
    to the **Service Request definition** page.
:::

### Configuring Number User Inputs

When configured, the Number User Input will be displayed to users as an
input box with validation rules when they run the Service Request.

To configure the user input:

Double-click on the specific User Input in the **User Inputs** list on
the **Service Request definition** page or click the blue **Edit**
button next to the desired user input to edit.

![Edit User Input](../Resources/Images/SM/Editing-User-Input.png "Edit User Input")

The **Configure User Input** page will display.

Enter the *User Input Caption* to display when users run the Service
Request. By default, the Variable name is used.

Toggle the **Required Variable** switch if you want to require the user
to input a value for this field.

Select **Number** in the **User Input Type** drop-down list to define
that type of input to present when users run the Service Request.

![Configure User Input Screen](../Resources/Images/SM/Setting-Up-User-Inputs_number.png "Configure User Input Screen")

Specify the validation rules for the User Input, using the following
options:

- **Minimum**: Allows you to specify the minimum value allowed.
- **Maximum**: Allows you to specify the maximum value allowed.

:::note
User inputs are limited to the regular integer range of -2147483648 to 2147483647.
:::

Click the **OK** button to confirm User Input configuration, or click
the **Cancel** button to discard changes. This will return you to the
**Service Request definition** page.
:::

### Configuring Text Collection User Inputs

When configured, the Text Collection User Input will be displayed to
users as a text box with validation rules when they run the Service
Request.

To configure the user input:

Double-click on the specific User Input in the **User Inputs** list on
the **Service Request definition** page or click the blue **Edit**
button next to the desired user input to edit.

![Edit User Input](../Resources/Images/SM/Editing-User-Input.png "Edit User Input")

The **Configure User Input** page will display.

Enter the *User Input Caption* to display when users run the Service
Request. By default, the Variable name is used.

Toggle the **Required Variable** switch if you want to require the user
to input a value for this field.

Select **Text Collection** in the **User Input Type** drop-down list to
define that type of input to present when users run the Service Request.

![Configure User Input Screen](../Resources/Images/SM/Setting-Up-User-Inputs_text-collection.png "Configure User Input Screen")

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

### Configuring Text User Inputs

When configured, the Text User Input will be displayed to users as a
text box with validation rules when they run the Service Request.

To configure the user input:

Double-click on the specific User Input in the **User Inputs** list on
the **Service Request definition** page or click the blue **Edit**
button next to the desired user input to edit.

![Edit User Input](../Resources/Images/SM/Editing-User-Input.png "Edit User Input")

The **Configure User Input** page will display.

Enter the *User Input Caption* to display when users run the Service
Request. By default, the Variable name is used.

Toggle the **Required Variable** switch if you want to require the user
to input a value for this field.

Select **Text** in the **User Input Type** drop-down list to define that
type of input to present when users run the Service Request.

![Configure User Input Screen](../Resources/Images/SM/Setting-Up-User-Inputs_text.png "Configure User Input Screen")

Specify the validation rules for the User Input, using the following
options:

**Secret**: Allows you to specify that this User Input is a
password/secret field, in which case the value the user enters will be
masked. One such use case would be injecting a password somewhere in the
Events to send to OpCon (e.g., job instance property).

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

Specify how to format the value being injected within the OpCon Event,
using the following output formatting options:

- **Characters to Strip**: Allows you to specify which character(s) to
    remove from the User Input (after it has been validated).
- **Padding**: Allows you to specify the padding direction
    (left/right), the padding length, and the character used to pad.

Click the **OK** button to confirm User Input configuration, or click
the **Cancel** button to discard changes. This will return you to the
**Service Request definition** page.

## Setting up Privileges

The last step is to attribute which OpCon role(s) will be able to see the Service Request buttons and run them from the Service Request page.

- Users in the «ocadm» role have access to all Service Requests, therefore «ocadm» will not appear in the Granted list.
- Non-ocadm users must grant at least one role access to the Service Request.
- You can only view and grant access to your roles.
- If a role that does not belong to you is assigned to one of your Service Requests, the name of the role is displayed as "Unauthorized Role."

Click the **Save** button to save the changes and return to the main page of Self Service.
