---
title: Java Job Details
description: "The information in this section applies to defining a Java job."
product_area: Job Types
audience: Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Jobs
last_updated: 2026-03-18
doc_type: conceptual
---

# Java Job Details

**Theme:** Configure  
**Who Is It For?** Automation Engineer

## What Is It?

The information in this section applies to defining a Java job. The Java job type supports three operations than can be run by the Java Agent: Class, Command, and JAR.

## Class Operation Fields

The Class operation is used to run a Java class. The following information applies to defining Class operations:

- **Jar File Name** (Required): Defines the name of the jar file that contains the class or method to be run
  - Required Extension: .jar
  - Maximum Characters: 4000
  - Valid Characters: alphanumeric ( a-z 0-9 ), underscore ( _ ), period ( . ), and hyphen ( - )

- **Class Name** (Required): Defines the name of the Java class to be run by the Java Agent
  - Maximum Characters: 4000
  - Valid Characters: alphanumeric ( a-z 0-9 ), underscore ( _ ), period ( . ), and hyphen ( - )

- **Method Name** (Optional): Defines the name of the method in the Java class to run
  - Default Value: main
  - Maximum Characters: 4000
  - Valid Characters: alphanumeric ( a-z 0-9 ), underscore ( _ ), period ( . ), and hyphen ( - )

- **Alternate JVM** (Optional): Defines the path to an alternate JVM to be run by the Java Agent
  - Maximum characters: 4000
  - Valid characters: all

- **Parameters** (Optional): Defines the parameters that will be passed to the method of the Java class that will be run by the Java Agent. The parameters are passed in the order in which they are defined in the Name Value table
  - Valid Characters: alphanumeric ( a-z 0-9 ), underscore ( _ ), period ( . ), and hyphen ( - )
  - Valid Values: STRING, INTEGER, LONG, or BOOLEAN
    - The *STRING*, *INTEGER*, *LONG* or *BOOLEAN* parameter type must be specified in the Name field with the value specified in the Value field
    - The type of parameter should match the definitions on the method call

- **JVM Arguments** (Optional): Defines the arguments that will be passed as JVM-specific (Java Virtual Machine) arguments, also known as Java VM Options. It is possible to specify jvmargs that will be included on the command line when the Java process is called. For more on Java HotSpot VM Options, refer to <http://www.oracle.com/technetwork/articles/java/vmoptions-jsp-140102.mdl>.

  A special argument definition, JAVA_JVM_ARGS, can be used to point to a global property that contains a list of arguments described in arg=value pairs separated by a comma (**Example**: JAVA_JVM_ARGS=\[\[GLOBAL_PROPERTY\]\], where \[\[GLOBAL_PROPERTY\]\]=\[\[arg1=value1,arg2=value2\]\]). When defining these values in global properties, property names should not be used.

  - Maximum Characters: 4000
  - Valid Characters: alphanumeric ( a-z 0-9 ), asterisk ( * ), slash ( / ), backslash ( \ ), percent ( % ), colon ( : ), underscore ( _ ), period ( . ), and hyphen ( - )

:::tip Example
When setting the JVM memory requirements for the job:

Insert the memory requirement in the JVM Argument Name field:

```java
-Xmx256m
```

:::

:::tip Example
When using the -D option to set logging information:

Insert the option in the JVM Argument Name field:

```java
-Dlog4j.configuration
```

Insert the definition in the JVM Argument Value field:

```shell
file:c:\test\logging\log4j.properties
```

:::

- **Environment Variables** (Optional): Defines the variables that allow users to specify Operating System Environment Variables. The variables will be set as environment variables when the Java process is called. These environment variables can be referenced by the Java program using the *System.getenv()* function

  A special argument definition, JAVA_ENV_VARS, can be used to point to a global property that contains a list of environment variables described in env=value pairs separated by a comma (**Example**: JAVA_ENV_VARS=\[\[GLOBAL_PROPERTY\]\], where \[\[GLOBAL_PROPERTY\]\]=\[\[name1=value1,name2=value2\]\]). When defining these values in global properties, property names should not be used.

  - Maximum Characters: 4000
  - Valid Characters: alphanumeric ( a-z 0-9 ), asterisk ( * ), slash ( / ), backslash ( \ ), percent ( % ), colon ( : ), underscore ( _ ), period ( . ), and hyphen ( - )

