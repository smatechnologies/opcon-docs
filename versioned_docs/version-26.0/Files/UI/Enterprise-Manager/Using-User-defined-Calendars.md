---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Using User-defined Calendars
description: "Use this procedure to use User-defined Calendars in the Enterprise Manager."
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

#  Using User-defined Calendars

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to use User-defined Calendars in the Enterprise Manager.

## Using as Additional Holiday Calendars

To use as Additional Holiday Calendars, complete the following steps:

1.  Select on **Schedule Master** under the **Administration** topic
2.  Select the **schedule** in the **Schedule** list
3.  Select the **user-defined calendar** in the **Additional Holiday** list
4.  Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar
5.  Select **Close ☒** to close the **Schedule Master** screen

## Using as Annual Plan Calendars

1.  Select on **Schedule Master** under the **Administration** topic
2.  Select the **schedule** in the **Schedule** list
3.  Select the **Frequency** tab and select the **Add** button. The **Frequency Definition Wizard** displays

4.  Select the **Create new frequency** option
5.  Enter the *frequency name* in the **Frequency Name** field
6.  Select **Next**
7.  Select the **Annual Plan** option in the **When to Schedule** frame
8.  In the **Calendar** list, select the **calendar** to use as an Annual Plan
9.  *(Optional)* Select **Forecast** to preview the calendar with the selected Annual Plan, then select **OK** to close the Forecast screen
10. Select **Finish**
11. Select **Close ☒** to close the **Schedule Master** screen

## Using as Negative Annual Plan Calendars

1.  Select on **Schedule Master** under the **Administration** topic
2.  Select the **schedule** in the **Schedule** list
3.  Select the **Frequency** tab and select the **Add** button. The **Frequency Definition Wizard** displays

4.  Select the **Create new frequency** option
5.  Enter the *frequency name* in the **Frequency Name** field
6.  Select **Next**
7.  Select any option in the **When to Schedule** frame except **Annual Plan**
8.  In the **Calendar** list, select the **calendar** to use as the **Negative Annual Plan**
9.  *(Optional)* Select **Forecast** to preview the **Negative Annual Plan** calendar, then select **OK** to close the Forecast screen
10. Select **Finish**
11. Select the **x** to the right of the **Schedule Master** tab to close the screen

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What can you do with User-defined Calendars?**

User-defined Calendars allows you to using as additional holiday calendars, using as annual plan calendars, using as negative annual plan calendars.

**Q: Who has access to User-defined Calendars?**

Access to User-defined Calendars is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
