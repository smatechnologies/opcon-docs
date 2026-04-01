---
title: Filtering Service Requests
description: "Use the Filter bar to filter Service Requests by «Category», «OpCon Role», and/or «Service Request name»."
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

# Filtering Service Requests

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use the Filter bar to filter Service Requests by «Category», «OpCon Role», and/or «Service Request name».

![Self Service Filtering Options](../../../Resources/Images/SM/Filtering-Service-Requests_new.png "Self Service Filtering Options")

## Querying with Wildcards

The Search/Filter bar supports wildcard characters:

- **\*** — matches zero or more characters
- **?** — matches exactly one character
- Default behavior performs a CONTAINS search
- Prefix the query with **=** for an exact (strict) match

## Filter Query Examples

Example dataset: "toto", "atotob", "titi", "tata", "atotobtata", "atotobbtata", "tototiti"

|Text Query|Returns|
|--- |--- |
|toto|"toto", "atotob", "atotobtata", "atotobbtata", "tototiti"|
|toto*tata|"atotobtata", "atotobbtata"|
|toto?tata|"atotobtata"|
|=toto|"toto"|
|=toto*|"tototiti"|
|=*toto|"toto"|
|=*toto*|"toto", "atotob", "atotobtata", "atotobbtata", "tototiti"|
|=*titi|"titi", "tototiti"|

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does Filtering Service Requests cover?**

This page covers Querying with Wildcards, Filter Query Examples.

## Glossary

**Service Request**: A Solution Manager feature that lets operators trigger predefined automation workflows using a simple form. Service Requests encapsulate schedule builds, job submissions, or events without requiring direct access to schedule definitions.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
