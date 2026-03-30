---
title: Adding Script Runners
description: "When creating script runners, keep the following in mind: - A runner can only run scripts belonging to its defined script type - Define at least one runner for each script type - Define a runner for."
product_area: Enterprise Manager
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

# Adding Script Runners

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

When creating script runners, keep the following in mind:

- A runner can only run scripts belonging to its defined script type
- Define at least one runner for each script type
- Define a runner for each supported platform of a given script type

For example, a Python script that runs on both Windows and Linux requires at least one runner per platform:

|Name|Script Type|OS|Command Template|
|---|---|---|---|
|Python-Win|Python|Windows|Syntax|
|Python-Unix|Python|UNIX|Syntax|

If you have two versions of the Python runner for Windows, define at least one runner per version:

|Name|Script Type|OS|Command Template|
|---|---|---|---|
|Python1-Win|Python|Windows|Syntax|
|Python2-Win|Python|Windows|Syntax|

To add a script runner, complete the following steps:

1. Select on **Runners** under the **Scripts** topic. The **Script Runners** screen displays
2. Select **Add Runner** on the toolbar. The **Add Runner** dialog displays
3. Enter *a name* for the script runner
4. Select the **OS** from the list. Supported platforms: UNIX and Windows
5. Select the **script type** from the list. If no script types are listed:
   a. Select **Add** next to the **Type** list.
   b. Enter the *information* for the new script type in the **Add Script Type** dialog.
   c. Select **Save** in the **Add Script Type** dialog.
   d. Select the **newly-added script type** from the **Type** list.
6. In the **Command Template** field, enter the path to the executable and syntax for the file and arguments. Use one of the following predefined templates as a base:
   - PowerShell: `powershell.exe -ExecutionPolicy Bypass -File $FILE $ARGUMENTS`
   - Python: `python $FILE $ARGUMENTS`
   - PERL: `perl $FILE $ARGUMENTS`
   - Command Shell: `cmd.exe /c $FILE $ARGUMENTS`
   - CScript: `Cscript.exe $FILE $ARGUMENTS`

   When defining or modifying the command template:
   - The template may contain tokens resolved at runtime. Continuous recommends using Machine Instance properties for the executable path so the template works across machines
   - `$FILE` — placeholder for the filename; required for every runner
   - `$ARGUMENTS` — placeholder for script arguments; optional but recommended for every runner to reduce the total number of runners needed. Replaced at runtime with any script parameters from the job definition
7. Select **Save** in the **Add Runner** dialog
8. Select **Close ☒** (to the right of the **Script Runners** tab) to close the **Script Runners** screen

## When Would You Use It?

- You need to add Script Runners in Enterprise Manager
- The environment is expanding and requires additional Script Runners to support new automation workflows

## Why Would You Use It?

- **Extend automation scope**: Adding Script Runners to OpCon brings additional resources under centralized scheduling, monitoring, and event processing
- All additions are tracked in the OpCon audit log, recording who added the Script Runners and when

## FAQs

**Q: How do you save a new script runners record?**

After completing the required fields, select the **Save** button on the toolbar to save the script runners record.

## Glossary

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
