# OpCon Terminology Glossary

> **Source:** Continuous OpCon Documentation | Last Updated: March 2026

---

## How to Use This Glossary

Within the world of workload automation and banking operations, the same concept can be described in many different ways. This glossary provides the preferred terminology used at Continuous for OpCon. Use it as the definitive reference for all customer-facing and internal communications.

This glossary is organized into two sections:

- **Customer-facing terms** (the main alphabetical glossary) — use these terms in all documentation, UI copy, and customer communication
- **Internal and legacy terms** (at the end) — these terms appear in source code or older documentation only. Never use them in customer-facing output. They are included so the AI can recognize them when encountered in source material and map them to the correct customer-facing term.

### Notation Key

| Notation | Meaning |
|----------|---------|
| **Words customers might use** | Alternative terms customers may use in conversation |
| **Do not use** | Terms to avoid in documentation and customer communication |
| **DRAFT** | Definition is still being revised or awaiting approval |
| **INTERNAL** | Internal-only term; not for customer-facing communication |
| **LEGACY** | Old term replaced by a current customer-facing term; appears in source code or historical content |

---

## A

### Agent

*noun*

The software component installed on a machine that communicates with OpCon, receives job instructions, executes jobs, and reports results back to OpCon. Each agent is associated with one machine definition in OpCon.

**Words customers might use:** machine, server, LSAM

**Do not use:** LSAM (in user-facing text), server, host (as a synonym for agent)

**See also:** Machine, Machine Group

---

### Audit

*noun*

An independent examination to assess the quality and effectiveness of internal controls, risk management, and compliance initiatives in an organization.

---

### Audit Log

*noun*

A list of user or system activities within an application. Activities are ordered chronologically by the date and time they occurred.

---

### Audit Trail

*noun*

A chronological record of activities that can be used to reconstruct — from start to finish — a sequence of events related to a specific operation, procedure, or event.

---

### Authentication

*noun*

Verifying that a user or system is who or what it claims to be and that it is permitted to access an application or resource.

---

### Authorization

*noun*

The process of determining what a user or system is permitted to do within an application.

---

### Automation Engineer

*noun*

A role within OpCon responsible for building and maintaining schedules, jobs, frequencies, and dependencies. See [opcon-learner-roles.md](opcon-learner-roles.md) for full audience guidance including knowledge domains, tone, assumed knowledge, and scope boundaries.

---

## B

### Baseline

*noun*

A set of information that has been formally verified and documented as of a specific point in time. Often used as a starting point for tracking changes over time.

---

### Batch User

*noun*

A user account defined on an agent machine under which OpCon executes jobs. Each job definition specifies which batch user will run the job. Batch users must be defined in OpCon before they can be assigned to jobs.

**Do not use:** service account (as a synonym for batch user in OpCon context)

---

### Business Analyst

*noun*

A role within OpCon responsible for documenting automation requirements and bridging communication between Application Owners and Automation Engineers. See [opcon-learner-roles.md](opcon-learner-roles.md) for full audience guidance including knowledge domains, tone, assumed knowledge, and scope boundaries.

---

## C

### Compliance

*noun*

The act of following regulatory requirements, standards, and best practices for the secure and controlled operation of automated processes. For financial institutions using OpCon, compliance includes ensuring that automated job processing is documented, auditable, and operating within defined controls.

---

### Compliance Team

*noun*

A role within OpCon responsible for reviewing job execution history, audit logs, and reports to verify that automated processes are operating as documented and within regulatory requirements. See [opcon-learner-roles.md](opcon-learner-roles.md) for full audience guidance including knowledge domains, tone, assumed knowledge, and scope boundaries.

---

### Container Job

*noun*

A job type that runs a sub-schedule. When a container job runs, OpCon builds and executes all the jobs in the referenced sub-schedule. Container jobs allow schedules to be nested within other schedules.

**See also:** Sub-Schedule

---

### Control

*noun*

Policies, procedures, and mechanisms that govern how automated processes execute and who can modify them. Controls enforce an organization's security and operational policies. Examples include role-based access controls within OpCon and change management procedures for modifying job definitions.

