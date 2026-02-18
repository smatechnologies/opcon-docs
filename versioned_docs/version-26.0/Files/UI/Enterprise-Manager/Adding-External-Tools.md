# Adding External Tools

If you have a specific tool that is used often, it is possible to add that tool to the **External Tools** navigation list in the Enterprise Manager. You can update this list by modifying the **externaltools.xml** file that was previously located in EM installation directory\\tools\\externaltools.xml. This file is now copied into the EM preference directory (userhome\\.enterpriseManager\\externaltools.xml) so that it can be configured by each user in the same machine.

:::note
If the file is not copied into this directory, you must copy it from EM installation directory\\tools\\exernaltools.xml to userhome\\.enterpriseManager\\externaltools.xml.
:::

The procedure below will show (as an example) how to add the *Internet Information Services* to the **External Tools** navigation list.

To add an external tool:

1. Copy the **externaltools.xml** file from the **userhome\\.enterpriseManager\\** directory to a place where it can be edited without affecting the original file.
2. Open the **copied file** with a suitable editor (e.g., notepad).
3. Add an **entry** that will call the correct external tool.
4. Save the changes made to the **externaltools.xml**.
5. Create a file that contains the icon (icon dimension should be 16 by 16) to associate with the new external tool to be added.
6. Place the file of the icon in the **\....\\EnterpriseManager\\tools\\icons** directory.
7. Click the **Close** button to exit from the Enterprise Manager.
8. Save a copy of the file **userhome\\.enterpriseManager\\externaltools.xml** so it can be returned to the original file at a later stage.
9. Copy the changed **externaltools.xml** file into the **userhome\\.enterpriseManager\\** directory.
10. Open the Enterprise Manager again and go to the **External Tools** topic in the **Navigation Panel** to view the entry for the Internet Information Services.
11. Double-click on the **Internet Information Services** to test that it is working correctly.
