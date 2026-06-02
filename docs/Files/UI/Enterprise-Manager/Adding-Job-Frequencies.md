---
title: Adding Job Frequencies
description: "Use this procedure to add job frequencies to a job in Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-06-02
doc_type: procedural
---

# Adding Job Frequencies

A job frequency defines the scheduling rules for a job, including which days it is eligible to run, timing offsets, retry behavior, and recurrence settings. You add frequencies to a job from the **Frequency** tab in Job Master.

:::note
You cannot add a job frequency if the job uses a schedule-defined frequency.
:::

## Adding a New Job Frequency

To add a new frequency to a job, complete the following steps:

1. Under the **Administration** topic, select **Job Master**. The **Job Master** screen displays.
2. In the **Schedule** list, select the schedule.
3. In the **Job** list, select the job.
4. In the **Job Properties** frame, select the **Frequency** tab.
5. Select **Add**. The **Frequency Definition Wizard** displays.
6. Select the **Create new frequency** option.
7. In the **Frequency Name** field, enter a unique name (maximum 20 characters).
8. Select **Next**.
9. In the **When to Schedule** frame, select the preferred option.

   :::note
   Depending on the **When to Schedule** selection, some frames may become unavailable. For example, selecting **Annual Plan** makes all frames unavailable except the **Calendar** list.
   :::

10. Make any additional selections in the remaining frames, then select **Forecast** to verify the scheduling rules. Select **OK** to close the forecast window.
11. Select **Finish** to save the frequency to the **Frequency list** and close the wizard.

**Result:** The new frequency appears in the **Frequency list** on the **Frequency** tab.

After adding the frequency, you can configure optional timing and execution settings for it in the **Frequency** tab:

**Job Build Status** — Select one of the following options:

- **On Hold** — Builds the job on hold.
- **Released** — Builds the job in a released state.
- **Do Not Schedule** — Prevents the job from being built.
- **To Be Skipped** — Builds the job set to skip.
- **Disable Frequency** — Disables this frequency for the job.

**Start Time Estimation** *(optional)*:

- **Estimation Source** — Select **Calculated**, **History**, or **User Defined**.
- **Estimated Run Time** — Enter the estimated run time in minutes.
- **Predicted Start Time Offset** — If **User Defined** is selected, set the day and time offset.
- Select **Apply to All** to apply the estimation source settings to all frequencies on the job.

**Job Execution** *(optional)*:

- **SAM Priority** — Set the scheduling priority.
- **Max Run time** — Set the maximum allowed run time in minutes.

**Start Offset** *(optional)*:

- Enter a start offset time.
- Select **Absolute** or **Relative**.

**Estimated Job Start Time** — Review the calculated start times:

- **Local** — Estimated start time based on the local machine running Enterprise Manager.
- **Server** — Estimated start time based on the OpCon server.
- **Agent** — Estimated start time based on the agent machine where the job runs.

**Latest Start Offset** *(optional)*:

- Enter a latest start offset time.
- Select **Absolute** or **Relative**.

**Late to Start Offset** *(optional)* — Enter the amount of time after the start offset before flagging the job as late to start.

**Late to Finish Offset** *(optional)* — Enter the amount of time after the start offset before flagging the job as late to finish.

**When Job Fails** *(optional)*:

- Select **Retry** to enable retry on failure.
- Enter the **Minutes Between Attempts**.
- Enter the **Maximum Attempts**.

**When Job Finishes Ok** *(optional)* — In the **Run Again** list, select one of the following:

- **None** — No recurrence action.
- **Restart Offset** — Configure the **Run Interval** (minutes from start to start, or minutes from end to start) and **Run Limits** (latest run time or number of runs).
- **Recurring Instances** — Enter specific absolute start times and configure the action on overlap.

Select **Save** on the **Job Master** toolbar to save any frequency configuration changes.

Select **Close** to close the **Job Master** screen.

## Adding an Existing Frequency to a Job

To add an existing frequency to a job, complete the following steps:

1. Under the **Administration** topic, select **Job Master**. The **Job Master** screen displays.
2. In the **Schedule** list, select the schedule.
3. In the **Job** list, select the job.
4. In the **Job Properties** frame, select the **Frequency** tab.
5. Select **Add**. The **Frequency Definition Wizard** displays.
6. Select the **Use existing frequency** option.
7. In the **Frequency** list, select the frequency you want to add.
8. Select **Next**.
9. Select **Forecast** to verify the frequency selection, then select **OK** to close the forecast window.
10. Select **Finish** to save the frequency to the **Frequency list** and close the wizard.

**Result:** The existing frequency is added to the job and appears in the **Frequency list** on the **Frequency** tab.

Select **Close** to close the **Job Master** screen.