---

## D

### Daily Schedule

*noun*

The instance of schedules and jobs that OpCon builds for a specific calendar date. When OpCon builds the daily schedule, it evaluates each job's frequencies to determine which jobs to include. The daily schedule is distinct from the master job and schedule definitions stored in the Job Master.

**Words customers might use:** today's schedule, the schedule

---

### Dependency

*noun*

A relationship between two jobs that controls execution order. A job with a dependency will not start until the job or jobs it depends on have reached the required status. OpCon supports three dependency types: Requires, After, and Excludes.

**See also:** Requires Dependency, After Dependency, Excludes Dependency

---

## E

### Event

*noun*

An automated action that OpCon takes in response to a job or schedule status change. Events are defined as part of a job's configuration and can trigger actions such as sending notifications, setting threshold values, calling external APIs, or adding jobs to a running schedule.

**Do not use:** trigger, action (as synonyms for OpCon Event)

---

### Exit Code

*noun*

The numerical return value that a job sends to OpCon when it finishes executing. An exit code of `0` typically indicates success. Non-zero exit codes typically indicate failure. OpCon uses exit codes to determine job status and evaluate dependency conditions.

**Words customers might use:** return code, error code

---

### Excludes Dependency

*noun*

A dependency type that removes a job from the daily schedule if the job it depends on reaches a specified exit code or status. Use an Excludes dependency when a downstream job should not run if an upstream job ends in a certain condition.

**See also:** Dependency, Requires Dependency, After Dependency

---

## F

### Frequency

*noun*

A named set of rules that defines when a job or schedule is eligible to be built into the daily schedule. Frequencies specify which days of the week, days of the month, or calendar-based patterns a job should run on. A job without a frequency will not be built.

**Do not use:** trigger, schedule pattern, recurrence rule (as synonyms for frequency)

---

## G

### Global Property

*noun*

A system-wide variable defined in OpCon that can be referenced in job command lines, event parameters, and other fields using the `[[property_name]]` token syntax. Global properties allow common values (such as file paths or environment names) to be defined once and reused across many job definitions.

**Words customers might use:** system variable, environment variable, property token

---

## H

### Holiday Calendar

*noun*

A named list of specific dates on which certain frequencies are suppressed. When a frequency is configured to respect a holiday calendar, jobs using that frequency will not be built on dates listed in the calendar. Holiday calendars allow one-time exclusions (such as bank holidays) without modifying individual frequency definitions.

---

## J

### Job

*noun*

A single unit of automated work defined in the Job Master. A job specifies what to run, where to run it (agent), who runs it (batch user), when to run it (frequency), and under what conditions it depends on other jobs (dependencies). Jobs belong to schedules.

**Do not use:** task, process, step (as synonyms for OpCon job)

---

### Job Master

*noun*

The repository in OpCon where all job definitions are stored and maintained. Changes made in the Job Master affect future schedule builds but do not change jobs that are already in the daily schedule.

---

### Job Status

*noun*

The current state of a job instance in the daily schedule. OpCon assigns a status to each job as it moves through the build, wait, execution, and completion cycle. Key statuses include Qualifying, Waiting, On Hold, Running, Finished OK, Failed, and Cancelled.

---

## M

### Machine

*noun*

The OpCon record that defines a server and its connection settings for agent communication. Each machine record stores the agent type, network address, port, and communication parameters. "Machine" and "Agent" are used interchangeably in OpCon documentation; "machine" typically refers to the OpCon configuration record, while "agent" refers to the software running on the server.

**See also:** Agent, Machine Group

---

### Machine Group

*noun*

A named collection of machines in OpCon. Jobs assigned to a machine group can run on any available machine within the group, enabling load balancing and failover across multiple agents.

---

### Multi-Instance

*noun*

A configuration option that allows a job or schedule to run as multiple simultaneous instances. When multi-instance is enabled, the same job or schedule can be built and run more than once at the same time, typically with different property values distinguishing each instance.

---

## O

### On Hold

*noun*

