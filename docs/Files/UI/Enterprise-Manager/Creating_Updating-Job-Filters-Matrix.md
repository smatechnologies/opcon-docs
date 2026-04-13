---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Creating/Updating Job Filters
description: "Job filters in Enterprise Manager narrow the jobs displayed in operation views by status, department, access code, or tag."
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

#  Creating/Updating Job Filters

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Job filters in Enterprise Manager let operators narrow the jobs displayed in the Matrix view by status, department, access code, or tag. Filters can be created or updated at any time to focus on the jobs that matter.

To create or update a job filter, complete the following steps:

1.  Select on **Matrix** under the **Operation** topic. The **Matrix** screen displays
2.  Select **Open the job filter dialog** on the **Matrix** toolbar. The **Job Filter** dialog displays
3.  Select the tab for the filter criteria (e.g., **Job Statuses**, **Departments**, **Access Codes**, or **Tags**)
4.  *(Optional)* For each tab, select the specific option(s) for the job filter, or select **Select/Unselect All** to select all
5.  Select **OK** to save the job filter changes, or select **Cancel** to discard the changes
:::

## FAQs

**Q: How many steps does the Creating/Updating Job Filters procedure involve?**

The Creating/Updating Job Filters procedure involves 5 steps. Complete all steps in order and save your changes.

## Glossary


**Access Code**: A security label applied to jobs and schedules in OpCon. Users must have the matching privilege to view or act on objects tagged with a given Access Code.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. Used with function privileges to restrict which users can view or manage specific jobs.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
