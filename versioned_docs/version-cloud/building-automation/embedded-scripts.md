# Embedded Scripts

Embedded Scripts in OpCon provides a way for users to centrally manage
scripts for distribution to Agents. Centralized script storage is
important because it:

- Eliminates script maintenance across multiple machines
- Provides a way to run different versions of a script across
    different machines
- Secures script access and makes it possible to audit script changes
- Provides version control

Embedded Scripts Overview

![Embedded Scripts Overview](../Resources/Images/Concepts/EmbeddedScriptsOverview.jpg "Embedded Scripts Overview")

## Understanding the Process Flow

The process flow for using Embedded Scripts with OpCon begins with
defining scripts in the database. Each script is associated with a
script type. The script type is associated with one or more runners. The
runner is the local program configuration responsible for executing a
script of a specific type on remote machines. At runtime, the runner,
type, and script information are all passed to the Agent for execution.

![Diagram of Process Flow](../Resources/Images/Concepts/EmbeddedScriptsProcessFlow.jpg "Diagram of Process Flow")

## Reasons to Use Embedded Scripts

The use of Embedded Scripts reduces administration and increases
security in the automation environment. The following scenarios
demonstrate how Embedded Scripts can provide benefits to a business:

- Maintaining the script inside OpCon means that you no longer have to
    edit the script in different environments. Without this feature, the
    process is more complex because you would have to edit the same
    script on many machines or copy a source script to those machines
    before it could be executed.
- With one account in OpCon, you can maintain all of your automation
    scripts. This means that less people have to have direct logins to
    the Agent machines.
- The built-in auditing in OpCon automatically tracks every change to
    the script whether it is versioned or not. This is especially
    beneficial in an environment without version control software.
- Having the ability to select a script version for a job provides
    these benefits:
  - Assigning a specific version ensures the job always uses that
        approved version of the script.
  - Selecting LATEST instead of a specific version ties a job to the
        highest version of a script. This is useful for test jobs to
        make sure new versions of the script work well before assigning
        the version to a production job.

The **Scripts** module allows you to add, edit, delete, deploy, and check cross-references for scripts.


### Creating Scripts

1. Click the Add button above the list
   ![A screen showing scripts module with location of add button](../Resources/Images/SM/Library/Scripts/Scripts-Add-Script-01.png "Add Script Button")
2. Fill out the Script form
   ![A screen showing add script form](../Resources/Images/SM/Library/Scripts/Scripts-Add-Script-02.png "Add Script Form")
   :::note
    1. Editor Language is only for formatting the syntax highlighter. It won't have any effect on the Script itself.
    2. Script content will be created as a new Version.
   :::

### Editing Scripts

1. Select a Script and click the Edit button above the list
   ![A screen showing scripts module with location of edit button](../Resources/Images/SM/Library/Scripts/Scripts-Edit-Script-01.png "Edit Script Button")
2. Fill out the Script form
   ![A screen showing edit script form](../Resources/Images/SM/Library/Scripts/Scripts-Edit-Script-02.png "Edit Script Form")
   :::note
    You cannot edit the Script content with this function. If you want to edit the Script content, you need to create a new Version.
   :::

### Deleting Scripts

1. Select a Script and click the Delete button above the list
   ![A screen showing scripts module with location of delete button](../Resources/Images/SM/Library/Scripts/Scripts-Delete-Script-01.png "Delete Script Button")

2. Click Yes to confirm the delete operation
   ![A screen asking for confirmation to delete a script](../Resources/Images/SM/Library/Scripts/Scripts-Delete-Script-02.png "Delete Script Confirmation")

Delete operation is not allowed if Script has any cross-references.
![A screen showing cross references of a script](../Resources/Images/SM/Library/Scripts/Scripts-Delete-Script-02-Cross-Refs.png "Delete Script with Cross References")

### Deploying Scripts

