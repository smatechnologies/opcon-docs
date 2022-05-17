# Property Expressions API Syntax

The Property Expressions API syntax may contain strings, numbers, operators, functions, and OpCon properties (e.g., Global, Schedule Instance, Job Instance, and Machine Instance properties). For more information, refer to [Properties](../objects/properties.md).

## Rules

The following rules apply to defining expressions:

- OpCon tokens may be used anywhere in the expression. When the API resolves the token to the value of its property, it always treats it as a string. This means that you do not need to surround it in quotes. For example: `[[My Property]]==[[ABCD 123]]`
- If you type out the string, surround it in double quotes if it contain letters or if it should not be treated as a number. For example: `[[My Property]]=="ABCD 123"`
- If the expression is on a command line, or in an Event string, then you must surround the entire expression within the following characters: **\[\[= \]\]**. If the expression is an expression dependency, or is a job completion complex expression trigger, then you do not need to use these characters.
- If any property value has leading or trailing spaces when saved to the database, those spaces will NOT be trimmed. They will be treated as part of the value.
- To convert the value of a property to:
  - an integer, use the ToInt() function
  - a long, use the ToLong() function
  - a floating point number, use the ToFloat() function

## Operand Types in Expressions

There are three types of operands recognized by the expression evaluator. The available operands are the following:

