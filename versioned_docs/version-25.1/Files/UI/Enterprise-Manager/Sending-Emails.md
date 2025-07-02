# Sending Emails (SMTP)

The **Email** tab provides the following fields for defining an SMTP
email notification:

- **To** (Required): Defines the SMTP email address(es) separated by a
    semi-colon (;). The maximum for this field is 3,000 characters.
- **Cc** (Optional): Defines additional SMTP email address(es)
    separated by a semi-colon (;) for sending carbon copies. Separate
    email address(es) with a semi-colon (;). The maximum for this field
    is 3,000 characters.
- **Bcc** (Optional): Defines additional SMTP email address(es) for
    sending blind carbon copies. Separate email address(es) with a
    semi-colon (;). The maximum for this field is 3,000 characters.
- **Subject** (Optional): Defines the message's subject. The Subject
    field defaults to "OpCon Notification: <Status Change Event
    Trigger Name\>".
- **JORS Output**: Select this checkbox to include JORS output files
    as attachments to the email for job triggers.
- **Exclude Prefix Information**: Select this checkbox to exclude the
    prefix information from the email message (e.g., Schedule Date,
    Machine Name, Schedule Name, Job Name \[and Internal Job Number\],     trigger type, and triggering status change event).
- **Message**: Defines a user-defined message.
- **Attachments**: Contains the attachments to be included with the
    message. Wild cards are not allowed for filenames.

To send an email notification:

1. Double-click on **Notification Manager** under the **Management**
    topic. The **Notification Manager** screen displays.
2. Click the **Machines**, **Schedules**, or **Jobs** tab in the
    **Notification Triggers** frame.
3. Click on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)
    **arrow** to expand the **Machines**, **Schedules**, or **Jobs**
    information.
4. Click on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)
    **arrow** to expand the **Notification Group** that contains the
    appropriate trigger.
5. Click the **trigger**.
6. Select the **checkbox** to the left of the **Send Email (SMTP)**.
7. Click the **Email** tab.
8. Enter, in the **To:** text box, one or more *SMTP email addresses*
    separated by semicolons (;).
9. Enter, in the **CC:** text box, one or more *SMTP email addresses*
    separated by semicolons (;).
10. Enter, in the **Bcc:** text box, one or more *SMTP email addresses*
    separated by semicolons (;).
11. Enter, in the **Subject:** text box, the *subject* for the email.
12. *(Optional)* Select the **JORS Output** checkbox to
    include JORS output for job triggers in the email.
13. *(Optional)* Select the **Exclude Prefix
    Information** checkbox to exclude the prefix information (Schedule
    Date, Machine Name, Schedule Name, Job Name) in the email.
14. Click the **Message** tab.
15. Enter the text to be included with the message.
16. Click the **Attachments** tab.
17. Click the **Attach File** button and enter a *path* or *filename*
    for the intended attachment. Alternatively, you can click the
    **Browse** button to select an existing file.
18. Click **Open** to return to the **Attach File** dialog which will
    show the path and filename selected.
19. Click the **OK** button to save the attachment to the email
    definition.
20. Click on the item in **Attachments** to edit.
21. Click the **Edit** button. The **Attach File** dialog displays.
22. Enter the *changes* to the pre-populated path and/or filename.
23. Click the **OK** button.
24. Click on the item in **Attachments** to delete.
25. Click the **Remove** button to delete the attachment from the email
    definition.
