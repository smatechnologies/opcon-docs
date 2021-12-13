# Notification Configuration

## Configuring SNMP Notifications

For information on installing the SNMP service and configuring SNMP notifications, refer to [SMA OpCon SNMP Agent](../installation/components.md#SMA9) in the **OpCon Installation** online help.

## Configuring SPO Notifications

For the SMA Notify Handler to be able to send SPO alerts, the SPO Agent must be installed and configured properly on the SAM application server. Once the SPO Agent is configured properly and running, complete the procedures below to configure the SMA Notify Handler to process SPO messages. For additional information, refer to [SMA Notify Handler](../server-programs/notify-handler.md).

### Configure the SMA Notify Handler to Use SPO

1. Double-click on **Server Options** under the **Administration** topic.
2. Click on the **Notification Settings** tab.
3. Click on **SPO Notifications Enabled**.
4. Click **True** in the drop-down list (bottom of screen) then click **Update**.
5. Click **Save** ![Save icon](../Resources/Images/Concepts/EMsave.png "Save icon") on the **Server Options** toolbar.
6. Click **Close ☒** to the right of the **Server Options** tab to close the **Server Options** screen.

### Define the Default SPO Alarm ID

In order for ENS to send Schedule or Instant Events to SPO, define the SPO Default Alarm ID in the Server Options screen.

1. Double-click on **Server Options**.
2. Click on the **Notification Settings** tab.
3. Click on **SPO Default Alarm ID**.
4. enter the *desired Alarm ID* in the **text box** and click **Update**.
5. Click **Save** ![Save icon](../Resources/Images/Concepts/EMsave.png) on the **Server Options** toolbar.
6. Click **Close ☒** to the right of the **Server Options** tab to close the **Server Options** screen.

### Format AL Event Reports for Email Notification

To send an email notification with an AL Event Report, complete the following steps:

1. FTP the **opcon_email** script from the `<Target Directory\>\\OpConxps\\SAM\\ENS\\` directory on the SAM Server into the `/var/opt/spo/alarm_scripts` directory on the Unix SPO Server.
2. Configure an **Action List** with the name **JOB_EMAIL**.
3. Enter *opcon_email<space\>* on the **Command** screen when editing the **Action Template** for JOB_EMAIL.
4. Define the AL Event normally in the ENS Manager except the Alarmid and Alarmqual fields.
5. Set **Alarmid** to JOB_EMAIL.
6. Set **Alarmqual** to the destination email address.
7. Include up to four addresses separated by commas if multiple email addresses are desired. The line's syntax does not allow spaces.

## Configuring SMTP Notifications

The SMA Notify Handler uses SMTP for email and for text messages. Ensure an SMTP server is available and verify the server's name.

### Configure the SMA Notify Handler to Use SMTP

In EM Navigation under Administration:

1. Double-click on **Server Options**.
2. In the Server Options screen: Click on the **SMTP Server Settings** tab.
3. Click on the **SMTP Server Name (Primary Email)**.
4. Enter the *SMTP server name* in the text box (bottom of screen) and click **Update**.
5. If the SMTP server requires SSL Encryption:
   1. Click on **SMTP Authentication - Enable SSL (Primary Email)**.
   2. Click **True** in the drop-down list (bottom of screen) then click **Update**.
6. If the *Enable SSL for SMTP Authentication (Primary Email)* value is **True** or if the SMTP server requires authentication:
   1. Click on the **SMTP Authentication User (Primary Email)**.
   2. Enter the *email address* in the text box (bottom of screen) then click **Update**.
   3. Click on the **Password (Primary Email)**.
   4. Enter the *password*in the text box (bottom of screen) then click **Update**.
7. If the SMTP server does not require authentication:
   1. Click on the **SMTP Notification Address (Primary Email)**.
   2. Enter the *email address* in the text box (bottom of screen) then click **Update**.
8. If a Secondary SMTP server is available, repeat Steps 4 - 7 for the **(Secondary Email)** settings with the same names.
9. If alternate servers should be used for all text messaging, repeat Steps 4 - 7 for all **(Primary SMS)** and **(Secondary SMS)** settings with the same names.
10. Click **Save** ![Save icon](../Resources/Images/Concepts/EMsave.png "Save icon ") on the **Server Options** toolbar.
11. Click **Close ☒** to the right of the **Server Options** tab to close the **Server Options** screen.
