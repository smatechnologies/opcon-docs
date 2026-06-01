---
title: Defining Named Schedule Instances
description: "How to define named instances for a multi-instance schedule in Enterprise Manager, including instance properties and exception rules."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Defining Named Schedule Instances

A multi-instance schedule can be associated with one or more named instances. Each named instance can carry its own schedule instance properties and exception rules that modify job fields at build time.

For conceptual background, refer to [Named Schedule Instances](../../../automation-concepts/named-schedule-instances.md) in the **Concepts** online help.

## Define a Named Instance

To define a named instance for a multi-instance schedule, complete the following steps:

1. Select **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays.
2. Select the schedule in the **Schedule Selection** list.
3. Select the **Schedule** tab in the **Schedule Details** frame.
4. Select the **Multi-Instance** option in the **Schedule Properties** frame.
5. Select the **Instance Definition** tab in the **Schedule Details** frame.
6. Select the **Named Instance** option.
7. Select **Add** in the **Instances** frame. The **Select Instance** dialog displays.
8. Do one of the following:
   - Select the add button next to the **Instance** field, enter the instance name in the **Instance Name** field, then select **OK** to create and assign a new instance.
   - Select an existing instance name from the **Instance** list.
9. Select **OK** to confirm the selection, or **Cancel** to cancel.

**Result:** The instance name appears in the **Instances** list and the **Instance Details** frame becomes active.

## Define Instance Properties

To associate properties with the selected named instance, complete the following steps:

1. Select the instance in the **Instances** list.
2. Select the **Properties** tab in the **Instance Details** frame.
3. Enter a property name in the **Property Name** field.
4. Enter a property value in the **Property Value** field.
5. Select **Add**.

:::note
Property names cannot contain the characters `= ' ( ) \ , |` or end with a space. Duplicate property names within the same instance are not allowed.
:::

## Define Exception Rules

Exception rules override specific job field values for all jobs matching a pattern when the schedule is built.

:::note
Only users in the `ocadm` role can define exception rules.
:::

To define exception rules for a named instance, complete the following steps:

1. Select the instance in the **Instances** list.
2. Select the **Exceptions** tab in the **Instance Details** frame.
3. Select **Add** in the **Job Patterns** frame. The **Job Pattern** dialog displays.
4. Enter the job pattern. Wildcards (`*`) are supported.

   :::note
   The exception rules apply to all jobs whose names match the specified pattern. Using `*` alone applies exception rules to all jobs in the schedule.
   :::

5. Select **OK** to save the job pattern, or **Cancel** to cancel.
6. Select **Add** in the **Exception Rules** frame. The **Add Exception Rule** dialog displays.

   :::note
   For fields that support tokens, press **Ctrl+T** to open the **Global Property Selector** and access global properties and named instance properties. You can also type a token manually. For more information, refer to [Tokens](../../../objects/using-properties.md#tokens) in the **Concepts** online help.
   :::

7. In the **Job Field** list, select the job field to modify.

   :::note
   Some job fields do not allow exceptions and are handled at schedule build time.
   :::

8. In the **To Replace** field, enter the existing string to replace, or leave it blank to replace the entire field value.

   :::note
   Steps 8–10 apply to all predefined job fields except **Job Build Status**. For **Job Build Status**, select one of the following values from the **New Value** list, then skip to step 11:

   - `Cancelled`
   - `Disable Build`
   - `On Hold`
   - `Released`
   - `To Be Skipped`
   :::

   When defining the **To Replace** value:

   - The value may be an empty string (`""`), a fixed string (`"abc"`), or a string containing instance properties (`[[$this.Property]]`).
   - The value may not be a property expression.
   - `[[@name]]` refers to the current instance name (case-sensitive).
   - `[[@current]]` refers to the current value of the job field (case-sensitive).
   - `$this` is a case-sensitive placeholder for the instance property named in the instance definition.

9. In the **New Value** field, enter the replacement value.

   The replacement value may be:

   - A fixed string (`"abc"`)
   - A string containing instance properties (`[[$this.Property]]`)
   - A property expression (`[[@current]] + ToOaTime("02:00")`)

10. Select the **Is Expression** option if the new value is a property expression.
11. Select **OK** to save the exception rule, or **Cancel** to cancel.
12. Repeat steps 3–11 to define additional job patterns and exception rules.

**Result:** The exception rules are saved and will be applied to matching jobs when the schedule is built.

### Exception rule examples

The following examples show common exception rule configurations.

**Example 1: Add an argument to a command line**

| Field | Value |
|---|---|
| **Job Field** | (Windows) Command Line |
| **To Replace** | `C:\MyFolder\MyApp.exe -arg1 firstArg -arg2 secondArg` |
| **New Value** | `C:\MyFolder\MyApp.exe -arg1 firstArg -arg2 secondArg -arg3 thirdArg` |
| **Is Expression** | No |

**Example 2: Change the primary machine using an instance property**

| Field | Value |
|---|---|
| **Job Field** | Primary Machine |
| **To Replace** | `MyMachine` |
| **New Value** | `My[[$this.Property]]Machine` |
| **Is Expression** | No |

**Example 3: Append the instance name to the current department value**

| Field | Value |
|---|---|
| **Job Field** | Department |
| **To Replace** | *(leave blank)* |
| **New Value** | `[[@current]][[@name]]` |
| **Is Expression** | No |

**Example 4: Add 10 minutes to the current start offset using an expression**

| Field | Value |
|---|---|
| **Job Field** | Start Offset |
| **To Replace** | *(leave blank)* |
| **New Value** | `[[@current]] + ToOaTime("00:10")` |
| **Is Expression** | Yes |

## Save Changes

To save the named instance configuration, complete the following steps:

1. Select ![Green circle with white checkmark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar.
2. Select **Close ☒** to close **Schedule Master**.