- **Boolean**: This type of operand is specified by case-insensitive sequence of the following letters - true, false. Examples: `TRUE, False, TrUe, false`
- **Numeric**: This type of operand is represented by a sequence of numbers, which may include a decimal point. Examples: `783, 8732.2345`
- **String**: This type of operand is represented by an unlimited sequence of any printable character enclosed within double quotes. To include a double quote (") or backslash (\\) in a string, it must be escaped with a backslash. Examples: `"abcd", "abcd\"efgh", "C:\\File\\Test.txt", "-35.354"`

## Operators

The Property Expressions API supports the operators below, and applies them in the order of precedence. Use parenthesis to change the precedence of any operators.

:::tip Example
5 + 3 * 6 = 23 because multiplication has higher precedence than addition.

( 5 + 3 ) * 6 = 48 because the parenthesis changed the order of computation.
:::

:::note
For mathematical operations, the result will never exceed 15 numbers.
:::

### Operator Precedence

1. **^** - **Exponent**. This function operates on two numeric operands. It raises the first operand to the power of the second. Example: `5.23 ^ 3.14` returns `25235.9795396592`.
2. **/** - **Divide**. This function operates on two numeric operands. It divides the first by the second. Example: `60 / 15` returns `4`.
3. **\*** - **Multiply**. This function operates on two numeric operands and returns their product. Example: `76 * -234` returns `-17784`.
4. **%** - **Modulus**. This function operates on two integers and returns the remainder when the first is divided by the second. Example: `25 % 5` returns `0`.
5. **+** - **Add**. This function operates on two numeric or two string operands. When numeric, it adds the two and returns the result, else if operating on strings, it returns the concatenated value of the two strings. Examples: `12 + 15` returns `27` and `"abcd" + "efgh"` returns `"abcdefgh"`.
6. **-** - **Subtract**. This function operates on two numeric or two string operands. When numeric, it subtracts the second operand from the first and returns the result. When operating on strings, it removes all occurrences of the second string from the first. Examples: `12 - 15` returns `-3`and `"abcdefgh" - "cd"` returns `"abefgh"`.
7. **>=** - **Greater than or equals**. This function is similar to "GreaterThan" except that it returns true even if the operands are equal. All else being equal, uppercase letters are considered greater than lowercase ones. Example: `435 >= 435` returns `true`.
8. **<=** - **Less than or equals**. This function is similar to "LessThan" except that it returns true even if the operands are equal. All else being equal, lowercase letters are considered lesser than uppercase ones. Example: `435 <= 435` returns `true`.
9. **>** - **Greater than**. This function operates on two numeric or string operands. It returns true if the first operand is greater than the second. For strings, an alphabet that comes later is considered "greater". All else being equal, uppercase letters are considered greater than lowercase ones. Examples: `435 > 2345` returns `false` and `"ABCD" > "abcd"` returns `true`.
10. **<** - **Less than**. This function operates on two numeric or string operands. It returns true if the first operand is less than the second. For strings, an alphabet that comes before is considered "lesser". All else being equal, lowercase letters are considered lesser than uppercase ones. Examples: `435 < 2345` returns `true` and `"ABCD" < "abcd"` returns `false`.
11. **!=** - **Not equals**. This function returns true if the two operands it operates on are not equal or have different types. Otherwise, it returns false. Examples: `"cats" != "dogs"` returns `true` and `"a" != 1` returns `true`.
12. **==** - **Equals**. This function checks to see if the two operands it acts on are both the same type and the same value. If so, it returns true; otherwise, it returns false. If applied to floating point numbers, the comparison returns true if the difference between the numbers is less than 0.001%. This prevents the function from always returning false due to rounding errors. Examples: `25 == 25` returns `true` and `"abc" == "def"` returns `false`.
13. **&&** - **And**. This function operates on two boolean operands. If both boolean operands are true, the function returns true. If either of the boolean operands is false, the function returns false. Examples: `true && true` returns `true` and `1 == 1 && 1 > 2` returns `false`.
14. **||** - **Or**. This function operates on two boolean operands. If both boolean operands are false, this function returns false. If either of the operands is true, the function returns true. Examples: `true || true` returns `true` and `1 == 1 || 1 > 2` returns `true`.
15. **=** - **Assign**. This function operates on a property on the left-hand side and any operand on the right-hand side. The value of the operand is stored in the property and saved to the data store. If the property does not exist, it is created. Example: `[[Token1]]="abcd"` sets the value of Token1 equal to "abcd".

## Functions

Property expressions support several functions to either convert data or to perform advanced comparisons. It is important to know that:

- In all of the Function Syntax definitions below, any value could also be a full expression.
- If any parameter is a property that does not exist, the function will throw an exception.

### AreEqual(value1, value2, ..)

The AreEqual function is used to evaluate a list of 2 or more values of any type to determine if they are all equal.

:::tip Examples
`AreEqual("abc", "abc", "abc", "abc")` returns **true**.

`AreEqual("abc", "ABC", "Abc", "abc")` returns **false**.

`AreEqual(3 > 2, 6 < 10, 8 <> 4)` returns **true**.
:::

### Expr(value)

The Expr function is used to evaluate another expression (value), which can be either a string or a property name, or an expression that evaluates to a string value. This will be interpreted as an expression and expr() will return its evaluated value as a string.

:::tip Examples
`Expr("(5 + 4 * 9 + 9) / 5")` returns **"10"**.

`Expr("Batch" + " " + "automation")` returns **"Batch automation"**.
:::

### Index(value1, value2)

The Index function operates on two string operands, and it returns the (zero-based) index of the first occurrence of the second string parameter within the first string parameter. If no occurrences are found, it returns -1.

:::tip Examples
`Index("abcdefgh", "ef")` returns **4**.

`Index("abcdef", "gh")` returns **-1**.
:::

### Length(value)

The Length function operates on one string operand, and it returns the length of any string that is passed to it.

:::tip Example
`Length("Jobabcdefg")` returns **10**.
:::

### LogToBase(value1, value2)

The LogToBase function accepts two numeric parameters to calculate a logarithm. The first parameter must be greater than zero and is the number whose log is to be found. The second number is the base and cannot be one. The result is the log of the first parameter to the second parameter as base.

:::tip Examples
`LogToBase(1024, 2)` returns **10**.

`LogToBase(81, 3)` returns **4**.
:::

### Replace(source, search, replacement)

This function returns the source string with the defined replacements made. This function accepts three parameters. All of them are strings. The returned value is the source string with the replacements made.

:::tip Example
`Replace("abcdefgh", "c", "x")` returns **"abxdefgh"**.
:::

### SubStr(value, start, length)

The SubStr function returns a partial string of the expression in parentheses. This function accepts three parameters:

1. A string (or property)
2. An integer defining the start index (zero based)
3. An integer defining the number of characters to include in the substring. This parameter is optional. If it is not specified, then all remaining characters of the string, starting at the first parameter (start), will be returned.

The function returns an error if it cannot get the substring for any reason.

:::tip Example
`SubStr("abcdefgh", 0, 4)` returns **"abcd"**.
:::

### SubStrNE(value, start, length, default value)

The SubStrNE function returns a partial string of the expression in parentheses and does not error when it cannot get the substring. This function accepts four parameters:

1. A string (or property)
2. An integer defining the start position (base 0)
3. An integer defining the length forward to create the substring. This parameter is optional. If it is not specified, then all remaining characters of the string, starting at the first parameter (start), will be returned.
4. The default value to return if it cannot get the substring for any reason.

### TimeDiff(time1, time2, format)

The TimeDiff function subtracts ‘time2’ from 'time1' and returns the difference in the 'format' specified. The two times must be specified as strings in the form of: 'hh:mm:ss'. The 'format' could be any one of the following:

- signed_percent – percentage difference between 'time1 and 'time2' that includes the plus (+) or minus (-) sign (e.g., +10)
- unsigned_percent – percentage difference between 'time1 and 'time2' that does not include the plus (+) or minus (-) sign (e.g., 10)
- signed_secs – difference in seconds between 'time1' and 'time2' that includes the plus (+) or minus (-) sign (e.g., -60)
- unsigned_secs – unsigned difference in seconds between 'time1' and 'time2' that does not include the plus (+) or minus (-) sign (e.g., 60)
- signed_string – signed difference between 'time1' and 'time2' in 'hh:mm:ss' format that includes the plus (+) or minus (-) sign (e.g., +02:36:20)
- unsigned_string – unsigned difference between 'time1' and 'time2' in 'hh:mm:ss' format that does not include the plus (+) or minus (-) sign (e.g., 02:36:20)

The TimeDiff function returns an error if it cannot get the time difference for any reason.

### TimeDiffNE(time1, time2, format, default value)

The TimeDiffNE function is the same as the TimeDiff function except that it returns the default value specified if it encounters an error.

### ToBool(value)

This function accepts a string or a boolean parameter. If the parameter is a boolean, it simply returns the boolean. If the parameter is string, it tries to parse the value and returns the corresponding boolean value.

:::tip Example
`ToBool(true)` returns **true**.
:::

### ToFloat(value)

The ToFloat function converts the expression in parentheses to a floating point number and returns it. If parameter is numeric, it simply returns it. If parameter is string, it tries to parse it and returns the corresponding floating point value. It returns an error if it cannot convert the value.

### ToFloatNE(value, default value)

The ToFloatNE function converts the expression in parentheses to a floating point number and returns it. If a parameter is numeric, it simply returns it. If a parameter is a string, it tries to parse it and returns the corresponding floating point value. If the function cannot convert the value, it will return the default value.

:::tip Example
`ToFloatNE(true, "NAN")` returns **NAN**.
:::

### ToInt(value)

The ToInt function converts the expression in parentheses to an integer. If a parameter is numeric, it returns the integer part of the value. If a parameter is a string, it tries to parse it and returns the corresponding integer part of the value. It returns an error if it cannot convert the value.

:::tip Example
`ToInt("24.567")` returns **24**.
:::

### ToIntNE(value, default value)

The ToIntNE function converts the expression in parentheses to an integer. If a parameter is numeric, it returns the integer part of the value. If a parameter is a string, it tries to parse it and returns the corresponding integer part of the value. If the function cannot convert the expression to an integer, it returns the default value.

:::tip Example
`ToInt("true","NAN")` returns **"NAN"**.
:::

### ToLong(value)

The ToLong function converts the expression in parentheses to a long (64-bit integer). If a parameter is numeric, it returns the integer part of the value. If a parameter is a string, it tries to parse it and returns the corresponding integer part of the value. It returns an error if it cannot convert the value.

### ToLongNE(value, default value)

The ToLongNE function converts the expression in parentheses to a long (64-bit integer). If a parameter is numeric, it returns the integer part of the value. If a parameter is a string, it tries to parse it and returns the corresponding integer part of the value. If the function cannot convert the expression to a long, it returns the default value.

### ToLower(value)

The ToLower function converts a string value to lowercase.

:::tip Example
`ToLower("ABCD")` returns **"abcd"**.
:::

### ToOaTime(value)

The ToOaTime function converts dd:hh:mm format into a floating point fraction of a day so that it can be used in arithmetic operations of time. It returns an error if it cannot convert the value.

:::tip Example
`ToOaTime("06:00")` returns **"0.25"**.
:::

### ToStr(value)

The ToStr function converts the expression in parentheses to a string. It returns an error if it cannot convert the value.

:::tip Example
`ToStr(24.567)` returns **"24.567"**.
:::

### ToStrNE(value, default value)

The ToStrNE function converts the expression in parentheses to a string and returns it. If the function cannot convert the value to a string, it returns the default value.

:::tip Examples
`ToStrNE(24.567,"NAN")` returns **"24.567"**.

`ToStrNE("Test","NAN")` returns **"NAN"**.
:::

### ToUpper(value)

The ToUpper function converts a string value to uppercase.

:::tip Example
`ToUpper("abcd")` returns **"ABCD"**.
:::

## Use Cases

This section describes use cases that can be resolved using the Property Expression API.

### A Job Depends on the String Value of a Property

In some cases, a job may require that the value of a property contains a specific string. For this use case, we have a job that must only process if a Global Property named "Today" matches the current date. We must check for a string value because a date is not a simple number (integer). To set this up, enter the following information under the Expression Dependency tab:

`[[Today]]==[[$DATE]]`

:::note
\[\[Today\]\] must have the same date format as \[\[$DATE\]\].
:::

When OpCon finds the result is true, then the dependency is resolved. If the result is false, the job will remain in a **Wait Expression Dependency** state.

### A Job Depends on the Numeric Value of a Property

In some cases, a job may require that the value of a property contains a specific number (integer). For this use case, we have a job that must only process if the value of a Global Property named "BackupServer" has a value of 1. We must use the ToInt function to convert the value of the property to an integer because all OpCon properties are stored as strings. To set this up, enter the following information under the Expression Dependency tab:

`ToInt([[BackupServer]])==1`

When OpCon finds the result is true, then the dependency is resolved. If the result is false, the job will remain in a **Wait Expression Dependency** state.

### A Job Depends on a Machine Running No Jobs

Before running maintenance on a machine, it may be useful to check to see if the machine is currently idle. In OpCon that means we want to see if the machine is running zero jobs. Use the following syntax in an expression dependency for this use case:

`ToInt([[MI.$MACHINE RUNNING JOBS.MachineName]]) == 0`

When OpCon finds the result is true, then the dependency is resolved. If the result is false, the job will remain in a **Wait Expression Dependency** state.

### Trigger Events when a Job Runs Short or Long

To trigger events based on the Actual Run Time of a job deviating from the Estimated Run Time, there are a number of potential scenarios:

- The job runs for less than the estimated run time minus a deviation percentage.
- The job runs for longer than the estimated run time plus a deviation percentage. Two scenarios exist for this idea:
  - Wait until the job finishes then execute an event if the job ran long.
  - Trigger an event as soon as the job exceeds the 'acceptable threshold', in this case based on a calculated time based on Estimated Run Time plus a percentage.

#### Trigger Events when a Job Runs for Less Time than Expected

For this use case, we want to trigger events if a job runs for less time
than we expect. Let us further examine this use case with an example.

:::tip Example
We want JobB to fire an event if JobA runs less than 60 seconds. To set this up, add one of the triggers provided below to JobB.

If the schedule date and schedule name are different for JobA and JobB, add the following Job Completion Complex Expression to JobB:

`TimeDiff([[JI.$ACTUAL RUN TIME.<Schedule Date>.<Schedule Name>.JobA]], "00:00:00", "signed_secs") < 60`

Where:

**Schedule Date** is the schedule date of JobA and **Schedule Name** is the schedule name of JobA.

If the schedule date and schedule name are the same for JobA and JobB, add the following Job Completion Complex Expression to JobB:

`TimeDiff([[JI.$ACTUAL RUN TIME...JobA]], "00:00:00", "signed_secs") < 60`

When OpCon finds that JobA ran for less than 60 seconds, then the event trigger will fire and send whatever events you have defined. If the job ran for 60 seconds or more, event(s) will not be triggered.
:::

#### Trigger Events as Soon as a Job's Run Time Exceeds the Estimated Run Time by a User-defined Percentage

For this use case, we want to trigger events as soon as a job runs for more time than we expect based on the job's run time being more than the estimated run time by a percentage. Let us further examine this use case with an example.

:::tip Example

We want JobB (Null job) to trigger an event if JobA runs longer than 110% of the estimated run time. Assuming that both jobs are on the same schedule and date, use the information below to set this up.

Add the following Job Completion Complex Expression to JobA:

`[[JI.$JOB STATUS...JobB]]=="Wait Expression Dependency"`

To trigger the following event:

`$JOB:CANCEL,[[$SCHEDULE DATE]],[[$SCHEDULE NAME]],JobB`

Add the following expression dependency to JobB:

`[[JI.$JOB STATUS...JobA]]=="Job Running" && TimeDiff([[$TIMEhh:mm:ss]], SubStr([[JI.$JOB STARTTIME...JobA]], Index([[JI.$JOB STARTTIME...JobA]], " ") + 1, 8), "signed_secs") > TimeDiff([[JI.$EST RUN TIME...JobA]],"00:00:00", "signed_secs") * 1.1`

Where:

$TIMEhh:mm:ss is a Global Property with the value hh:mm:ss.

Add a job status event to JobB to trigger the desired action when JobA exceeds 110% of the estimated run time.

When JobA is running and has not exceeded 110% of the estimated run time, JobB will be in a [Wait Expression Dependency]{.skd-job-statuses} state.  When JobA exceeds 110% of the estimated run time, the expression dependency in JobB will be true and JobB will run and trigger an event upon completion. If JobA does not exceed 110% of the estimated run time, it will cancel JobB, if JobB is still in a **Wait Expression Dependency** state.
:::

#### Trigger Events after Job Completion if a Job's Run Time Exceeds the Estimated Run Time by a User-defined Percentage

For this use case, we want to trigger events if a job runs for more time than we expect based on the job's run time being more than the estimated run time by a percentage. To set this up, add the following Job Completion Complex Expression to the job and the event to trigger the action:

`TimeDiff([[$TIMEhh:mm:ss]], SubStr([[JI.$JOB STARTTIME]], Index([[JI.$JOB STARTTIME]], " ") + 1, 8), "signed_secs") > TimeDiff([[JI.$EST RUN TIME]], "00:00:00", "signed_secs") * 1.1`

Where:

$TIMEhh:mm:ss is a Global Property with the value hh:mm:ss.

When OpCon finds the job ran for more than 110% of the estimated run time, then the event trigger will fire and send whatever events you have defined. If the job ran for 110% of the estimated run time or less, event(s) will not be triggered.

### Set the Value of a Property Based on an Expression

In some cases, you may want to set the value of a property based on an expression including the value of other properties and/or constants . For this use case, we have a job that must set the value of a property named "Target" based on the computation of subtracting the value of one property from another and dividing it by 8. We must use the ToInt function to convert the value of the properties to integers because all OpCon Properties are stored as strings. To set this up, configure a $PROPERTY:SET event on the job using the following syntax:

`$PROPERTY:SET,Target,[[=(ToInt([[Source1]])-ToInt([[Source2]]))/8]]`

If "Source1" has a value of 85 and "Source2" has a value of 21, OpCon will set the value of "Target" to a value of 8 (because (85-21)/8 is equal to a value of 8).