:::tip Example
When setting a directory definition:

Insert the option in the Env Variable Name field:

```java
TEST_HOME
```

Insert the definition in the Env Variable Value field:

```shell
c:\test
```

:::

- **Failure Criteria**: Provides fields to define criteria that OpCon uses to determine the final status of the job
  - **Exit Codes**: If any one of the criteria is TRUE at the end of a job, OpCon reports the job as Failed. Up to five different failure criteria may be defined. A failure criterion contains two parts: *Operator* and *Exit Code integer*:
    - **Operator**: An exit code criterion may use one of the following operators to compare the exit code with a user-defined value:
      - **EQ** (equal to)
      - **NE** (not equal to)
      - **LT** (less than)
      - **GT** (greater than)
      - **GE** (greater than or equal to)
      - **LE** (less than or equal to)
    - **Exit Code Integer**: Any integer (-2,147,483,648 through 2,147,483,647) to compare with the job's exit code

## Command Operation Fields

The Command operation is used to run a script. The following information applies to defining Command operations:

- **Directory Path** (Required): Defines the full directory path of the exe or script to run
  - Maximum Characters: 4000

- **Executable** (Required): Defines the name of the executable or script to run. The definition must end with an exe, a .cmd, a .bat, or a .sh extension
  - Maximum Characters: 4000

- **Parameters** (Optional): Defines the parameters that will be passed to the script. The parameters are passed in the order in which they are defined in the Name Value table
  - Valid Characters: alphanumeric ( a-z 0-9 ), underscore ( _ ), period ( . ), and hyphen ( - )
  - Valid Values: STRING, INTEGER, LONG, BOOLEAN, or an indicator, such as --p, etc.
    - The *STRING* parameter type can be used to specify a single parameter to be passed to the script as an argument
    - If the script arguments include switches, then enter the switch in the Name field and the value in the Value field

- **Environment Variables** (Optional): Defines the variables that allow users to specify Operating System Environment Variables. The variables will be set as environment variables when the Java process is called. These environment variables can be referenced by the Java program using the *System.getenv()* function

  A special argument definition, JAVA_ENV_VARS, can be used to point to a global property that contains a list of environment variables described in env=value pairs separated by a comma (**Example**: JAVA_ENV_VARS=\[\[GLOBAL_PROPERTY\]\], where \[\[GLOBAL_PROPERTY\]\]=\[\[name1=value1,name2=value2\]\]). When defining these values in global properties, property names should not be used.

  - Maximum Characters: 4000
  - Valid Characters: alphanumeric ( a-z 0-9 ), asterisk ( * ), slash ( / ), backslash ( \ ), percent ( % ), colon ( : ), underscore ( _ ), period ( . ), and hyphen ( - )

:::tip Example
When setting a directory definition:

Insert the option in the Env Variable Name field:

```java
TEST_HOME
```

Insert the definition in the Env Variable Value field:

```shell
c:\test
```

:::

- **Failure Criteria**: Provides fields to define criteria that OpCon uses to determine the final status of the job
  - **Exit Codes**: If any one of the criteria is TRUE at the end of a job, OpCon reports the job as Failed. Up to five different failure criteria may be defined. A failure criterion contains two parts: *Operator* and *Exit Code integer*:
    - **Operator**: An exit code criterion may use one of the following operators to compare the exit code with a user-defined value:
      - **EQ** (equal to)
      - **NE** (not equal to)
      - **LT** (less than)
      - **GT** (greater than)
      - **GE** (greater than or equal to)
      - **LE** (less than or equal to)
    - **Exit Code Integer**: Any integer (-2,147,483,648 through 2,147,483,647) to compare with the job's exit code

## JAR Operation Fields

The JAR operation is used to define the execution of a JAR file in a separate jvm. The following information applies to defining JAR operations:

**Directory Path** (Required): Defines the full directory path of the exe or script to run.

- Maximum Characters: 4000

**Jar File Name** (Required): Defines the name of the jar file that contains the class or method to be run.

