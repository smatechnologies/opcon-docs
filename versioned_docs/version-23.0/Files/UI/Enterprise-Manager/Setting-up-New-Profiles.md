# Setting up New Profiles

Follow the procedure provided below to set up a new profile.

:::note
Begin with Step 6 if the **Database Connection Profile** dialog is already displayed.
:::

To set up a new profile:

Launch the Enterprise Manager application.
Use menu path: **EnterpriseManager \> Preferences**. The **Preferences**
dialog displays.

Click on the arrow
(![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)) next to
**Enterprise Manager** in the Preferences tree to expand the drop-down
list.

Click on **Connection Profiles**. The **Connection Profiles** settings
display to the right.

Click the **New Profile** button. The **Database Connection Profile**
dialog displays.

Enter a *profile name.*

Specify the authentication method that you wish to use to connect to the
database:

a.  Select the **Use Windows Authentication** checkbox to use Windows
    Authentication to connect to the database *- or -*
b.  Do the following to use SQL authentication to connect to the
    database:

i.  Enter *opconui* in the **Username** text box.
ii. Enter the *opconui's password* in the **Password** text box.
iii. Enter the *SQL server name* or *IP Address* in the **SQL Server**
     text box .

Select the *database* from the drop-down list. Click the **Database**
button to show the available databases.

:::
The list of databases will only be made available once each of the previous text boxes have been filled in.
:::

*(Optional)* Type the *Timeout (sec)* (It is set to 30
by default).

*(Optional)* Click on the **Profile Color** button. The
**Color** dialog displays.

Select the **color** and click **OK** to save the color change.

Click **Next** to advance to the next window of the **Database
Connection Profile** dialog.

:::note
The next window will indicate whether the database connection has tested successfully.
:::

**If the test was not successful:**

Click the **Back** button to correct the problem and try again.

**If the test was successful:**

Click **Next** to go on to set up the OpCon data
location details.

Choose the method for connecting to the SAM application server for
accessing centralized OpCon product
documentation.

:::note
For the default \[\[SERVER\]\] token in the UNC path to the OpConxps directory on the SAM server, the EM will automatically replace that token with the database server IP/Hostname specified in the profile (refer to Step 4a). With this token in place, if you change the database server in the profile you will not need to change the UNC path (as long as the share directory is the same).
:::

If on the OpCon server, choose the **Directory with Windows integrated authentication** option.

i.  If on the SAM server, in the **Path** field, enter or browse the path to the <Output Directory\>.
ii. If on any other Windows machine on the same Domain, first share the
    C:\\ProgramData\\OpConxps folder on the
    OpCon server to users and grant the each
    user Read permission. Then, in the **Path** field, enter or browse
    to select the path for the root OpConxps data folder on the server.

If on a Linux machine or any Windows machine that is not the
OpCon server, choose the **Directory with
supplied credentials** option.

i.  Enter a valid *UNC Path*to the server. If the share name on the
    server is **OpConxps**, the default value of
    **\\\\\[\[SERVER\]\]\\OpConxps** is correct. ii. Enter a valid *Windows Username*.
iii. Enter the *Password* for the Username.

Click **Finish** to save the details and close the dialog.

Click **Finish** again once the connection is made to the database.

**If making additional changes in the Preferences dialog:**

Click **Apply** to save the changes in this dialog.

**If finished making changes in the Preferences dialog:**

Click **OK** to save the changes and close the **Preferences** dialog.
