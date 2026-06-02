---
title: Schedule Instance Definition
description: "Use the Instance Definition tab in the Schedule Master editor to configure how OpCon builds multiple schedule instances — by property set, machine group, or named instance."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: reference
---

# Schedule Instance Definition

The **Instance Definition** tab in [Schedule Master](Using-Schedule-Master.md) controls how OpCon builds multiple copies of a schedule. You use this tab only when **Multi-Instance** is selected on the Schedule Details tab. When multi-instance is off, the tab is inactive and its controls are hidden.

The tab offers three mutually exclusive instance types. Select the type that matches your automation strategy:

| Option | Behavior |
|---|---|
| **Properties** | Builds one schedule instance for each set of instance properties you define. |
| **Machine Group** | Builds one schedule instance for each machine in a selected machine group. |
| **Named Instance** | Builds one schedule instance for each named instance you add. Each named instance has its own property set and optional exception rules. |

You can switch freely between **Properties** and **Machine Group**. Switching to or from **Named Instance** requires confirming that any existing data will be discarded.

:::note
**Named Instance** is not available when the schedule is configured as a subschedule. Selecting the **Sub-schedule** option on the Schedule Details tab disables the **Named Instance** option and switches the active type to **Properties** if **Named Instance** was previously selected.
:::

## Instance type details

### Properties

The Properties type defines one or more property sets that OpCon loads as schedule instance properties at build time. Each property set produces one schedule instance. This is the default type when multi-instance is first enabled.

### Machine Group

The Machine Group type builds one schedule instance for each machine in the selected machine group. OpCon filters the available machine groups based on the Agent platform type when any job on the schedule is configured to use the schedule instance machine.

If one or more jobs on the schedule use the schedule instance machine setting, you cannot remove the machine group without first changing those jobs.

### Named Instance

The Named Instance type lets you define reusable, named instances and assign individual property sets and exception rules to each one. Each named instance must have a unique name and at least one instance must exist when you save.

The Named Instance detail area contains two tabs:

- **Properties** — A key-value table where you define property name and property value pairs for the selected instance. Property names cannot contain the characters `='()\\,|` or end with a space, and duplicate property names are not allowed within a single instance.
- **Exceptions** — Exception rules that control how OpCon overrides job field values for jobs matching a specified job pattern within this instance.

You can right-click a named instance in the **Instances** list to copy it to another instance when multiple instances exist and the current instance has at least one property or job pattern defined.

## Available tasks

From the **Instance Definition** tab you can complete the following tasks:

- [Define Schedule Instances for Machines in Machine Groups](Defining-Schedule-Instances-for-Machines.md)
- [Define Properties for Single Instance Schedules](Defining-Properties-for-Single-Instance-Schedules.md)
- [Define Properties for Multi-Instance Schedules](Defining-Properties-for-Multi-Instance-Schedules.md)
- [Update Schedule Instance Properties](Updating-Schedule-Instance-Properties.md)
- [Delete Schedule Instance Properties](Deleting-Schedule-Instance-Properties.md)
- [Define Named Schedule Instances](Defining-Named-Schedule-Instances.md)
- [Delete Named Schedule Instances](Deleting-Named-Schedule-Instances.md)
- [Update Named Schedule Instance Properties](Updating-Named-Schedule-Instance-Properties.md)
- [Delete Named Schedule Instance Properties](Deleting-Named-Schedule-Instance-Properties.md)
- [Update Named Schedule Instance Exceptions](Updating-Named-Schedule-Instance-Exceptions.md)
- [Delete Named Schedule Instance Exceptions](Deleting-Named-Schedule-Instance-Exceptions.md)

For conceptual background, refer to [Instance Definition](../../../job-components/instances.md) in the Concepts section.
