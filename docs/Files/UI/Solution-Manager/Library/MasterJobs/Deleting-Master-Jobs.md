# Deleting Master Jobs

## Required Privileges

In order to delete a job, you must be in the ocadm role
or have at least all of the following privileges:

- **Schedule Privilege**: User must be at least in a role that has
  access to the job's parent schedule.
- **Access Code Privilege**: User must be at least in a role that has
  access to the assigned job access code with **Allow job updates**
  flag set to true.
- **Machine / Machine Group Privilege**: User must be at least in a role that has
  access to the assigned job machine or machines in the machine group.
- **Departmental Function Privilege**: User must be at least in a role
  that has All Function Privileges, or Modify Jobs In MasterSchedules, Delete Jobs From Master Schedules or Modify Jobs In Master Schedules privileges and department privilege.
- **Department Privilege**: User must be at least in a role that has
  access to the assigned job department or All Departments.

---

## Deleting a Job

To delete a Master Job, or multiple Master Jobs, go to **Library** > **Master Jobs**.

Select a job or jobs and select **Delete**. A confirmation dialog is displayed:

![Master Job Delete](../../../../../Resources/Images/SM/Library/MasterJobs/master-job-delete.png "Confirm Delete")

Select **Yes** to delete the job(s). Select **No** to cancel the operation.
