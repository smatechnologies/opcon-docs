# Escalation

An escalation in OpCon is a notification that has been marked for recurring notification, with an escalation rule, to one or more groups of people (defined within escalation groups). The escalation must be acknowledged to stop the escalation process. When someone acknowledges an escalation, this indicates to OpCon that the user read the notification. From there, it is up to the customer to take any required action.

:::tip Example
There are a group of critical jobs that require immediate attention if any of them fail. To ensure the proper action takes place, the OpCon administrator sets up the following:

- In Escalation Manager, the administrator:
  - Defines three escalation groups to represent **First**, **Second**, and **Third** level contacts.
  - Defines an escalation rule named **Three Level** where:
    - The delay between all repeat notifications is set to 5 minutes.
    - The **First** group is given 3 chances to acknowledge the escalation. If the escalation is not acknowledge in time, then the **Second** group gets notified.
    - The **Second** group is also given 3 chances to acknowledge the escalation. If the escalation is not acknowledge in time, then the **Third** group gets notified.
    - The **Third** group is given 5 chances to acknowledge the escalation. If the escalation is not acknowledge in time, the escalation process will be exhausted.
- In Notification Manager, the administrator:
  - Defines a Job Group with the critical jobs included.
  - Defines a trigger on the Job Group to detect a "Job Failed" event.
  - Defines an Email including all the details explaining the action to take when any of the jobs fail.
  - Applies the **Three Level** escalation rule for the trigger.

As as result of this configuration:

- When any of the jobs in the Job Group fail, notifications will go out to the **First** level escalation group right away.
- Anyone who can see the escalation in the Escalation Acknowledgment view in the EM can acknowledge the notification.
- The person who stops the escalation process should then immediately take care of the failed job.
- If the escalation is not acknowledge in time, the escalation process continues to the **Second** and **Third** groups.

:::
