# Managing Script Versions

The **Script Versions** module allows you to add, edit, delete, deploy, and check cross-references for script versions.


### Creating Script Versions

1. Select a Script and click the Add button above the Script Version list
   ![A screen showing script versions module with location of add button](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Add-Version-01.png "Add Script Version Button")
2. Fill out the Script Version form
   ![A screen showing add script version form](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Add-Version-02.png "Add Script Version Form")
   :::note
    Editor Language is only for formatting the syntax highlighter. It won't have any effect on the Script itself.
   :::


### Copying Script Versions

You can create a new script version based on an existing version.

1. Select a Script, select a Script Version and click the Copy button above the Script Version list
   ![A screen showing script versions module with location of copy button](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Copy-Version-01.png "Copy Script Version Button")
2. Fill out the Script Version form
   ![A screen showing pre-filled edit script version form](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Copy-Version-02.png "Copy Script Version Form")


### Deleting Script Versions

1. Select a Script, select a Script Version and click the Delete button above the Script Version list
   ![A screen showing script versions module with location of delete button](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Delete-Version-01.png "Delete Script Version Button")

2. Click Yes to confirm the delete operation
   ![A screen asking for confirmation to delete a script version](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Delete-Version-02.png "Delete Script Version Confirmation")

   :::note
    The delete operation is not allowed;
      - If the script version has cross-references,
      - If the script version is the only version for the script,
   :::

   :::note
    If you are deleting the Latest Version of a deployed Script, the version before the latest will become a new Latest version.
    ![A screen asking for confirmation to delete a script version with additional information](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Delete-Version-02-Will-Set-Latest.png "Delete Deployed Latest Script Version Confirmation")
   :::


### Deploying Script Versions

1. Select a Script, select a Script Version and click the Deploy button above the Script Version list
2. Repeat the 2nd step in [Deploying a Script](Managing-Scripts#deploying-a-script)


### Checking Cross References

1. Select a Script, select a Script Version and click the Cross References button above the Script Version list
   ![A screen showing script versions module with location of cross references button](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Cross-References-Version-01.png "Script Version Cross References Button")
2. A dialog will show the Cross References
   ![A screen showing cross references of a script version](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Cross-References-Version-02.png "Script Version Cross References Dialog")


![White "person reading" icon on blue circular background](../../../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Managing Scripts](Managing-Scripts.md)
- [Managing Script Types](Managing-Script-Types.md)
- [Managing Script Runners](Managing-Script-Runners.md)