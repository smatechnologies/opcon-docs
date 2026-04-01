---
title: Instance Definition
description: "The instance definition for a job is a place to define properties for one or more instances of the job."
product_area: Job Components
audience: Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Jobs
last_updated: 2026-03-18
doc_type: conceptual
---

# Instance Definition

**Theme:** Configure  
**Who Is It For?** Automation Engineer

## What Is It?

The *instance definition* for a job is a place to define properties for one or more instances of the job. The following options are provided:

- **Instances**: Defines the predefined properties for each instance of the job. When the job is placed in the Daily tables, these properties will be included as Job Instance Properties. To use the Job Instance Properties, use tokens in the job's command line or events to reference the Job Instance Properties (e.g., \[\[JI.PropertyName\]\])
  - The value of the first property for each instance is appended to the job name when it is added to Operations. A job's name in Operations cannot exceed 128 characters; therefore, the value for the first property should be short and informative
  - If the job is a multi-instance job, multiple strings of properties may be defined. By default, each string will be used to create an instance of the job. For more information, refer to [Using Properties for Automation](../objects/using-properties.md), [Job Instance Property Name Syntax](../objects/using-properties.md#job), and [Multi-Instance Jobs](../operations/job-names.md#multi-instance-jobs)
  - If only a single instance definition of properties were predefined in the Master, they will be selected for merging with any event-defined properties
  - If multiple instances of properties are defined in the Master, the first property defined in the event will be matched with the first property in each instance set
    - If a match is found, that instance set of properties will be selected for merging with the event-defined properties
    - If no match is found, the properties defined in the event will be used alone as a new instance of the schedule or job
  - Now, the user only has to define the properties that differ in value from those defined in the Master

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Instances | Defines the predefined properties for each instance of the job. | — | — |
## FAQs

**Q: What is an instance definition for a job?**

An instance definition is a set of predefined properties for one or more instances of a job. When the job is placed in the Daily tables, these properties are included as Job Instance Properties and can be referenced in the job's command line or events using tokens.

**Q: How do you reference a Job Instance Property in a command line?**

Use the token syntax `[[JI.PropertyName]]` to reference a Job Instance Property in a job's command line or event strings. OpCon resolves the token to the property's value when the job is submitted.

**Q: What happens to the job name when instance properties are defined?**

The value of the first property for each instance is appended to the job name in Operations. Since the total job name in Operations cannot exceed 128 characters, the first property value should be kept short and informative.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
