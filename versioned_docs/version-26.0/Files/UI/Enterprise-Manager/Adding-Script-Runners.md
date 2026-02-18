# Adding Script Runners

When creating script runners, bear in mind the following key points:

- A runner can only run scripts that belong to the defined script
    type.
- At least one runner should be defined for each script type.
- There should also be a runner defined for each supported platform of
    a given script type.

If you have a Python script that can run on both Windows and Linux platforms, then you would define at least one runner on each platform. Something similar to the following:

|Name|Script Type|OS|Command Template|
|---|---|---|---|
|Python-Win|Python|Windows|Syntax|
|Python-Unix|Python|UNIX|Syntax|

Let's take this example one step further and say that you had two versions of the Python runner for a Windows machine. Here, in this case, you would define at least one runner for each version for the Windows platform. Something similar to the following:

|Name|Script Type|OS|Command Template|
|---|---|---|---|
|Python1-Win|Python|Windows|Syntax|
|Python2-Win|Python|Windows|Syntax|

To add a script runner:

Double-click on **Runners** under the **Scripts** topic. The **Script
Runners** screen displays.

Click the **Add Runner** button on the toolbar. The **Add Runner**
dialog displays.

Enter *a name* for the script runner.

Select the **OS** from the drop-down list. The following platforms
support this feature: UNIX and Windows.

Select the **script type** from the drop-down list. If there are no
script types currently available or listed:

a.  Click the **Add** button next to the **Type** drop-down list.
b.  Enter the *information* for the new script type in the **Add Script
    Type** dialog.
c.  Click the **Save** button in the **Add Script Type** dialog.
d.  Select the **newly-added script type** from the **Type** drop-down
    list.

Enter, in the **Command Template** field, the path to the executable and
syntax for the placement of the file and arguments. As a base, you can
copy the command template syntax from one of the following predefined
script runners installed with application and modify it, accordingly:

- PowerShell (powershell.exe -ExecutionPolicy Bypass -File $FILE
    $ARGUMENTS)
- Python (python $FILE $ARGUMENTS)
- PERL (perl $FILE $ARGUMENTS)
- Command Shell (cmd.exe /c $FILE $ARGUMENTS)
- CScript (Cscript.exe $FILE $ARGUMENTS)

When defining or modifying the command template, bear in mind the
following:

- The template may contain tokens, which will be resolved at runtime.
  - SMA Technologies recommends using Machine         Instance properties for the path to the executable so that the
        template will work on different machines.
- $FILE is a placeholder for the location where the Agent should
    place the filename when constructing the command to send to the
    operating system.
  - This placeholder should be defined for every runner.
- $ARGUMENTS is a placeholder for the location where the Agent should
    place the arguments when constructing the command to send to the
    operating system.
  - This placeholder is optional for each runner, but SMA Technologies recommends that you include
        it for every runner to reduce the number of runners defined.
  - This placeholder will be replaced at runtime with any script
        parameters included on the job definition screen.

Click the **Save** button in the **Add Runner** dialog.

Click **Close ☒** (to the right of the **Script Runners** tab) to close
the **Script Runners** screen.