- Required Extension: .jar
- Maximum Characters: 4000
- Valid Characters: alphanumeric ( a-z 0-9 ), underscore ( _ ), period ( . ), and hyphen ( - ) 

**Alternate JVM** (Optional): Defines the path to an alternate JVM to be run by the Java Agent.

- Maximum characters: 4000
- Valid characters: all

**JVM Arguments** (Optional): Defines the arguments that will be passed as JVM-specific (Java Virtual Machine) arguments, also known as Java VM Options. It is possible to specify jvmargs that will be included on the command line when the Java process is called. For more on Java HotSpot VM Options, refer to <http://www.oracle.com/technetwork/articles/java/vmoptions-jsp-140102.mdl>.

A special argument definition, JAVA_JVM_ARGS, can be used to point to a global property that contains a list of arguments described in arg=value pairs separated by a comma (**Example**: JAVA_JVM_ARGS=\[\[GLOBAL_PROPERTY\]\], where \[\[GLOBAL_PROPERTY\]\]=\[\[arg1=value1, arg2=value2\]\]). When defining these values in global properties, property names should not be used.

- Maximum Characters: 4000
- Valid Characters: alphanumeric ( a-z 0-9 ), asterisk ( * ), slash ( / ), backslash ( \ ), percent ( % ), colon ( : ), underscore ( _ ), period ( . ), and hyphen ( - )

:::tip Example
When setting the JVM memory requirements for the job:

Insert the memory requirement in the JVM Argument Name field:

```java
-Xmx256m
```

:::

:::tip Example
When using the -D option to set logging information:

Insert the option in the JVM Argument Name field:

```java
-Dlog4j.configuration
```

Insert the definition in the JVM Argument Value field:

```shell
file:c:\test\logging\log4j.properties
```

:::

**Environment Variables** (Optional): Defines the variables that allow users to specify Operating System Environment Variables. The variables will be set as environment variables when the Java process is called. These environment variables can be referenced by the Java program using the *System.getenv()* function.

A special argument definition, JAVA_ENV_VARS, can be used to point to a global property that contains a list of environment variables described in env=value pairs separated by a comma. (**Example**: JAVA_ENV_VARS=[[GLOBAL_PROPERTY]], where [[GLOBAL_PROPERTY]]=[[name1=value1, name2=value2]]). When defining these values in global properties, property names should not be used.

- Maximum Characters: 4000
- Valid Characters: alphanumeric ( a-z 0-9 ), asterisk ( * ), slash ( / ), backslash ( \ ), percent ( % ), colon ( : ), underscore ( _ ), period ( . ), and hyphen ( - )

:::tip Example
When setting a directory definition:

Insert the option in the Env Variable Name field:

```java
TEST_HOME
```

Insert the definition in the Env Variable Value field:

```shell
c:\test
```

:::

**Failure Criteria**: Provides fields to define criteria that OpCon uses to determine the final status of the job.

- **Exit Codes**: If any one of the criteria is TRUE at the end of a job, OpCon reports the job as Failed. Up to five different failure criteria may be defined. A failure criterion contains two parts: *Operator* and *Exit Code integer*:
  - **Operator**: An exit code criterion may use one of the following operators to compare the exit code with a user-defined value:
    - **EQ** (equal to)
    - **NE** (not equal to)
    - **LT** (less than)
    - **GT** (greater than)
    - **GE** (greater than or equal to)
    - **LE** (less than or equal to)
  - **Exit Code Integer**: Any integer (-2,147,483,648 through 2,147,483,647) to compare with the job's exit code

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Failure Criteria | Provides fields to define criteria that OpCon uses to determine the final status of the job | — | — |
| Exit Codes | If any one of the criteria is TRUE at the end of a job, OpCon reports the job as Failed. | — | — |
## FAQs

**Q: What three operations does the Java job type support?**

The Java job type supports three operations: Class (runs a Java class method), Command (runs a command via the Java Agent), and JAR (runs a JAR file directly).

**Q: Is a Method Name required when defining a Class operation?**

No. The Method Name is optional and defaults to `main` if not specified.

**Q: Can you use an alternate JVM for a Java job?**

Yes. The Alternate JVM field allows you to define the path to a different JVM for the Java Agent to use when running the job.

## Glossary

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