1. Select a Script and click the Deploy button above the list
   ![A screen showing scripts module with location of deploy button](../Resources/Images/SM/Library/Scripts/Scripts-Deploy-Script-01.png "Deploy Script Button")
2. Fill out the Script deploy form
   ![A screen showing deploy script form](../Resources/Images/SM/Library/Scripts/Scripts-Deploy-Script-02.png "Deploy Script Form")

### Checking Cross References

1. Select a Script and click the Cross References button above the list
   ![A screen showing scripts module with location of cross references button](../Resources/Images/SM/Library/Scripts/Scripts-Cross-References-Script-01.png "Script Cross References Button")
2. A dialog will show the Cross References
   ![A screen showing cross references of a script](../Resources/Images/SM/Library/Scripts/Scripts-Cross-References-Script-02.png "Script Cross References Dialog")

## Managing Script Types

The **Script Types** module allows you to add, edit, delete, and check cross-references for script types.


### Creating Script Types

1. Click the Add button above the list
   ![A screen showing script types module with location of add button](../Resources/Images/SM/Library/Scripts/Scripts-Add-Type-01.png "Add Script Type Button")
2. Fill out the Script Type form
   ![A screen showing add script type form](../Resources/Images/SM/Library/Scripts/Scripts-Add-Type-02.png "Add Script Type Form")


### Editing Script Types

1. Select a Script Type and click the Edit button above the list
   ![A screen showing script types module with location of edit button](../Resources/Images/SM/Library/Scripts/Scripts-Edit-Type-01.png "Edit Script Type Button")
2. Fill out the Script Type form
   ![A screen showing edit script type form](../Resources/Images/SM/Library/Scripts/Scripts-Edit-Type-02.png "Edit Script Type Form")


### Deleting Script Types

1. Select a Script Type and click the Delete button above the list
   ![A screen showing script types module with location of delete button](../Resources/Images/SM/Library/Scripts/Scripts-Delete-Type-01.png "Delete Script Type Button")

2. Click Yes to confirm the delete operation
   ![A screen asking for confirmation to delete a script type](../Resources/Images/SM/Library/Scripts/Scripts-Delete-Type-02.png "Delete Script Type Confirmation")

Delete operation is not allowed if Script Type has any cross-references.
![A screen showing cross references of a script type](../Resources/Images/SM/Library/Scripts/Scripts-Delete-Type-02-Cross-Refs.png "Delete Script Type with Cross References")


### Checking Cross References

1. Select a Script Type and click the Cross References button above the list
   ![A screen showing script types module with location of cross references button](../Resources/Images/SM/Library/Scripts/Scripts-Cross-References-Type-01.png "Script Type Cross References Button")
2. A dialog will show the Cross References
   ![A screen showing cross references of a script](../Resources/Images/SM/Library/Scripts/Scripts-Cross-References-Type-02.png "Script Type Cross References Dialog")

## Managing Script Runners

The **Script Runners** module allows you to add, edit, delete, and check cross-references for script runners.


### Creating Script Runners

1. Click the Add button above the list
   ![A screen showing script runners module with location of add button](../Resources/Images/SM/Library/Scripts/Scripts-Add-Runner-01.png "Add Script Runner Button")
2. Fill out the Script Runner form
   ![A screen showing add script runner form](../Resources/Images/SM/Library/Scripts/Scripts-Add-Runner-02.png "Add Script Runner Form")
   :::note
    You can create a new Script Type directly from this form by clicking the Add button next to Type field.
   :::


### Editing Script Runners

1. Select a Script Runner and click the Edit button above the list
   ![A screen showing script runners module with location of edit button](../Resources/Images/SM/Library/Scripts/Scripts-Edit-Runner-01.png "Edit Script Runner Button")
2. Fill out the Script Runner form
   ![A screen showing edit script runner form](../Resources/Images/SM/Library/Scripts/Scripts-Edit-Runner-02.png "Edit Script Runner Form")


### Deleting Script Runners

