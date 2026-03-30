---
title: Adding Job Frequencies
description: "Use this procedure to add Job Frequencies in the Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Adding Job Frequencies

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Job Frequencies in the Enterprise Manager.

:::note
Job frequencies cannot be added if the job uses a schedule-defined frequency.
:::

## When Would You Use It?

- You need to add Job Frequencies in Enterprise Manager
- The environment is expanding and requires additional Job Frequencies to support new automation workflows

## Why Would You Use It?

- **Extend automation scope**: Adding Job Frequencies to OpCon brings additional resources under centralized scheduling, monitoring, and event processing
- All additions are tracked in the OpCon audit log, recording who added the Job Frequencies and when

## Adding New Job Frequencies

To add a new frequency:

1. Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2. Select the **schedule** in the **Schedule** list
3. Select the **job** in the **Job** list
4. Select the **Frequency** tab in the **Job Properties** frame
5. Select the **Add** button. The **Frequency Definition Wizard** displays

6. Select the **Create new frequency** radio button
7. Enter a unique name in the **Frequency Name** text box
8. Select **Next**
9. Select the preferred radio button in the **When to Schedule** frame

    :::note
    Depending on the **When to Schedule** selection, some frames may become grayed out (e.g., selecting **Annual Plan** grays out all frames except the **Calendar** list).
    :::

10. Make any additional selections in the remaining frames, if required
11. Select **Forecast** to verify the frequency selections, then select **OK** to close the **Forecast** window
12. Select **Finish** to save the new frequency in the **Frequency list** and close the wizard
13. *(Optional)* Select the preferred **Job Build Status** radio button
14. **In the Start Time Estimation frame** *(all optional)*:
    - Choose an option from the **Estimation Source** list
    - Set the **Estimated Run Time**
    - If **User Defined** is selected for Estimation Source, set the **day(s)** and **time** for the offset under **Predicted Start Time Offset**
    - Select **Apply to All** to apply Estimation Source settings to all frequencies
15. **In the Job Execution frame** *(all optional)*:
    - Set the **SAM Priority**
    - Set the **Max Run time**
16. **In the Start Offset frame** *(optional)*:
    - Enter the *Start Offset time*
    - Select the **Absolute** or **Relative** radio button
To add New Job Frequencies, complete the following steps:

17. **In the Estimated Job Start Time frame**, review the following start times:
    - **Local**: Estimated start time based on the local machine running the EM
    - **Server**: Estimated start time based on the OpCon server
    - **Agent**: Estimated start time based on the agent machine where the job will run
18. **In the Latest Start Offset frame** *(optional)*:
    - Set the **Latest Start Offset time**
    - Select the **Absolute** or **Relative** radio button

19. *(Optional)* **In the Absolute Late to Start Offset frame**: Enter the *amount of time* before flagging the job as late
20. *(Optional)* **In the Absolute Late to Finish Offset frame**: Enter the *amount of time* before flagging the job as late
21. **In the When Job Fails frame** *(optional)*:
    - Select the **Retry** option to enable *Retry on Failure*
    - Enter the *number for Minutes Between Attempts*
    - Enter the *number for Maximum Attempts*
22. **In the When Job Finished Ok frame** *(optional)*: Select the desired option in the **Run Again** list to enable *Job Recurrence*:
    - **None**: No further action required
    - **Recurring Instances**: Enter the *Recurring Instance* details and choose what happens if a previous run time overlaps the next start time
    - **Restart Offset**: Enter the *Run Interval* and *Run Limits* details
23. *(Optional)* Select **Save** on the **Job Master** toolbar to save any frequency details changed in steps 14–22
24. Select **Close ☒** to close the **Job Master** screen

## Adding Existing Job Frequencies

To add an existing frequency:

1. Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2. Select the **schedule** in the **Schedule** list
3. Select the **job** in the **Job** list
4. Select the **Frequency** tab in the **Job Properties** frame
5. Select the **Add** button. The **Frequency Definition Wizard** displays

6. Select the **Using existing frequency** radio button
7. Select an **existing frequency** from the **Frequency** list, or use the **Find** button to locate it
8. Select **Next**
9. Select **Forecast** to confirm the frequency selection, then select **OK** to close the **Forecast** window
10. *(Optional)* Select **Back** to select another existing frequency or [create a new frequency](#Adding_New_Job_Frequency)
11. Select **Finish** to save the frequency in the **Frequency list** and close the wizard
12. Select **Close ☒** to close the **Job Master** screen

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: How do you save a new job frequencies record?**

After completing the required fields, select the **Save** button on the toolbar to save the job frequencies record.

**Q: Can you add job frequencies for multiple platforms?**

Yes. This page covers job frequencies for multiple platforms or contexts: Adding New Job Frequencies, Adding Existing Job Frequencies.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
