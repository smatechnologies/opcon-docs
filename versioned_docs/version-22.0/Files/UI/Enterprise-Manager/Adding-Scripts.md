---
lang: en-us
title: Adding Scripts
viewport: width=device-width, initial-scale=1.0
---

#  Adding Scripts

:::note
By default, a user who is a member of only one role will have any new scripts that are created assigned to that role.

If a user is either a super user (in the ocadm role or has All UI Functions) or a member of more than one role, then during script creation, the user will be presented with an Assign Script Roles dialog prompting the user to assign a role or roles to the new script. If users bypass role assignment during script creation, then subsequently only OpCon users with adequate privileges will be able to assign roles to scripts using the [Script Privileges](Managing-Script-Privileges.md) editor.
:::

To add a script:

Double-click on **Repository** under the **Scripts** topic. The **Script
Repository** screen displays.

Click the **Add** button on the toolbar. The **Add Script** dialog
displays.

Enter a *name* for the script.

:::note
SMA Technologies recommends using a naming convention that includes the script type (either as a prefix or suffix) for easier quick searching when selecting a script in the job definition.
:::

Enter a *description* for the script.

Provide the *script content*. You can either type the contents of the
script in the **Scripts** text box or click the **Open File** button to
browse to and locate a script to import.

:::note
You can import and store up to a 900KB script file for each version of a script.
:::

Select the **script type** from the **Type** drop-down list. If you wish
to add a new script type to use:

a.  Click the **Add** button next to the **Type** drop-down list.
b.  Enter the *information* for the new script type in the **Add Script
    Type** dialog.
c.  Click the **Save** button in the **Add Script Type** dialog.
d.  Select the **newly-added script type** from the **Type** drop-down
    list.

Enter *any relevant notes or comments* about the script.

Click the **Save** button in the **Add Script** dialog.

*(If prompted)* Assign a role or roles to the new script in the **Assign
Script Roles** dialog and click the **Save** button. Otherwise, proceed
to Step 10.

Click **Close ☒** (to the right of the **Script Repository** tab) to
close the **Script Repository** screen.
