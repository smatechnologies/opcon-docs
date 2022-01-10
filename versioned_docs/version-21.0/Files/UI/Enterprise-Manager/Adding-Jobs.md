# Adding Jobs

To add a job:

Double-click on **Job Master** under the **Administration** topic. The
**Job Master** screen displays.

Click ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the
**Job Master** toolbar.

Enter a *job name* in the **Name** text box.

Ensure that the **Job Details** tab is selected in the **Job
Properties** frame.

Select a **job type** in the **Job Type** drop-down list.

Select a **department** in the **Department** drop-down list.

Select the **code** in the **Access Code** drop-down list.

*(Optional)* Select the **Allow Multi-Instance** checkbox. For more information, refer to [Multi-Instance Jobs](../../../operations/job-names.md#Multi-In) in the **Concepts** online help.

Select the **Disable Build** checkbox. For more information, refer to [Disable Build](../../../objects/jobs.md#disable-build) in the **Concepts** online help.

Select a **primary machine** on which to run the job.

*(Optional)* Select (in the order from 1 to 3) the **alternate machines** on which to run the job.

Select the **Use Schedule Instance Machine** checkbox to define the job to run on the machine for which the Schedule Instance is built.

:::note
The **Use Schedule Instance Machine** checkbox only appears when the Schedule Properties are set for **Multi-Instance** in the **Schedule Master** (refer to the steps to [Add a Schedule](Adding-Schedules.md)). The schedule must be [configured to build an instance for all machines in a group](Defining-Schedule-Instances-for-Machines.md) and the Job Type selected for the job must match the OS Type for the Machine Group configured for the schedule.
:::

*(Optional)* Select the **machine group** in the **Machine Group Selection** drop-down list.

a.  Select the **Run on Least Tasked Machine** radio button to run the job on one machine in the group.
b.  Select the **Run on Each Machine** radio button to run the job on all machines in the
    group.

:::note
Once a machine group is selected, the primary machine is cleared (if previously selected). The Machine Group selection is not available for File Transfer jobs.
:::

Enter the **job definition information** according to the **Job Type** selected in Step 6.

Click any of the following quick links to access instructions for defining platform-specific job information:

- [Defining BIS Job     Details](Job-Type-Management.md#Defining_BIS_Job_Details)
- [Defining Container Job     Details](Job-Type-Management.md#Defining_Container_Job_Details)
- [Defining File Transfer Job     Details](Job-Type-Management.md#Defining_File_Transfer_Job_Details)
- [Defining IBM i Job     Details](Job-Type-Management.md#Defining_IBM_i_Job_Details)
- [Defining Java Job     Details](Job-Type-Management.md#Defining_Java_Job_Details)
- [Defining MCP Job     Details](Job-Type-Management.md#Define_MCP_Job_Details)
- [Defining OpenVMS Job     Details](Job-Type-Management.md#Defining_OpenVMS_Job_Details)
- [Defining OS 2200 Job     Details](Job-Type-Management.md#Defining_OS_2200_Job_Details)
- [Defining SAP BW Job     Details](Job-Type-Management.md#Defining_SAP_BW_Job_Details)
- [Defining SAP R/3 and CRM Job     Details](Job-Type-Management.md#Defining_SAP_R/3_and_CRM_Job_Details)
- [Defining SQL Job     Details](Job-Type-Management.md#Defining_SQL_Job_Details)
- [Defining Tuxedo ART Job     Details](Job-Type-Management.md#Defining_Tuxedo_Job_Details)
- [Defining UNIX Job     Details](Job-Type-Management.md#Defining_UNIX_Job_Details)
- [Defining Windows Job     Details](Job-Type-Management.md#Defining_Windows_Job_Details)
- [Defining z/OS Job     Details](Job-Type-Management.md#Defining_z/OS_Job_Details)

For more information about entering the <Job Type\> definition information, refer to [Job Type Management](Job-Type-Management.md).

Click ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar.

Click **Close ☒** (to the right of the **Job Master** tab) to close the **Job Master** screen.
