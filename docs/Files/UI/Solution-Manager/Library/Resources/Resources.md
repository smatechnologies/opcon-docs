---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Resources
description: "How OpCon Resources limit the number of jobs that run concurrently, and how to add, edit, and cross-reference them in Solution Manager."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-05-29
doc_type: conceptual
---

# Resources

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

A Resource is a numeric variable in OpCon that represents a finite pool. You assign jobs a number of resource units to require, and OpCon runs a job only when enough units are available. When the available units are exhausted, OpCon holds the remaining jobs until other jobs finish and release their units. Resources let you limit how many jobs run concurrently and prevent contention over a shared, capacity-limited dependency, such as connections to a database or a third-party system.

Available Resources are shown in a grid. The grid lists each Resource by **Name** and **Description**.

![Resource Grid](../../../../../Resources/Images/SM/Library/Resources/Resource-Grid.png "Resource Grid")

## How It Works

Each Resource defines a maximum number of available units. As jobs that require the Resource start, OpCon decrements the available units; as those jobs finish, it returns the units to the pool. A job that requires more units than are currently available waits until enough units are released.

### Add or edit a Resource

To add or edit a Resource, complete the following steps:

1. Open the Resources grid.
2. Select **Add** to create a Resource, or select a row and then select **Edit** to change an existing one.
3. In **Name**, enter a unique name for the Resource.
4. In **Description**, enter an optional description.
5. In **Max**, enter the maximum number of units available in the pool.
6. Save the Resource.

**Result:** The Resource is available to assign to jobs that require it.

![Resource Add](../../../../../Resources/Images/SM/Library/Resources/Resource-Add.png "Resource Add Screen")

:::note
The **Name** field is unique across Resources _and_ Thresholds.
:::

### View cross references

Select **Cross References** to see the list of master and daily jobs that use a particular Resource.

![Resource CrossReferences](../../../../../Resources/Images/SM/Library/Resources/Resource-CrossReference.png "Resource Cross References")

## FAQs

**Q: Where can you find Resources in OpCon?**

You can access Resources in Solution Manager or Enterprise Manager.

**Q: What is the difference between a Resource and a Threshold?**

Both limit when jobs run, and their names share the same uniqueness rule. A Resource represents a finite pool of units that jobs consume and release.
## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent runs and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