1. Select a Script Runner and click the Delete button above the list
   ![A screen showing script runners module with location of delete button](../Resources/Images/SM/Library/Scripts/Scripts-Delete-Runner-01.png "Delete Script Runner Button")

2. Click Yes to confirm the delete operation
   ![A screen asking for confirmation to delete a script runner](../Resources/Images/SM/Library/Scripts/Scripts-Delete-Runner-02.png "Delete Script Runner Confirmation")

Delete operation is not allowed if Script Runner has any cross-references.
![A screen showing cross references of a script runner](../Resources/Images/SM/Library/Scripts/Scripts-Delete-Runner-02-Cross-Refs.png "Delete Script Runner with Cross References")


### Checking Cross References

1. Select a Script Runner and click the Cross References button above the list
   ![A screen showing script runners module with location of cross references button](../Resources/Images/SM/Library/Scripts/Scripts-Cross-References-Runner-01.png "Script Runner Cross References Button")
2. A dialog will show the Cross References
   ![A screen showing cross references of a script](../Resources/Images/SM/Library/Scripts/Scripts-Cross-References-Runner-02.png "Script Runner Cross References Dialog")

## Managing Script Versions

The **Script Versions** module allows you to add, edit, delete, deploy, and check cross-references for script versions.


### Creating Script Versions

1. Select a Script and click the Add button above the Script Version list
   ![A screen showing script versions module with location of add button](../Resources/Images/SM/Library/Scripts/Scripts-Add-Version-01.png "Add Script Version Button")
2. Fill out the Script Version form
   ![A screen showing add script version form](../Resources/Images/SM/Library/Scripts/Scripts-Add-Version-02.png "Add Script Version Form")
   :::note
    Editor Language is only for formatting the syntax highlighter. It won't have any effect on the Script itself.
   :::


### Copying Script Versions

You can create a new script version based on an existing version.

1. Select a Script, select a Script Version and click the Copy button above the Script Version list
   ![A screen showing script versions module with location of copy button](../Resources/Images/SM/Library/Scripts/Scripts-Copy-Version-01.png "Copy Script Version Button")
2. Fill out the Script Version form
   ![A screen showing pre-filled edit script version form](../Resources/Images/SM/Library/Scripts/Scripts-Copy-Version-02.png "Copy Script Version Form")


### Deleting Script Versions

1. Select a Script, select a Script Version and click the Delete button above the Script Version list
   ![A screen showing script versions module with location of delete button](../Resources/Images/SM/Library/Scripts/Scripts-Delete-Version-01.png "Delete Script Version Button")

2. Click Yes to confirm the delete operation
   ![A screen asking for confirmation to delete a script version](../Resources/Images/SM/Library/Scripts/Scripts-Delete-Version-02.png "Delete Script Version Confirmation")

   :::note
    The delete operation is not allowed;
      - If the script version has cross-references,
      - If the script version is the only version for the script,
   :::

   :::note
    If you are deleting the Latest Version of a deployed Script, the version before the latest will become a new Latest version.
    ![A screen asking for confirmation to delete a script version with additional information](../Resources/Images/SM/Library/Scripts/Scripts-Delete-Version-02-Will-Set-Latest.png "Delete Deployed Latest Script Version Confirmation")
   :::


### Deploying Script Versions

1. Select a Script, select a Script Version and click the Deploy button above the Script Version list
2. Repeat the 2nd step in [Deploying a Script](Managing-Scripts#deploying-a-script)


### Checking Cross References

1. Select a Script, select a Script Version and click the Cross References button above the Script Version list
   ![A screen showing script versions module with location of cross references button](../Resources/Images/SM/Library/Scripts/Scripts-Cross-References-Version-01.png "Script Version Cross References Button")
2. A dialog will show the Cross References
   ![A screen showing cross references of a script version](../Resources/Images/SM/Library/Scripts/Scripts-Cross-References-Version-02.png "Script Version Cross References Dialog")
