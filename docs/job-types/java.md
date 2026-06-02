---
title: Java Job Details
description: "Field reference for configuring a Java job in OpCon, covering the Class, Command, and JAR operations."
product_area: Job Types
audience: Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - Automation Engineer
  - Jobs
last_updated: 2026-06-02
doc_type: reference
---

# Java Job Details

The Java job type supports three operations that the Java Agent can run: **Class**, **Command**, and **JAR**. You select the operation when defining the job, and the available fields change based on your selection.

## Operation

| Field | Required | Description |
|---|---|---|
| **Operation** | Yes | Selects the operation type. Valid values: `Class`, `Command`, `JAR`. Default: `Class`. |

## Class Operation Fields

Use the Class operation to run a Java class method.

| Field | Required | Description |
|---|---|---|
| **Jar File Name** | Yes | Name of the `.jar` file that contains the class or method to run. Maximum 4000 characters. Valid characters: alphanumeric (`a–z`, `0–9`), underscore (`_`), period (`.`), hyphen (`-`). Required extension: `.jar`. |
| **Class Name** | Yes | Name of the Java class to run. Maximum 4000 characters. Valid characters: alphanumeric (`a–z`, `0–9`), underscore (`_`), period (`.`), hyphen (`-`). |
| **Method Name** | No | Name of the method in the Java class to run. Default: `main`. Maximum 4000 characters. Valid characters: alphanumeric (`a–z`, `0–9`), underscore (`_`), period (`.`), hyphen (`-`). |
| **Alternate JVM** | No | Full path to an alternate JVM for the Java Agent to use. Maximum 4000 characters. All characters are valid. |

The **Parameters**, **JVM Arguments**, and **Environment Variables** tabs are available for the Class operation. See [Shared Fields](#shared-fields) below.

## Command Operation Fields

Use the Command operation to run a script through the Java Agent.

| Field | Required | Description |
|---|---|---|
| **Directory Path** | Yes | Full directory path of the executable or script to run. Maximum 4000 characters. |
| **Executable** | Yes | Name of the executable or script. Must end with `.exe`, `.cmd`, `.bat`, or `.sh`. Maximum 4000 characters. |

The **Parameters** and **Environment Variables** tabs are available for the Command operation. The **JVM Arguments** tab is not available for this operation. See [Shared Fields](#shared-fields) below.

## JAR Operation Fields

Use the JAR operation to run a JAR file in a separate JVM.

| Field | Required | Description |
|---|---|---|
| **Directory Location** | Yes | Full directory path where the JAR file resides. Maximum 4000 characters. |
| **Jar File Name** | Yes | Name of the `.jar` file to run. Maximum 4000 characters. Valid characters: alphanumeric (`a–z`, `0–9`), underscore (`_`), period (`.`), hyphen (`-`). Required extension: `.jar`. |
| **Alternate JVM** | No | Full path to an alternate JVM for the Java Agent to use. Maximum 4000 characters. All characters are valid. |

The **JVM Arguments** and **Environment Variables** tabs are available for the JAR operation. The **Parameters** tab is not available for this operation. See [Shared Fields](#shared-fields) below.

## Shared Fields

The following fields appear as tabs shared across multiple operations.

### Parameters

Parameters pass values to the Java class method (Class and Command operations). The Java Agent passes parameters in the order they are defined in the Name-Value table.

| Sub-field | Description |
|---|---|
| **Name** | Parameter name or switch indicator (for example, `--p`). |
| **Value** | Parameter value. |

Valid types for Class operations: `STRING`, `INTEGER`, `LONG`, `BOOLEAN`. The type must match the method signature.

For Command operations, use `STRING` to pass a single argument, or enter a switch in **Name** and the switch value in **Value**.

Maximum 4000 characters. Valid characters: alphanumeric (`a–z`, `0–9`), underscore (`_`), period (`.`), hyphen (`-`).

You can use a global property to pass a list of parameters in a single value:

```
JAVA_JVM_ARGS=[[GLOBAL_PROPERTY]]
```

where `[[GLOBAL_PROPERTY]]` resolves to `[[arg1=value1,arg2=value2]]`. Do not include property names inside the global property value.

### JVM Arguments

JVM Arguments pass Java Virtual Machine options on the command line when the Java process runs (Class and JAR operations).

| Sub-field | Description |
|---|---|
| **JVM Argument Name** | The JVM option name (for example, `-Xmx256m` or `-Dlog4j.configuration`). |
| **JVM Argument Value** | The value for the option (for example, `file:c:\test\logging\log4j.properties`). |

Maximum 4000 characters. Valid characters: alphanumeric (`a–z`, `0–9`), asterisk (`*`), slash (`/`), backslash (`\`), percent (`%`), colon (`:`), underscore (`_`), period (`.`), hyphen (`-`).

You can use a global property to pass a list of JVM arguments in a single value:

```
JAVA_JVM_ARGS=[[GLOBAL_PROPERTY]]
```

where `[[GLOBAL_PROPERTY]]` resolves to `[[arg1=value1,arg2=value2]]`. Do not include property names inside the global property value.

For more information on Java HotSpot VM options, see <http://www.oracle.com/technetwork/articles/java/vmoptions-jsp-140102.mdl>.

:::tip Example — Setting JVM memory

Enter the memory requirement in the **JVM Argument Name** field:

```
-Xmx256m
```

:::

:::tip Example — Setting a log4j property

Enter the option in the **JVM Argument Name** field:

```
-Dlog4j.configuration
```

Enter the file path in the **JVM Argument Value** field:

```
file:c:\test\logging\log4j.properties
```

:::

### Environment Variables

Environment Variables set OS-level variables when the Java process runs (all operations). The Java program can read these variables using `System.getenv()`.

| Sub-field | Description |
|---|---|
| **Env Variable Name** | The environment variable name (for example, `TEST_HOME`). |
| **Env Variable Value** | The value for the variable (for example, `c:\test`). |

Maximum 4000 characters. Valid characters: alphanumeric (`a–z`, `0–9`), asterisk (`*`), slash (`/`), backslash (`\`), percent (`%`), colon (`:`), underscore (`_`), period (`.`), hyphen (`-`).

You can use a global property to pass a list of environment variables in a single value:

```
JAVA_ENV_VARS=[[GLOBAL_PROPERTY]]
```

where `[[GLOBAL_PROPERTY]]` resolves to `[[name1=value1,name2=value2]]`. Do not include property names inside the global property value.

:::tip Example — Setting a directory path

Enter the variable name in the **Env Variable Name** field:

```
TEST_HOME
```

Enter the path in the **Env Variable Value** field:

```
c:\test
```

:::

## Failure Criteria

The **Failure Criteria** section defines when OpCon marks a Java job as Failed.

**Exit Codes**: If any criterion is true when the job ends, OpCon reports the job as Failed. You can define up to five criteria. Each criterion has two parts:

| Part | Description |
|---|---|
| **Operator** | Comparison operator: `EQ` (equal to), `NE` (not equal to), `LT` (less than), `GT` (greater than), `GE` (greater than or equal to), `LE` (less than or equal to). Default operator: `NE`. |
| **Exit Code Integer** | An integer from -2,147,483,648 through 2,147,483,647 to compare with the job's exit code. Default value: `0`. |
