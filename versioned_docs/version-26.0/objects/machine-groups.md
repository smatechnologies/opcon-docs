---
title: Machine Groups
description: "A machine group displays user-defined machines with common characteristics and usage."
product_area: Core Concepts
audience: Automation Engineer, Application Owner
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Application Owner
  - Getting Started
last_updated: 2026-03-18
doc_type: conceptual
---

# Machine Groups

**Theme:** Configure  
**Who Is It For?** Automation Engineer, Application Owner

## What Is It?

A *machine group* displays user-defined machines with common characteristics and usage. All machines in a group must share a common operating system and the same data structure for their jobs (either all Non-XML or all XML).

The following fields apply to defining machine groups:

- **Name**: The name for the machine group
- **Documentation**: An area for descriptions, explanations, and notes for the defined machine group
- **Machine OS Type**: The OS Type for the machine group
- **Machine Assignment**: All assigned machines for the group. Machines must have matching operating systems and communication protocols

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Name | The name for the machine group | — | — |
| Documentation | An area for descriptions, explanations, and notes for the defined machine group | — | — |
| Machine OS Type | The OS Type for the machine group | — | — |
| Machine Assignment | All assigned machines for the group. | — | — |
## FAQs

**Q: What requirement must all machines in a group share?**

All machines in a machine group must share the same operating system and the same data structure for their jobs — either all Non-XML or all XML.

**Q: Can a machine group be used to assign jobs to any available machine in the group?**

Yes. Assigning a machine group to a job allows OpCon to run the job on any machine within the group, providing flexibility and load distribution across machines with the same OS type.

**Q: Does assigning a machine group to a role automatically grant privileges to the individual machines in that group?**

No. Machine Group Privileges do not automatically grant privileges to the individual machines in the group. Machine Privileges must be granted separately for each machine.

## Glossary

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
