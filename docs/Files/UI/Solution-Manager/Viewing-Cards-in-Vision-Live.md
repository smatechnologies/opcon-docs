---
title: Viewing Cards in Vision Live
description: "Understand Vision Live card types, status colors, job count breakdowns, and how to navigate the card hierarchy in Solution Manager."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: reference
---

# Viewing Cards in Vision Live

The Vision Live page displays cards that represent groups of jobs organized by tag patterns. Use the date filter to view cards for a specific day. Cards refresh automatically at the configured processing interval.

<!--
![Vision Live Page](../../../Resources/Images/SM/Vision-Live-Page-User.png "Vision Live Page")
-->

## Card Types

Vision Live uses two card types: group cards and tag cards. Group cards have the top-right corner folded; tag cards do not.

![Vision Group Card](../../../Resources/Images/SM/Vision-Group-Card.png "Vision Group Card")

![Vision Tag Card](../../../Resources/Images/SM/Vision-Tag-Card.png "Vision Tag Card")

Tag cards defined to a remote instance display a badge on the right side. For more on the badge, see [Vision Card Colors](#vision-card-colors).

![Vision Remote Instance Tag Card](../../../Resources/Images/SM/Vision-Tag-Card-Remote-Instance.png "Vision Remote Instance Tag Card")

## Card Front and Back Views

Each card has two views: the front shows time information and the back shows job status counts.

![Vision Card Front and Back View](../../../Resources/Images/SM/Vision-Card-Front-and-Back-View.png "Vision Card Front and Back View")

**Front of card:**

| Field | Description |
|---|---|
| **Start Time** | The earliest start time for any jobs matching the tag pattern defined for the card or its child cards. A triangular icon appears next to the **Start Time** when a Frequency SLA is defined. |
| **Duration** | The total duration of all jobs matching the tag pattern defined for the card or its child cards. |
| **End Time** | The end time for any jobs matching the tag pattern defined for the card or its child cards. A triangular icon appears next to the **End Time** when a Frequency SLA is defined. |

**Back of card — job status counts:**

The back of each card shows the total number of jobs in each status group.

| Status group | Job statuses included |
|---|---|
| **Waiting** | Job to be Skipped, Late to Start, On Hold, Prerun Failed, Qualifying, Released, Wait Expression Dependency, Wait Job Conflict, Wait Job Dependency, Wait Machine, Wait Start Time, Wait Threshold/Resource Dependency, Wait to Start, Wait to Start; Forced |
| **Running** | Attempt to Start, Job Running, Job Running; To be Terminated, Prerun Active, Start Attempted, Still Attempting Start |
| **Finished** | Finished OK, Fixed, Marked Finished OK |
| **Warning** | Cancelled, Missed Start Time, Skipped |
| **Error** | Failed, Initialization Error, Marked Failed, Under Review |

:::tip Example
Each tag card shows a count of jobs in various statuses. Each group card shows the sum of counts from its child cards.

Example scenario:

- **Card1**: 7 Waiting, 11 Running, 8 Finished, 2 Error
- **Card2**: 5 Waiting, 10 Running, 3 Finished, 2 Error
- **Card3**: 2 Waiting, 1 Running, 5 Finished, 0 Failed

Card2 and Card3 are tag cards. Card1 is a group card whose counts are the sum of its children.

If Card2 has Pattern "tag1" and Card3 has Pattern "tag2", a job tagged with both "tag1" and "tag2" is counted once for Card2 and once for Card3. Card1 counts it twice. So Card1 shows 8 Finished, but only 7 jobs actually finished.
:::

## Card Hierarchy

Selecting a group card displays its child cards on a new page. Use the name links in the breadcrumb trail to return to a parent level.

<!--
![Vision Navigation](../../../Resources/Images/SM/Vision-Navigation.png "Vision Navigation")
-->

The **Edit** button appears in the breadcrumb trail only for users with the **Maintain Vision Workspaces** function privilege.

Selecting **Edit** next to the breadcrumb trail opens the Vision Settings page and displays the card hierarchy for the current branch. Edits made from a specific branch apply only to that branch. Selecting **Edit** from the Vision Home page gives a view of the entire hierarchy; edits apply to the entire tree.

<!--
![Vision Breadcrumb Trail Edit Button](../../../Resources/Images/SM/Vision-Breadcumb-Trail-Edit-Button.png "Vision Breadcrumb Trail Edit Button")

![Vision Breadcrumb Trail Home Edit Button](../../../Resources/Images/SM/Vision-Breadcumb-Trail-Home-Edit-Button.png "Vision Breadcrumb Trail Home Edit Button")
-->

:::note
You must have the appropriate privileges to view Vision Settings. For more information, refer to [Working in Admin Mode](Working-in-Admin-Mode_Vision.md).
:::

<!--
![Vision Settings Hierarchy](../../../Resources/Images/SM/Vision-Settings-Hierarchy.png "Vision Settings Hierarchy")
-->

## Card Links

Selecting a tag card defined to the current instance opens the Daily Processes page in the Operations module. For more information, refer to [Managing Daily Processes](Managing-Daily-Processes.md).

<!--
![Vision Daily Processes Page](../../../Resources/Images/SM/Vision-Daily-Processes.png "Vision Daily Processes Page")
-->

Selecting a tag card defined to a remote instance opens a separate Solution Manager page using the URL and settings defined for that remote instance and displays the Daily Processes page for the remote instance. For more on Vision remote instances, refer to [Managing Vision Remote Instances](Managing-Vision-Remote-Instances.md).

## Vision Card Colors

The Vision module uses icons and colors that change dynamically based on job status.

| Icon | Status | Description |
|---|---|---|
| ![Vision Card Finished OK](../../../Resources/Images/SM/Vision-Card-Finished-OK.png "Vision Card Finished OK") | **Finished OK** | A white check mark on a green background indicates all jobs completed with a *Finished OK* or *Marked Finished OK* status. |
| ![Vision Card Finished with Error(s)](../../../Resources/Images/SM/Vision-Card-Finished-with-Error(s).png "Vision Card Finished with Error(s)") | **Finished with Error(s)** | A white X on a red background indicates all jobs completed and at least one has a *Failed*, *Initialization Error*, or *Marked Failed* status. |
| ![Vision Card Finished with Warning(s)](../../../Resources/Images/SM/Vision-Card-Finished-with-Warning(s).png "Vision Card Finished with Warning(s)") | **Finished with Warning(s)** | A white exclamation point on an orange background indicates all jobs completed and at least one has a *Missed Start Time*, *Skipped*, or *Cancelled* status. |
| ![Vision Card In Process](../../../Resources/Images/SM/Vision-Card-In-Process.png "Vision Card In Process") | **In Process** | A blue gear on a white background indicates at least one job is in *Attempt to Start*, *Job Running*, *Job Running; To be Terminated*, *Prerun Active*, *Start Attempted*, or *Still Attempting Start* status, with no jobs in a failed or warning status. |
| ![Vision Card In Process with Error(s)](../../../Resources/Images/SM/Vision-Card-In-Process-with-Error(s).png "Vision Card In Process with Error(s)") | **In Process with Error(s)** | A red gear on a white background indicates at least one job is in process and another is in *Failed*, *Initialization Error*, or *Marked Failed* status. |
| ![Vision Card In Process with Warning(s)](../../../Resources/Images/SM/Vision-Card-In-Process-with-Warning(s).png "Vision Card In Process with Warning(s)") | **In Process with Warning(s)** | An orange gear on a white background indicates at least one job is in process and at least one is in *Missed Start Time*, *Skipped*, or *Cancelled* status. |
| ![Vision Card Waiting](../../../Resources/Images/SM/Vision-Card-Waiting.png "Vision Card Waiting") | **Waiting** | A gray hourglass on a white background indicates all jobs are in waiting states. |
| ![Vision Card None](../../../Resources/Images/SM/Vision-Card-None.png "Vision Card None") | **None** | A purple question mark on a white background indicates no jobs were found for the specified day. |
| ![Vision Card Computing](../../../Resources/Images/SM/Vision-Card-Computing.png "Vision Card Computing") | **Computing** | A spinning purple line on a white background indicates the card status is being calculated. This is a temporary status replaced at the next processing interval. |
| ![Vision Card Different Vision Frequency](../../../Resources/Images/SM/Vision-Card_Different-Vision-Frequency.png "Vision Card Different Vision Frequency") | *(Admin only)* | A white unlocked padlock on a gray background indicates the card does not match the Vision Frequency. This card appears only in Admin mode. |

| Icon | Name | Description |
|---|---|---|
| ![Vision Badge Icon](../../../Resources/Images/SM/Vision-Badge-Icon.png "Vision Badge Icon") | **Badge** | Indicates the card is defined to a remote instance. For more, refer to [Managing Vision Remote Instances](Managing-Vision-Remote-Instances.md). |
| ![Vision SLA Icon Gray](../../../Resources/Images/SM/Vision-SLA-Icon-Gray.png "Vision SLA Icon Gray") | **SLA (gray)** | Indicates a problem with a child of the group. |
| ![Vision SLA Icon Yellow](../../../Resources/Images/SM/Vision-SLA-Icon-Yellow.png "Vision SLA Icon Yellow") | **SLA (orange)** | Indicates a problem with a group or a tag on a tag card. |
| ![Vision Edit Button](../../../Resources/Images/SM/Vision-Edit-Button.png "Vision Edit Button") | **Edit** | Opens the card for editing. |
| ![Vision Delete Button](../../../Resources/Images/SM/Vision-Delete-Button.png "Vision Delete Button") | **Delete** | Deletes the card. |
