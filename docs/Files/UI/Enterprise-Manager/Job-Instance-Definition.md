---
title: Job Instance Definition
description: "The Instance Definition tab in Job Master lets you predefine property sets for one or more instances of a job."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Jobs
last_updated: 2026-03-18
doc_type: conceptual
---

# Job Instance Definition

The **Instance Definition** tab in [Job Master](Using-Job-Master.md) lets you predefine property sets for one or more instances of a job. When OpCon builds the job into the Daily tables, these predefined properties are attached to the job as Job Instance Properties. You reference them in command lines and event strings using the token syntax `[[JI.PropertyName]]`.

The tab behaves differently depending on whether the job allows multiple instances:

- **Single-instance jobs** — only one property set can be defined. The **Allow Multi-Instance** option on the **Job Details** tab must be cleared.
- **Multi-instance jobs** — multiple property sets can be defined. Each set creates a separate instance of the job when it is built into the Daily tables. The **Allow Multi-Instance** option on the **Job Details** tab must be selected.

The value of the first property in each set is appended to the job name in Operations. Because a job name in Operations cannot exceed 128 characters, keep the first property value short and descriptive.

Property strings are entered in the format `PropertyName=PropertyValue`. To define multiple properties in a single string, separate each `PropertyName=PropertyValue` pair with a semicolon (`;`). Each complete string is stored as one row in the **Instances** table. The text field accepts up to 4,000 characters.

For conceptual background on instance definitions, refer to [Instance Definition](../../../job-components/instances.md) in the **Concepts** online help.

## Tasks

| Task | Description |
|---|---|
| [Define Properties for Single Instance Jobs](Defining-Properties-for-Single-Instance-Jobs.md) | Predefine one property set for a job that runs as a single instance. |
| [Define Properties for Multi-Instance Jobs](Defining-Properties-for-Multi-Instance-Jobs.md) | Predefine one or more property sets for a job that runs as multiple instances. |
| [Update Job Instance Properties](Updating-Job-Instance-Properties.md) | Edit an existing property set in the **Instances** table. |
| [Delete Job Instance Properties](Deleting-Job-Instance-Properties.md) | Remove a property set from the **Instances** table. |
