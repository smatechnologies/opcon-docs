---
title: Property Expressions API Syntax
description: "The Property Expressions API syntax may contain strings, numbers, operators, functions, and OpCon properties (e.g., Global, Schedule Instance, Job Instance, and Machine Instance properties)."
product_area: Reference
audience: Automation Engineer, Business Analyst
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Business Analyst
  - System Configuration
last_updated: 2026-03-18
doc_type: conceptual
---

# Property Expressions API Syntax

The Property Expressions API syntax may contain strings, numbers, operators, functions, and OpCon properties (e.g., Global, Schedule Instance, Job Instance, and Machine Instance properties). For more information, refer to [Properties](../objects/properties.md).

## Rules

The following rules apply to defining expressions:

- OpCon tokens may be used anywhere in the expression. When the API resolves the token to the value of its property, it always treats it as a string. You do not need to surround it in quotes. For example: `[[My Property]]==[[ABCD 123]]`
- If you type out the string, surround it in double quotes if it contains letters or if it should not be treated as a number. For example: `[[My Property]]=="ABCD 123"`
- If the expression is on a command line or in an Event string, surround the entire expression within the following characters: **\[\[= \]\]**. If the expression is an expression dependency or a job completion complex expression trigger, you do not need to use these characters
- If any property value has leading or trailing spaces when saved to the database, those spaces are not trimmed. They are treated as part of the value
- To convert the value of a property to:
  - an integer, use the `ToInt()` function
  - a long, use the `ToLong()` function
  - a floating point number, use the `ToFloat()` function

## Operand types in expressions

The expression evaluator recognizes three types of operands:

- **Boolean**: Specified by a case-insensitive sequence of the letters `true` or `false`. Examples: `TRUE`, `False`, `TrUe`, `false`
- **Numeric**: Represented by a sequence of numbers, which may include a decimal point. Examples: `783`, `8732.2345`
- **String**: Represented by an unlimited sequence of any printable character enclosed within double quotes. To include a double quote (`"`) or backslash (`\`) in a string, escape it with a backslash. Examples: `"abcd"`, `"abcd\"efgh"`, `"C:\\File\\Test.txt"`, `"-35.354"`

## Operators

The Property Expressions API supports the operators below and applies them in the order of precedence. Use parentheses to change the precedence of any operators.

:::tip Example
`5 + 3 * 6 = 23` because multiplication has higher precedence than addition.

`( 5 + 3 ) * 6 = 48` because the parentheses changed the order of computation.
:::

:::note
For mathematical operations, the result will never exceed 15 digits.
:::

### Operator precedence

1. **^** — **Exponent**. Operates on two numeric operands. Raises the first operand to the power of the second. Example: `5.23 ^ 3.14` returns `25235.9795396592`
2. **%** — **Modulus**. Operates on two integers. Returns the remainder when the first is divided by the second. Example: `25 % 5` returns `0`
3. **/** — **Divide**. Operates on two numeric operands. Divides the first by the second. Example: `60 / 15` returns `4`
4. **\*** — **Multiply**. Operates on two numeric operands. Returns their product. Example: `76 * -234` returns `-17784`
5. **+** — **Add**. Operates on two numeric or two string operands. When numeric, adds the two and returns the result. When operating on strings, returns the concatenated value. Examples: `12 + 15` returns `27` and `"abcd" + "efgh"` returns `"abcdefgh"`
6. **-** — **Subtract**. Operates on two numeric or two string operands. When numeric, subtracts the second operand from the first. When operating on strings, removes all occurrences of the second string from the first. Examples: `12 - 15` returns `-3` and `"abcdefgh" - "cd"` returns `"abefgh"`
7. **>=** — **Greater than or equals**. Returns `true` if the first operand is greater than or equal to the second. Uppercase letters are considered greater than lowercase when all else is equal. Example: `435 >= 435` returns `true`
8. **<=** — **Less than or equals**. Returns `true` if the first operand is less than or equal to the second. Lowercase letters are considered lesser than uppercase when all else is equal. Example: `435 <= 435` returns `true`
9. **>** — **Greater than**. Operates on two numeric or string operands. Returns `true` if the first operand is greater than the second. For strings, a letter that comes later in the alphabet is considered greater. Uppercase letters are considered greater than lowercase when all else is equal. Examples: `435 > 2345` returns `false` and `"ABCD" > "abcd"` returns `true`
10. **<** — **Less than**. Operates on two numeric or string operands. Returns `true` if the first operand is less than the second. For strings, a letter that comes earlier in the alphabet is considered lesser. Lowercase letters are considered lesser than uppercase when all else is equal. Examples: `435 < 2345` returns `true` and `"ABCD" < "abcd"` returns `false`
11. **!=** (or **`<>`**) — **Not equals**. Returns `true` if the two operands are not equal or have different types. Otherwise returns `false`. Both `!=` and `<>` are recognized as the not-equals operator. Examples: `"cats" != "dogs"` returns `true`, `"a" != 1` returns `true`, and `8 <> 4` returns `true`
12. **==** — **Equals**. Returns `true` if the two operands are the same type and the same value. For floating point numbers, returns `true` if the difference between the numbers is less than 0.001% (to prevent false negatives from rounding errors). Examples: `25 == 25` returns `true` and `"abc" == "def"` returns `false`
13. **&&** — **And**. Operates on two boolean operands. Returns `true` if both operands are `true`. Returns `false` if either operand is `false`. Examples: `true && true` returns `true` and `1 == 1 && 1 > 2` returns `false`
14. **||** — **Or**. Operates on two boolean operands. Returns `false` if both operands are `false`. Returns `true` if either operand is `true`. Examples: `true || true` returns `true` and `1 == 1 || 1 > 2` returns `true`
15. **=** — **Assign**. Operates on a property on the left-hand side and any operand on the right-hand side. Stores the value of the operand in the property and saves it to the data store. If the property does not exist, it is created. Example: `[[Token1]]="abcd"` sets the value of `Token1` to `"abcd"`

## Functions

Property expressions support several functions for converting data or performing advanced comparisons. Note the following:

- In all function syntax definitions below, any value can also be a full expression
- If any parameter references an OpCon property that does not exist, the function throws an exception

### AreEqual(value1, value2, ..)

Evaluates a list of two or more values of any type to determine if they are all equal.

:::tip Examples
`AreEqual("abc", "abc", "abc", "abc")` returns **true**.

`AreEqual("abc", "ABC", "Abc", "abc")` returns **false**.

`AreEqual(3 > 2, 6 < 10, 8 <> 4)` returns **true**.
:::

### Expr(value)

Evaluates another expression (`value`), which can be a string, a property name, or an expression that evaluates to a string. The function interprets the value as an expression and returns its evaluated result as a string.

:::tip Examples
`Expr("(5 + 4 * 9 + 9) / 5")` returns **"10"**.

`Expr("Batch" + " " + "automation")` returns **"Batch automation"**.
:::

### Index(value1, value2)

Operates on two string operands. Returns the zero-based index of the first occurrence of the second string within the first string. If no occurrence is found, returns `-1`.

:::tip Examples
`Index("abcdefgh", "ef")` returns **4**.

`Index("abcdef", "gh")` returns **-1**.
:::

### Length(value)

Operates on one string operand. Returns the length of the string.

:::tip Example
`Length("Jobabcdefg")` returns **10**.
:::

### LogToBase(value1, value2)

Calculates a logarithm. The first parameter must be greater than zero and is the number whose log is to be found. The second parameter is the base and cannot be one. Returns the log of the first parameter to the base of the second parameter.

:::tip Examples
`LogToBase(1024, 2)` returns **10**.

`LogToBase(81, 3)` returns **4**.
:::

### Replace(source, search, replacement)

Returns the source string with all occurrences of the search string replaced by the replacement string. All three parameters are strings.

:::tip Example
`Replace("abcdefgh", "c", "x")` returns **"abxdefgh"**.
:::

### ReplaceBackslashes(source, replacement)

Returns the source string with all backslash characters (`\`) replaced by the specified replacement string. Both parameters are strings. Because backslashes cannot be represented as a literal character in expression string arguments, this function is the recommended way to remove or replace backslash characters in a property value.

:::tip Examples
`ReplaceBackslashes("domain\\username", "")` returns **"domainusername"**.

`ReplaceBackslashes("domain\\username", "/")` returns **"domain/username"**.
:::

### SubStr(value, start, length)

Returns a partial string from the expression in parentheses. Accepts three parameters:

1. A string (or property)
2. An integer defining the start index (zero-based)
3. An integer defining the number of characters to include. This parameter is optional. If omitted, all remaining characters starting at the start index are returned

Returns an error if the substring cannot be obtained for any reason.

:::tip Example
`SubStr("abcdefgh", 0, 4)` returns **"abcd"**.
:::

### SubStrNE(value, start, length, default value)

Returns a partial string from the expression in parentheses without throwing an error when the substring cannot be obtained. Accepts four parameters:

1. A string (or property)
2. An integer defining the start position (zero-based)
3. An integer defining the length forward to create the substring. This parameter is optional. If omitted, all remaining characters starting at the start position are returned
4. The default value to return if the substring cannot be obtained

### TimeDiff(time1, time2, format)

Subtracts `time2` from `time1` and returns the difference in the specified format. Both times must be strings in `hh:mm:ss` format. The `format` parameter accepts the following values:

- `signed_percent` — percentage difference between `time1` and `time2`, including the plus (`+`) or minus (`-`) sign (e.g., `+10`)
- `unsigned_percent` — percentage difference between `time1` and `time2`, without the sign (e.g., `10`)
- `signed_secs` — difference in seconds, including the sign (e.g., `-60`)
- `unsigned_secs` — difference in seconds, without the sign (e.g., `60`)
- `signed_string` — difference in `hh:mm:ss` format. A leading `-` is shown for negative differences; positive differences have no sign (e.g., `-02:36:20` or `02:36:20`)
- `unsigned_string` — difference in `hh:mm:ss` format, without the sign (e.g., `02:36:20`)

Returns an error if the time difference cannot be calculated.

### TimeDiffNE(time1, time2, format, default value)

Identical to `TimeDiff` except that it returns the specified default value if an error is encountered.

### ToBool(value)

Accepts a string or boolean parameter. If the parameter is a boolean, returns the boolean. If the parameter is a string, parses it and returns the corresponding boolean value.

:::tip Example
`ToBool(true)` returns **true**.
:::

### ToFloat(value)

Converts the expression in parentheses to a floating point number. If the parameter is numeric, returns it as-is. If the parameter is a string, parses it and returns the corresponding floating point value. Returns an error if the value cannot be converted.

### ToFloatNE(value, default value)

Converts the expression in parentheses to a floating point number. If the parameter is numeric, returns it as-is. If the parameter is a string, parses it and returns the corresponding floating point value. Returns the default value if the conversion fails.

:::tip Example
`ToFloatNE(true, "NAN")` returns **NAN**.
:::

### ToInt(value)

Converts the expression in parentheses to an integer. If the parameter is numeric, returns the integer part. If the parameter is a string, parses it and returns the corresponding integer. Returns an error if the value cannot be converted.

:::tip Example
`ToInt("24.567")` returns **24**.
:::

### ToIntNE(value, default value)

Converts the expression in parentheses to an integer. If the parameter is numeric, returns the integer part. If the parameter is a string, parses it and returns the corresponding integer. Returns the default value if the conversion fails.

:::tip Example
`ToIntNE("true","NAN")` returns **"NAN"**.
:::

### ToLong(value)

Converts the expression in parentheses to a long (64-bit integer). If the parameter is numeric, returns the integer part. If the parameter is a string, parses it and returns the corresponding integer. Returns an error if the value cannot be converted.

### ToLongNE(value, default value)

Converts the expression in parentheses to a long (64-bit integer). If the parameter is numeric, returns the integer part. If the parameter is a string, parses it and returns the corresponding integer. Returns the default value if the conversion fails.

### ToLower(value)

Converts a string value to lowercase.

:::tip Example
`ToLower("ABCD")` returns **"abcd"**.
:::

### ToOaTime(value)

Converts a value in `[[dd:]hh:]mm` format into a floating point fraction of a day for use in arithmetic operations on time. Returns an error if the value cannot be converted.

:::tip Example
`ToOaTime("06:00")` returns **"0.25"**.
:::

### ToStr(value)

Converts the expression in parentheses to a string. Returns an error if the value cannot be converted.

:::tip Example
`ToStr(24.567)` returns **"24.567"**.
:::

### ToStrNE(value, default value)

Converts the expression in parentheses to a string. Returns the default value if the conversion fails.

:::tip Examples
`ToStrNE(24.567,"NAN")` returns **"24.567"**.

`ToStrNE("Test","NAN")` returns **"NAN"**.
:::

### ToUpper(value)

Converts a string value to uppercase.

:::tip Example
`ToUpper("abcd")` returns **"ABCD"**.
:::

## Use cases

This section describes common automation scenarios that you can solve using the Property Expression API.

### A job depends on the string value of a property

In some cases, a job may require that the value of a property matches a specific string. Consider a job that must only process if a Global Property named `Today` matches the current date. Because a date is not a simple number, verify the value as a string. To configure this, enter the following expression in the **Expression Dependency** tab:

`[[Today]]==[[$DATE]]`

:::note
`[[Today]]` must use the same date format as `[[$DATE]]`.
:::

When OpCon finds the result is `true`, the dependency is resolved. If the result is `false`, the job remains in **Wait Expression Dependency** status.

### A job depends on the numeric value of a property

In some cases, a job may require that the value of a property is a specific number. Consider a job that must only process if a Global Property named `BackupServer` has a value of `1`. Because all OpCon properties are stored as strings, use the `ToInt()` function to convert the value to an integer. To configure this, enter the following expression in the **Expression Dependency** tab:

`ToInt([[BackupServer]])==1`

When OpCon finds the result is `true`, the dependency is resolved. If the result is `false`, the job remains in **Wait Expression Dependency** status.

### A job depends on a machine running no jobs

Before running maintenance on a machine, you may want to confirm the machine is idle — that is, running zero jobs. Use the following syntax in an expression dependency:

`ToInt([[MI.$MACHINE RUNNING JOBS.MachineName]]) == 0`

When OpCon finds the result is `true`, the dependency is resolved. If the result is `false`, the job remains in **Wait Expression Dependency** status.

### Trigger events when a job runs short or long

You can trigger events based on the Actual Run Time of a job deviating from the Estimated Run Time. The following scenarios are common:

- The job runs for less than the estimated run time minus a deviation percentage
- The job runs for longer than the estimated run time plus a deviation percentage:
  - Wait until the job finishes, then trigger an event if the job ran long
  - Trigger an event as soon as the job exceeds an acceptable threshold based on the Estimated Run Time plus a percentage

#### Trigger events when a job runs for less time than expected

:::tip Example
In this example, JobB fires an event if JobA runs for less than 60 seconds.

If the schedule date and schedule name are different for JobA and JobB, add the following Job Completion Complex Expression to JobB:

`TimeDiff([[JI.$ACTUAL RUN TIME.<Schedule Date>.<Schedule Name>.JobA]], "00:00:00", "signed_secs") < 60`

Where **Schedule Date** is the schedule date of JobA and **Schedule Name** is the schedule name of JobA.

If the schedule date and schedule name are the same for JobA and JobB, add the following Job Completion Complex Expression to JobB:

`TimeDiff([[JI.$ACTUAL RUN TIME...JobA]], "00:00:00", "signed_secs") < 60`

When OpCon finds that JobA ran for less than 60 seconds, the event trigger fires and sends whatever events you have defined. If the job ran for 60 seconds or more, the events are not triggered.
:::

#### Trigger events as soon as a job's run time exceeds the estimated run time by a user-defined percentage

:::tip Example
In this example, JobB (a Null job) triggers an event if JobA runs longer than 110% of the estimated run time. Both jobs are on the same schedule and date.

Add the following Job Completion Complex Expression to JobA:

`[[JI.$JOB STATUS...JobB]]=="Wait Expression Dependency"`

To trigger the following event:

`$JOB:CANCEL,[[$SCHEDULE DATE]],[[$SCHEDULE NAME]],JobB`

Add the following expression dependency to JobB:

`[[JI.$JOB STATUS...JobA]]=="Job Running" && TimeDiff([[$TIMEhh:mm:ss]], SubStr([[JI.$JOB STARTTIME...JobA]], Index([[JI.$JOB STARTTIME...JobA]], " ") + 1, 8), "signed_secs") > TimeDiff([[JI.$EST RUN TIME...JobA]],"00:00:00", "signed_secs") * 1.1`

Where `$TIMEhh:mm:ss` is a Global Property with the value `hh:mm:ss`.

Add a job status event to JobB to trigger the desired action when JobA exceeds 110% of the estimated run time.

When JobA is running and has not exceeded 110% of the estimated run time, JobB remains in **Wait Expression Dependency** status. When JobA exceeds 110% of the estimated run time, the expression dependency in JobB becomes `true` and JobB runs and triggers an event upon completion. If JobA does not exceed 110% of the estimated run time, it cancels JobB if JobB is still in **Wait Expression Dependency** status.
:::

#### Trigger events after job completion if a job's run time exceeds the estimated run time by a user-defined percentage

Add the following Job Completion Complex Expression to the job along with the event to trigger the action:

`TimeDiff([[$TIMEhh:mm:ss]], SubStr([[JI.$JOB STARTTIME]], Index([[JI.$JOB STARTTIME]], " ") + 1, 8), "signed_secs") > TimeDiff([[JI.$EST RUN TIME]], "00:00:00", "signed_secs") * 1.1`

Where `$TIMEhh:mm:ss` is a Global Property with the value `hh:mm:ss`.

When OpCon finds that the job ran for more than 110% of the estimated run time, the event trigger fires and sends whatever events you have defined. If the job ran for 110% of the estimated run time or less, the events are not triggered.

### Set the value of a property based on an expression

You can set the value of a property based on an expression that includes other properties and constants. Consider a job that must set the value of a property named `Target` based on subtracting the value of one property from another and dividing by 8. Because all OpCon properties are stored as strings, use `ToInt()` to convert the property values to integers. Configure a `$PROPERTY:SET` event on the job using the following syntax:

`$PROPERTY:SET,Target,[[=(ToInt([[Source1]])-ToInt([[Source2]]))/8]]`

If `Source1` has a value of `85` and `Source2` has a value of `21`, OpCon sets `Target` to `8` (because `(85-21)/8 = 8`).

## Exception handling

**Function throws an exception when a property parameter does not exist** — In all property expression functions, if any parameter references an OpCon property that does not exist in the database, the function throws an exception and expression evaluation fails. Ensure all properties referenced in expressions exist before the expression is evaluated. Use the non-exception variants of functions (for example, `SubStrNE`, `TimeDiffNE`) to return a default value instead of failing when a property or substring cannot be resolved.

**SubStr returns an error when the substring cannot be obtained** — The `SubStr` function returns an error if it cannot extract the requested substring. Use `SubStrNE` instead to return a default value, or verify that the start index and length parameters are within the bounds of the source string.

**TimeDiff returns an error when the time difference cannot be calculated** — The `TimeDiff` function returns an error if it cannot compute the time difference. Use `TimeDiffNE` instead to return a default value, or verify that both time values are in valid `hh:mm:ss` format.

**ToInt, ToFloat, ToLong, ToStr, or ToOaTime fails when the value cannot be converted** — Each conversion function returns an error if the provided value cannot be converted to the target type. Verify that the source property or literal value is in a compatible format before passing it to a conversion function. String values containing non-numeric characters will cause `ToInt`, `ToFloat`, and `ToLong` to fail.

**Expression used on a command line or event string without the `[[= ]]` wrapper fails** — When an expression appears in a command line or event string without being enclosed in `[[= ]]`, it is not evaluated as an expression. Wrap expressions in `[[= ]]` when they appear in command lines or event strings. This wrapper is not required for expression dependencies or job completion complex expression triggers.

## FAQs

**Q: When must you wrap an expression in `[[= ]]`?**

Use `[[= ]]` when the expression appears on a command line or in an Event string. For expression dependencies and job completion complex expression triggers, the `[[= ]]` wrapper is not required.

**Q: How are OpCon token values treated in expressions?**

When the API resolves a token to its property value, it always treats the result as a string. You do not need to surround the token in quotes, but if you type a string literal containing letters, surround it in double quotes to ensure correct comparison.

**Q: How do you use a property value as a number in an expression?**

Use the `ToInt()`, `ToLong()`, or `ToFloat()` conversion functions. For example, `ToInt([[MyProperty]])` converts the string value of the property to an integer for use in arithmetic expressions.

## Glossary

**Null job**: A job type that performs no work on any platform. Null jobs are used to hold dependencies, trigger OpCon events, and keep schedules open after all other jobs complete.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can depend on threshold values, and OpCon events can update threshold values at runtime.

**Global Property (Token)**: A named value stored in the OpCon database, referenced in job definitions and events using `[[PropertyName]]` syntax. Global Properties pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Machine**: A platform defined in the OpCon database on which an agent is installed. OpCon routes job execution requests to machines and receives job completion status in return.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform for US financial institutions. OpCon automates, monitors, and manages batch processing across servers, applications, and platforms.
