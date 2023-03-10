# Menus

The menu bar at the top of the Enterprise Manager screen is always available whether you are working with
[editors](Navigation-Editors.md) or [views](Navigation-Views.md).
The menu bar has two options: Enterprise Manager and Help.

## Enterprise Manager

The Enterprise Manager menu displays the following options when
selected:

|||
|--- |--- |
||Refresh (F5): This menu item refreshes all active windows.|
||Pause Refresh (Ctrl+P): This menu item will cause the automatic refresh process to pause.|
||Logout (Ctrl+L): This menu item disconnects the User from the database without exiting the Enterprise manager.|
||Password Update:  This menu item allows the user to change their Password, generate an external token, or encrypt a password.|
||Preferences (Ctrl+Alt+P): This menu item allows the user to set various preferences for several of the views.|
||Exit (Ctrl+Q):  This menu item will close the Enterprise Manager.|

Underneath the menu bar, the **Logout**, **Refresh**, and **Pause
Refresh** toolbar icons display.

### Encrypting Passwords

You will need to use the Enterprise Manager encryption tool if a
configuration value in OpCon requires an
encrypted password.

To encrypt a password:

1. Log in to the Enterprise Manager.
2. Use menu path: **EnterpriseManager \> Password Update \> Password Encryption Tool**. The **Password encryption tool** dialog displays.
3. *(Optional)*Select the **Visible** checkbox to make the password characters visible.
4. Enter the password in the **Password** field.
5. Click **Encrypt**.
6. Click the **Copy to clipboard** button to copy the encrypted password.
7. Click **Close** to close the dialog.
8. Paste the encrypted password to the desired location.

### Generating External Tokens

To generate an external token:

1. Log in to the Enterprise Manager.
2. Use menu path: **EnterpriseManager \> Password Update \> Generate External Token**. The **External Token Set** dialog displays.
3. Select one of the following options:
    a.  Click the **Yes** button to copy the external token to the
        clipboard ***-- or --***
    b.  Click the **No** button to close the dialog.
4. Paste the external token to the desired location.

## Help

The **Help** menu displays the following options when selected:

- **Enterprise Manager (F1)**: This item or the **F1** key on
    the keyboard will link to the conceptual information for the current
    location in Enterprise Manager. From the main screen, this option
    opens to the first topic of the **Enterprise Manager** online help.
- **Documentation**: This item will provide links to all
    OpCon online product help. Click on the
    specific link to view the documentation.
- **Show Key Assist**: This item will provide a list of functions and their associated keyboard
    shortcut keys.
- **Check for Updates**: During     startup for Enterprise Manager, a check will be made for a new
    version (if available). The Check for Updates is an Enterprise
    Manager preference. For more information on setting preferences,
    refer to the [procedures for changing     preferences](Setting-Preferences.md).
- **Legend**: This item opens the     legend window that explains the colors and icons associated with the
    jobs, schedules, and dependencies displayed in the views.
- **About OpCon Enterprise Manager**: This menu item displays SMA Technologies contact information, Product
    version details, and the option to Report a Problem. This menu also
    displays OpCon License information to
    users with granted privileges. For more information on reporting a
    problem, refer to [Reporting Problems](Reporting-Problems.md)