A job or schedule status indicating that the job or schedule has been manually placed in a suspended state and will not run until it is released. Operations Staff use On Hold to temporarily pause automation without canceling it.

---

### Operations Staff

*noun*

A role within OpCon responsible for monitoring running schedules and responding to job failures during live processing. See [opcon-learner-roles.md](opcon-learner-roles.md) for full audience guidance including knowledge domains, tone, assumed knowledge, and scope boundaries.

---

### OpCon

*proper noun*

A workload automation platform built by Continuous (legacy name: Sycorr) for US financial institutions. OpCon automates, monitors, and manages batch processing across servers, applications, and platforms.

---

## P

### Principle of Least Privilege

*noun*

A security standard that states users and automated processes should have only the minimum access required to perform their intended function. In OpCon, this applies to both user roles within the OpCon interface and batch user accounts used for job execution.

---

## R

### Requires Dependency

*noun*

A dependency type that holds a downstream job until the upstream job reaches the specified exit code or status. The most common dependency type; typically used to ensure a job does not start until a prerequisite job has completed successfully.

**See also:** Dependency, After Dependency, Excludes Dependency

---

### After Dependency

*noun*

A dependency type that releases a downstream job once the upstream job reaches any finished status, regardless of whether it succeeded or failed. Use an After dependency when the downstream job should run after the upstream job finishes but does not depend on the outcome.

**See also:** Dependency, Requires Dependency, Excludes Dependency

---

### Role-based Access Control

*noun*

A method of assigning system permissions to users based on their job role. Within OpCon, role-based access control determines which schedules, jobs, machines, and administrative functions each user can view or modify.

---

## S

### SAM (Schedule Activity Monitor)

*noun*

OpCon's core processing engine. The SAM evaluates job and schedule statuses, resolves dependencies, sends job start instructions to agents, and processes events. The SAM runs as a Windows service on the OpCon server.

**Do not use:** SAM in user-facing documentation except when specifically referring to the Windows service. Prefer "OpCon" when describing system behavior in general terms.

---

### Schedule

*noun*

A named collection of jobs in OpCon. Schedules group related jobs together and define shared settings such as the start time for the schedule build. Jobs within a schedule can have dependencies on each other and on jobs in other schedules.

**Do not use:** workflow, job stream (as synonyms for schedule)

---

### Schedule Build

*noun*

The process by which OpCon generates the daily schedule by evaluating each schedule's and job's frequency definitions against the current date. Schedule builds can happen automatically at a configured time or be triggered manually.

---

### Separation of Duties

*noun*

A security principle that requires more than one person to be involved in completing a critical task or process. In OpCon, separation of duties applies to access controls that limit who can create, modify, and release jobs to production.

---

### Single Sign-On (SSO)

*noun*

An authentication method that allows a user to log in once and access multiple systems without re-entering credentials. OpCon supports SSO integration with organizational identity providers.

---

### Solution Manager

*noun*

The browser-based interface for OpCon. Solution Manager is the primary tool for Automation Engineers, Operations Staff, and System Administrators to configure, monitor, and manage OpCon.

**Do not use:** web UI, portal, web console (as synonyms for Solution Manager)

**See also:** Enterprise Manager (legacy)

---

### Sub-Schedule

*noun*

A schedule that is nested inside a container job. When OpCon runs the container job, it builds and executes the sub-schedule. Sub-schedules allow complex multi-step workflows to be modularized and reused across different parent schedules.

**See also:** Container Job

---

### System Administrator

*noun*

A role within OpCon responsible for installing, configuring, and maintaining the OpCon environment. See [opcon-learner-roles.md](opcon-learner-roles.md) for full audience guidance including knowledge domains, tone, assumed knowledge, and scope boundaries.

---

## T

### Threshold

*noun*

A named numeric variable in OpCon used for dependency management and flow control. Jobs can be configured to wait until a threshold reaches a specific value before running, and events can increment or decrement threshold values in response to job status changes.

**Words customers might use:** counter, flag, variable

---

### Token (OpCon API)

*noun*

An authentication credential used to make requests to the OpCon REST API. API tokens are generated within Solution Manager and included in the `Authorization` header of each API request.

