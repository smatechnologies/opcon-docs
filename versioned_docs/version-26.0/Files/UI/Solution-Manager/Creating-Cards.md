---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Creating Cards
description: "To create a Group card, complete the following steps: 1."
product_area: Solution Manager
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

#  Creating Cards

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

### Create a Group Card

To create a Group card, complete the following steps:

1.  Select the **Create** button on the **Vision Live** page, or select the **+** button on the **Vision Settings** page
2.  *(Optional)* Select a *card* from the **Parent Card** list
3.  Select the **Group** radio button
4.  Enter a *Name* for the card
5.  Toggle the **All granted** switch to control whether the card inherits roles
6.  *(Optional)* Define *Roles* as **Revoked** or **Granted** using the arrow buttons
7.  *(Optional)* Define values for **Critical** and **Tolerable** to set the **QoS** range
8.  *(Optional)* Define values for **Critical** and **Tolerable** to set the **SLA** range
9.  *(Optional)* Add one or more **Frequencies**. Refer to [Adding Vision Frequencies](Adding-Vision-Frequencies.md) for details
10. Select **OK** to save the changes. The new card name displays on the Vision Settings page
11. Select **Save** in the bottom-left corner

### Create a Tag Card

#### Configure Tag Card Identity and Pattern

To configure the tag card name, pattern, and role settings, complete the following steps:

1.  Select the **Create** button on the **Vision Live** page, or select the **+** button on the **Vision Settings** page
2.  Select a *card* from the **Parent Card** list
3.  Select the **Tag** radio button
4.  Enter a *Name* for the card
5.  *(Optional)* Select a *remote instance* from the **Instance** list
6.  Select a *tag* from the **Pattern** list
7.  Select a *Job Offset* from the **Job Offset** list
8.  Toggle the **All granted** switch to control whether the card inherits roles
9.  *(Optional)* Define *Roles* as **Revoked** or **Granted** using the arrow buttons

#### Set QoS, SLA, Frequencies, and Save

To set the QoS and SLA ranges, add frequencies, and save the tag card, complete the following steps:

1. *(Optional)* Define values for **Critical** and **Tolerable** to set the **QoS** range
2. *(Optional)* Define values for **Critical** and **Tolerable** to set the **SLA** range
3. Add one or more **Frequencies**. Refer to [Adding Vision Frequencies](Adding-Vision-Frequencies.md) for details
4. Select **OK** to save the changes. The new card name displays on the Vision Settings page
5. Select **Save** in the bottom-left corner

## FAQs

**Q: How many steps does the Creating Cards procedure involve?**

The Creating Cards procedure involves 25 steps. Complete all steps in order and save your changes.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
