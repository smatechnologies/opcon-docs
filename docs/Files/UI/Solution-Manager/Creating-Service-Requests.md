# Creating Service Requests

To create a new service request and its definition:

1. Click the **Create** button.

![Create button](../../../Resources/Images/SM/Creating-Service-Requests.png "Create button")

2. Define the parameters of the button (see below for parameter definitions)
3. Click **Save** when done for the button to be displayed

:::info

The **New Service Request** page will display, as shown in the example graphic.

![New Service Request Screen](../../../Resources/Images/SM/Creating-Service-Requests_2.png "New Service Request Screen")

:::

* **Name** ```(Required)```
  * The name to display on the Service Request button
* **Documentation** ```(Optional)```
  * Provides instructions about what the Service Request does when users click the button
* **Category** ```(Optional)```
  * Associates the Service Request with a pre-defined Category
:::tip
Refer to the [Creating Categories](Creating-Categories.md) section for instructions on how to create categories.
:::
* **Confirmation Message** ```(Optional)```
  * If toggled on, this options shows the Documentation as part of the confirmation page when the Service Button is clicked
  * The Confirmation Message toggle must be set to ```True``` when an Environmental Variable (User Input) has been defined
* **Custom HTML** ```(Optional)```
  * Allows the customization of HTML code to personalize the Service Request Button display
:::tip
Refer to the [Stylizing Service Request Buttons](Stylizing-Service-Requests.md#_Setting_Up_OpCon) section for more detail.
:::
* **Disable Rule** ```(Optional)```
  * Toggle allows definition of a rule to disable the Service Request Button after the button is clicked on
:::tip
Refer to the [Disabling or Hiding Service Request Buttons](Disabling_Hiding-Service-Requests.md) section for instructions on how to define rules.
:::
* **Hide Rule** ```(Optional)```
  * Toggle allows definition of a rule to hide the Service Request Button after the button is clicked on
:::tip
Refer to the [Disabling or Hiding Service Request Buttons](Disabling_Hiding-Service-Requests.md) section for instructions on how to define rules.
:::
* **Events** ```(Required)```
  * Allows the definition of Events initiated by the Service Request Button
:::tip
Refer to the [Setting up OpCon Events](Setting-up-OpCon-Events.md#_Setting_Up_OpCon) section for more detail.
:::
* **Track Event Executions** ```(Optional)```
  * Toggle on to monitor execution on any job dynamically added as part of the Service Request. 
  * If the Service Request is defined with any $JOB:ADD events, this option will track the added jobs so that users can see if they finished successfully. 
  * If you select this option, the Service Request will be completed only when all added jobs are finished. If a job fails, then the Service Request will fail as well. 
* **Submit Events as OCADM** ```(Optional)```
  * Toggle on if you are in the ocadm role to send OpCon Events as **ocadm**. 
  * If you select this option, events will always proceed without any privilege issues. 
  * If you do not select this option, SAM will check the privileges for the OpCon user who clicks the button before processing the events.
* **User Inputs** ```(Optional)```
  * When variables are defined in OpCon Events, they will automatically be picked up and used as User Inputs
  * Will display when the Service Request button is clicked
  * Users can provide values to replace the variables in OpCon Events
:::tip
Refer to the [Setting up User Inputs](Setting-up-User-Inputs.md#_Setting_Up_User) section for more detail.
:::
* **Show For Role**
  * Allows the User to assign the Service Request to one or more OpCon Roles
  * Only users under the granted Role(s) are able to view and initiate the Service Request
:::tip
Refer to the [Setting up Privileges](Setting-up-Privileges.md#_Setting_Up_Privileges) section for more detail.
:::
