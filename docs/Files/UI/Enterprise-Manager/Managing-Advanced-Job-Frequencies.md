---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Managing Advanced Job Frequencies
description: "Advanced frequency details enable or disable scheduling a job on specific dates or for defined periods of time."
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

# Managing Advanced Job Frequencies

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Advanced frequency details enable or disable scheduling a job on specific dates or for defined periods of time.

## Setting Advanced Job Frequencies

To set an advanced job frequency, complete the following steps:

1. Select on **Job Master** under the **Administration** topic
2. Select the **Schedule** in the **Schedule** list
3. Select the **job** in the **Job** list
4. Select the **Frequency** tab in the **Job Properties** frame
5. Select the **frequency** in the **Frequency list**

6. Select the **Advanced** button at the bottom of the **Frequency list** frame. The **Advanced Job Frequency** dialog displays
7. *(Optional)* Select **Start Scheduling on**. Enter a *date* in the text box or use the **Calendar** icon. Select **Update** to save or **Defaults** to reset
8. *(Optional)* Select **End Scheduling on**. Enter a *date* in the text box or use the **Calendar** icon. Select **Update** to save or **Defaults** to reset
9. *(Optional)* Select **Include in Schedule on**. Select the **Add** button, enter a *date* or use the **Calendar** icon, then select **OK**
10. *(Optional)* Select **Exclude from Schedule on**. Select the **Add** button, enter a *date* or use the **Calendar** icon, then select **OK**
11. *(Optional)* Select **Exclude Month from Schedule**. Select the **Add** button, choose a **month**, then select **OK**
12. Select the **Save** button to save all changes and close the dialog
13. Select **Close ☒** to close the **Job Master** screen

## Editing Advanced Job Frequencies

To edit an advanced job frequency, complete the following steps:

1. Select on **Job Master** under the **Administration** topic
2. Select the **Schedule** in the **Schedule** list
3. Select the **job** in the **Job** list
4. Select the **Frequency** tab in the **Job Properties** frame
5. Select the **frequency** in the **Frequency list**

6. Select the **Advanced** button. The **Advanced Job Frequency** dialog displays
7. In the **Include in Schedule on** frame, select the **existing date**, then select **Edit**. Enter a new *date* or use the **Calendar** icon, then select **OK**
8. In the **Exclude from Schedule on** frame, select the **existing date**, then select **Edit**. Enter a new *date* or use the **Calendar** icon, then select **OK**
9. In the **Exclude Month from Schedule** frame, select the **existing month**, then select **Edit**. Choose a **month**, then select **OK**
10. Select the **Save** button to save all changes and close the dialog
11. Select **Close ☒** to close the **Job Master** screen

## Deleting Advanced Frequency Settings

To delete Advanced Frequency Settings, complete the following steps:

1. Select on **Job Master** under the **Administration** topic
2. Select the **Schedule** in the **Schedule** list
3. Select the **job** in the **Job** list

4. Select the **Frequency** tab in the **Job Properties** frame
5. Select the **frequency** in the **Frequency list**
6. Select the **Advanced** button. The **Advanced Job Frequency** dialog displays
7. Select the **advanced frequency setting** to delete, then select **Defaults**. Repeat for additional settings
8. Select the **Save** button to save changes
9. Select **Close ☒** to close the **Job Master** screen


## FAQs

**Q: What does managing advanced job frequencies involve?**

Managing advanced job frequencies includes Setting Advanced Job Frequencies, Editing Advanced Job Frequencies, Deleting Advanced Frequency Settings. Access advanced job frequencies through the Enterprise Manager navigation pane.

**Q: Who can manage advanced job frequencies in OpCon?**

Users with the appropriate privileges assigned through their role can manage advanced job frequencies. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
