# Defining Named Schedule Instances

A multi-instance schedule may be associated with one or more instance
name(s) and each named schedule instance can then be associated with
schedule instance properties and exceptions. For conceptual information
on named schedule instances and exception rule use cases, refer to
[Named Schedule Instances](../../../automation-concepts/named-schedule-instances.md)
 in the **Concepts** online help.

To define a named schedule instance:

Double-click on **Schedule Master** under the **Administration** topic.
The **Schedule Master** screen displays.

Select the **schedule** in the **Schedule Selection** drop-down list.

Click on the **Schedule** tab in the **Schedule Details** frame.

Select the **Multi-Instance** checkbox in the **Schedule Properties**
frame.

Click on the **Instance Definition** tab in the **Schedule Details**
frame.

Select the **Named Instance** radio button.

Click the **Add** button in the **Instances** frame. The **Select
Instance** dialog displays.

Do the following:

a.  Click the **Add New Schedule Instance**.
b.  Enter the *instance name*.
c.  Click the **OK** button to save new instance name or click the
    **Cancel** button to cancel the operation.

**OR**

Select an existing **instance name** from the **Instance** drop-down
list. Alternatively, you can use the **Find** ((Ctrl+F) magnifying
glass) button to find an instance name.

Click the **OK** button to save or click the **Cancel** button to cancel
the operation.

Define Properties

Associate schedule instance properties.

1. Enter a *property name* in the **Property Name** field
2. Enter an associated *property value* in the **Property Value**
    field.
3. Click the **Add** button.

Define Exceptions

Add exception rules to apply to an associated job pattern. These
exceptions are applied during the schedule build.

:::note
Keep in mind that only those in the ocadm role will be able to define exceptions.
:::

**In the Instance Details frame\>Exceptions tab\>:**

Click the **Add** button in the **Job Patterns** frame. The **Job
Pattern** dialog displays.

Enter the *job pattern* in the field. Wildcards (\*) are supported in
this field.

:::note
Exceptions are applied to all jobs in the schedule instance that match the specified job pattern. If only the asterisk wildcard character (\*) is specified in the pattern, then the exceptions will be applied to all jobs.
:::

Click the **OK** button to save the job pattern definition or click the
**Cancel** button to cancel the job pattern definition.

Click the **Add** button in the **Exception Rules** frame. The **Add
Exception Rule** dialog displays.

:::note
For the fields supporting tokens, use the **Global Property Selector** by pressing the **Ctrl+T** keyboard shortcut to access global properties and named instance properties easily. You may also type a token manually.] [For more information on tokens, refer to [Tokens](../../../objects/using-properties.md#tokens) in the **Concepts** online help].
:::

In the Job Field:

Select the **job field** to modify.

:::note
Fields that do not allow exceptions will be handled during schedule build time.
:::

In the To Replace field:

:::note
Steps 18 - 20 will apply to all predefined job fields, except Job Build Status. For Job Build Status, you need only select one of the following replacement values from the New Value drop-down list:

- Cancelled
- Disable Build
- On Hold
- Release
- To Be Skipped

Then, proceed to Step 21.
:::

Provide the existing string to replace (or leave this blank to replace
everything) in the job field.

When defining the string, bear in mind the following:

- The value may be:
  - an empty string ("")
  - a fixed string ("abc")
  - a string with instance properties (\[\[$this.Property\]\]) -   The value may not be a property expression.
- \[\[\@name\]\] is a case-sensitive token that can be used to     refer to the current instance name.
- \[\[\@current\]\] is a case-sensitive token that can be used     to refer to the current value of the job field.
- $this may be used as a placeholder for the instance property named
    in the instance definition. This placeholder is
    case-sensitive.
In the New Value field:

Provide a replacement value for the string.

When defining the new value, bear in mind the following:

- The value may be:
  - a fixed string ("abc")
  - a string with instance properties (\[\[$this.Property\]\])     -   a property expression (\[\[\@current\]\] + ToOaTime("02:00"))

Click the **Is Expression** checkbox if the new value provided is a
property expression.

:::tip Examples
**Scenario #1**: A command line string value needs to be changed from "C:\MyFolder\MyApp.exe -arg1 firstArg -arg2 secondArg" to "C:\MyFolder\MyApp.exe -arg1 firstArg -arg2 secondArg -arg3 thirdArg". The exception rule definition would be:

**Job Field**: (Windows) Command Line
**To Replace**: C:\MyFolder\MyApp.exe -arg1 firstArg -arg2 secondArg
**New Value**: C:\MyFolder\MyApp.exe -arg1 firstArg -arg2 secondArg -arg3 thirdArg
**Is Expression**: false

**Scenario #2**: The machine needs to be changed from "MyMachine" to "My<Property\>Machine". The exception rule definition would be:

**Job Field**: Primary Machine
**To Replace**: MyMachine
**New Value**: My[[$this.Property]]Machine
**Is Expression**: false

**Scenario #3**: The department needs to be changed from "<CurrentValue\>" to "<CurrentValue\><InstanceName\>". The exception rule definition would be:

**Job Field**: Department
**To Replace**:
**New Value**: [[@current]][[@name]]
**Is Expression**: false

**Scenario #4**: The job start offset needs to be changed from "<CurrentValue\>" by adding 10 minutes to it. In this scenario, the use of an expression is ideal for changing numeric fields. The exception rule definition would be:

**Job Field**: Start Offset
**To Replace**:
**New Value**: [[@current]] + ToOaTime("00:10")
**Is Expression**: true
:::

Click **OK** button to save the exception rule definition or click the
**Cancel** button to cancel exception rule definition.

Repeat Steps 7 - 21 to define additional named instances.

Click ![Green circle with white checkmark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on
the **Schedule Master** toolbar to save the named schedule instance
definition(s).

Click **Close ☒** (to the right of the **Schedule Master** tab) to close
the **Schedule Master** screen.
