# Adding Remote Instances

For conceptual information about each field or option, refer to [Remote Instances](../../../objects/remote-instances.md) in the
**Concepts** online help.

To add a remote instance:

Double-click on **Remote Instances** under the **Administration** topic.
The **Remotes Instances** screen displays.

Click ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon")
**Add** on the **Remote Instances** toolbar.

Enter the *remote instance name* in the **Name** text box.

Enter any relevant documentation for this remote instance in the
**Documentation** text box.

In the Remote OpCon frame:

Enter the *remote server name*.

Enter the *remote server database*.

Specify the authentication method to connect to the database.

- If using Windows Authentication, select the **Windows
    Authentication** checkbox.
- If using SQL Authentication, enter a valid *username* and *password*
    in the provided fields.

In the Options frame:

Select the **Mirroring On** checkbox if the remote instance uses
mirroring. This will ensure that the proper connection string is used.

Select the **Transparent IP Network Resolution** method: Auto, Disabled,
or Enabled.

:::note
Auto resolution, in most cases, in best for ensuring that the connection is successful.
:::

Click ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon")
**Save** on the **Remote Instances** toolbar.
