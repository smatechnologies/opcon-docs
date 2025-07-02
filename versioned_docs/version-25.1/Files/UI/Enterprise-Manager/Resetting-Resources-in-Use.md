# Resetting Resources in Use

:::note
SAM is responsible for keeping track of the resources in use. If all resources are in use, the SAM waits until a resource is available before submitting the next job.
:::

If something unusual has occurred, and the "Resources in Use" value in
incorrect, the EM provides a button to allow an administrator to fix the
value. You should only use this feature if you are completely sure that
the value is inaccurate.

:::note
If the Resources in Use is reduced while jobs are still using the Resource, there is a strong possibility that OpCon will exceed the defined resource maximum.
:::

To reset a resource in use:

1. Double-click on **List** under the **Operations** topic. The **Daily
    list** screen displays.
2. Verify the completion of all jobs that are using the resource.
3. Double-click on **Resources** under the **Administration** topic.
4. Select the **resource** in the **Select Resource** drop-down list.
5. Click the **Edit Resource in Use value** button (to the right of the
    **Resources in Use** frame).
6. Enter the *correct* value.
7. Click the **OK** button to save the change.
8. Click the **Cancel** button to discard the change.
9. Click **Close ☒** (to the right of the **Resources** tab) to close
    the **Resources** screen. For more information, refer to
    [Resources](../../../objects/resources.md) in the
    **Concepts** online help.