---

## W

### Webhook

*noun*

A method that allows one system to notify another system when a specific event occurs. OpCon can send webhook notifications when jobs reach certain statuses, enabling integration with external monitoring tools, ticketing systems, and notification platforms.

---

---

## Internal and Legacy Terms

> **Do not use these terms in customer-facing documentation.** They are
> included so the AI can recognize them in source code, internal
> discussions, and legacy content — and map them to the correct
> customer-facing term.

### Enterprise Manager (EM)

*noun* — LEGACY

The legacy Windows-based desktop client for OpCon, replaced by Solution Manager. Enterprise Manager may still appear in older documentation, training materials, and customer installations that have not yet migrated to Solution Manager.

**In documentation:** Always use **Solution Manager**. Reference Enterprise Manager only when specifically documenting a feature or step that is available exclusively in the legacy client.

---

### LSAM (Legacy Schedule Activity Monitor)

*noun* — LEGACY

The legacy term for the agent software installed on machines that communicate with OpCon. LSAM appears throughout older documentation, connector names, and some platform-specific agent types (e.g., MFT LSAM, IBM i LSAM).

**In documentation:** Use **agent** in all general user-facing text. Reference "LSAM" only when documenting a specific platform agent where the term appears in the product UI or installer.

---

### Operations Center (OC)

*noun* — INTERNAL

Continuous's internal operations system used to manage day-to-day customer service activities. Not a customer-facing term.

---

### Plugin

*noun* — LEGACY / INTERNAL

Legacy internal code term for what is now called a **Connector** in customer-facing contexts. Appears throughout source code (`*Plugin*.cs`, plugin parameter definitions) but must not appear in customer-facing documentation.

**In documentation:** Use **Connector**. The term "plugin" may appear in C# source files and internal tooling — translate to "connector" in all customer-facing output.

---

---

## Quick Reference: Job Status Values

| Status | Meaning |
|--------|---------|
| **Qualifying** | OpCon is evaluating whether the job's frequency and start conditions are met |
| **Waiting** | The job's frequency is met but one or more dependencies have not been satisfied |
| **On Hold** | The job has been manually suspended and will not run until released |
| **Running** | The job is currently executing on its assigned agent |
| **Finished OK** | The job completed with the expected exit code |
| **Failed** | The job completed with an unexpected exit code |
| **Cancelled** | The job was manually cancelled before or during execution |
| **Skipped** | The job was manually bypassed for the current day |

---

## Quick Reference: Dependency Types

| Type | When to Use | Outcome if Condition Is Not Met |
|------|-------------|----------------------------------|
| **Requires** | Downstream job needs upstream job to succeed | Downstream job remains in Waiting status |
| **After** | Downstream job should run after upstream job regardless of outcome | Downstream job remains in Waiting status until upstream job finishes |
| **Excludes** | Downstream job should not run if upstream job reaches a certain status | Downstream job is removed from the daily schedule |

---

## Quick Reference: OpCon User Roles

| Role | Primary Responsibility |
|------|----------------------|
| **System Administrator** | Install, configure, and maintain OpCon infrastructure |
| **Automation Engineer** | Build and maintain schedules, jobs, frequencies, and dependencies |
| **Operations Staff** | Monitor the daily schedule and respond to job failures |
| **Application Owner** | Own the business processes being automated and validate outcomes |
| **Business Analyst** | Document requirements and bridge business and engineering teams |
| **Compliance Team** | Review execution history and generate audit evidence |

---

## Quick Reference: Key Terminology Rules

| Correct Term | Do Not Use |
|---|---|
| **Schedule** | "Workflow," "job stream" |
| **Job** | "Task," "process," "step" |
| **Agent** | "LSAM" (in user-facing text), "server," "host" |
| **Frequency** | "Trigger," "schedule pattern," "recurrence rule" |
| **Threshold** | "Counter," "flag" (without context) |
| **Solution Manager** | "Web UI," "portal," "web console" |
| **Event** | "Trigger," "action" (as OpCon-specific terms) |
| **Customer** | "Client" — always use "customer" |
