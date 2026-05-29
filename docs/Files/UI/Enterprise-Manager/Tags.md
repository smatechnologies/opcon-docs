---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Tags
description: "The Tags tab in the Job Master editor lets you define and maintain the tags associated with a job."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

#  Tags

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Tags** tab in the [**Job Master**](Using-Job-Master.md) editor lets you define and maintain the tags associated with a job. A tag is a short label that you assign to a job, such as `Critical` or a program group name. You can assign any number of tags to a job.

Tags help you classify jobs so you can group and locate them later. Tag names are built into the Daily tables during the Schedule Build process, and you can filter **Operations** views by these tags.

## How It Works

The **Tags** tab contains a **Choose Tag** field for selecting or typing a tag, an **Add** button, a **Delete** button, and a list that shows the tags currently assigned to the job.

To assign a tag, you either select an existing tag from the **Choose Tag** field or type a new tag name. The field offers the tags already defined in the database, so you can reuse an existing tag instead of creating a duplicate. Tag matching is case-insensitive: if you type a name that matches an existing tag in a different letter case, the existing tag is used.

When you work with tags, the following rules apply:

- A tag name can contain letters, numbers, hyphens, underscores, and spaces.
- A tag name can be up to `128` characters long.
- A job cannot have the same tag assigned more than once.

You can add a tag by selecting **Add**, or by typing the name in the **Choose Tag** field and pressing **Enter**. To remove a tag, select it in the list and select **Delete**, or press the **Delete** or **Backspace** key. The tags assigned to the job are saved when you save the job.

In the **Job Master** editor, you can relate tags to either the job or one of its frequencies:

- **Job Related** assigns the tags to the job itself.
- **Frequency Related** assigns the tags to a selected frequency. Select a frequency from the list before adding tags to it.

## Tasks

Within the **Tags** tab, you can:

-   [Find Tags](Finding-Tags.md)
-   [Delete Tags](Deleting-Tags.md)

## FAQs

**Q: Where do you find the Tags tab?**

The **Tags** tab is part of the **Job Master** editor. Open a job in **Job Master**, then select the **Tags** tab.

**Q: How many tags can a job have?**

You can assign any number of tags to a job.

**Q: Why are some tags assigned to a frequency instead of the job?**

In the **Job Master** editor, you can choose **Job Related** to assign tags to the job, or **Frequency Related** to assign tags to a specific frequency of the job. Select a frequency before adding frequency-related tags.

## Related Topics

- [Finding Tags](Finding-Tags.md)
- [Deleting Tags](Deleting-Tags.md)
- [Using Job Master](Using-Job-Master.md)

## Glossary

**Enterprise Manager**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built to run. Changes to Daily tables affect only the current day's automation.

**Frequency**: A named rule that defines when a job runs within a schedule.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which Agent, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
