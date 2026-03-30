# Learner Role Guidelines

Guidelines for understanding the roles within OpCon. Use these guidelines to produce accurate, audience-appropriate documentation for each role.

## Section Reference

| Section | Purpose |
|---------|---------|
| Who they are | Understand the audience and correctly describe the role in documentation |
| Why they matter | Frame content around business value |
| Knowledge domains | Identify relevant topics — conceptual and durable, not tied to nav structure |
| Key terminology | Focus vocabulary when writing for this audience |
| This role does NOT | Prevent including out-of-scope content |
| Common overlap | Handle edge cases where roles share responsibilities |
| Tone adjustment | Calibrate writing style per audience |
| Assume they understand | Prevent over-explaining known concepts and under-explaining unfamiliar ones |

## Decision Framework

When writing documentation, identify the primary audience by role. Use that role's guidelines to determine appropriate terminology, scope, tone, and assumed knowledge. If a page serves multiple roles, use the least technical audience's tone while respecting the knowledge boundaries of all roles involved.

---

## 1. System Administrator

**Who they are:** Infrastructure staff responsible for installing, configuring, and maintaining the OpCon environment — servers, databases, agents, licensing, user accounts, and system-wide settings. In smaller organizations, the System Administrator and Automation Engineer roles are often held by the same person.

**Why they matter:** They keep OpCon running. Without proper installation, configuration, and maintenance, automation stops. They are the foundation everything else depends on.

**Knowledge domains:**
- Installing, upgrading, and patching OpCon and its components
- Hardware, software, and network requirements
- Agent and machine setup, communication configuration, and troubleshooting
- Database administration and connection configuration (SQL Server)
- User account and role management within OpCon
- Licensing and activation
- Backup, restore, and disaster recovery
- SSL certificates and security configuration
- Log management and diagnostics
- SMTP and notification configuration
- Global properties and system-wide settings

**Key terminology:** machine, agent, SAM (Schedule Activity Monitor), OpCon database, role, user account, license, diagnostic log, global property, batch user, machine group, communication settings

**This role does NOT:**
- Build or maintain job schedules (that is the Automation Engineer's responsibility)
- Monitor the daily schedule in real time (that is the Operations Staff's responsibility)
- Define what processes should be automated (that is the Application Owner's responsibility)
- Approve or document business automation requirements

**Common overlap:** In smaller organizations, System Administrators and Automation Engineers are often the same person. Documentation written for System Administrators should focus on infrastructure and system configuration, not job design or daily operations.

**Tone adjustment:** Highly technical audience. Comfortable with servers, databases, Windows services, certificates, and networking. Prioritize precision, exact steps, and technical accuracy. They appreciate concise instructions without excessive explanation of concepts they already understand.

**Assume they understand:** Windows Server administration, SQL Server, IIS, Active Directory, SSL certificates, DNS, SMTP configuration, Windows Services, and general networking concepts.

---

## 2. Automation Engineer

**Who they are:** The people who build and maintain job schedules — the job definitions, frequencies, dependencies, events, and thresholds that make up the automation workflows. They translate business requirements into configured automation and are responsible for the reliability and correctness of what OpCon executes.

**Why they matter:** They are the builders. Without well-designed jobs and schedules, automation either fails or doesn't exist. The quality of their work directly determines whether automated processes are reliable, auditable, and maintainable.

**Knowledge domains:**
- Creating and configuring schedules and jobs in the Job Master and Schedule Master
- Configuring job properties (job type, command line, agent, batch user, documentation)
- Defining frequencies and integrating holiday calendars
- Setting up job dependencies (requires, after, excludes) within and across schedules
- Creating and using thresholds and resources for dependency and flow control
- Configuring OpCon events (actions triggered by job statuses)
- Building and managing sub-schedules and container jobs
- Testing and validating job build behavior
- Reading job output and logs to debug failures
- Using tags and groups to organize jobs at scale
- Managing cross-schedule dependencies
- Working with the OpCon API for integrations and automation-of-automation

**Key terminology:** job, schedule, frequency, dependency, threshold, resource, event, sub-schedule, container job, job type, batch user, agent, exit code, restart, skip, job master, schedule master, holiday calendar, multi-instance

**This role does NOT:**
- Install or configure OpCon infrastructure (that is the System Administrator's responsibility)
- Monitor the daily schedule in real time during operations (that is the Operations Staff's responsibility)
- Define the business requirements for what to automate (that is the Application Owner's responsibility)

**Common overlap:** In smaller organizations, Automation Engineers also perform Operations Staff duties. Documentation written for Automation Engineers should focus on designing and configuring automation, not on real-time monitoring or infrastructure management.

**Tone adjustment:** Technical audience comfortable with scripting, command lines, and system concepts. They want precise, accurate instructions with clear explanations of how configuration choices affect behavior. They appreciate documentation that explains the reasoning behind design decisions — not just the steps.

**Assume they understand:** Basic scripting or command-line concepts, how job scheduling generally works, and intermediate-level Windows or Linux system administration. Do not assume they understand SQL Server database administration or infrastructure-level OpCon configuration.

---

## 3. Operations Staff

**Who they are:** The people responsible for monitoring and managing the daily schedule — watching jobs run, responding to failures, placing jobs or schedules on hold, and ensuring the day's automation completes successfully. They are OpCon's front line during live processing.

**Why they matter:** When something goes wrong, they respond. Without attentive operations coverage, failed jobs go undetected, processing deadlines are missed, and downstream business processes are impacted.

**Knowledge domains:**
- Monitoring jobs and schedules in real time using the Operations view and Solution Manager
- Understanding all job statuses and what each status requires in response
- Responding to job failures (restart, skip, mark as Failed-OK, cancel)
- Placing jobs and schedules on hold and releasing them
- Forcing jobs to run or be skipped outside their normal frequency
- Reading job output and OpCon logs to diagnose failures
- Subscribing to and managing notifications and alerts
- Escalating unresolved issues to Automation Engineers or System Administrators
- Using the daily schedule and history views to track completion

**Key terminology:** job status, failed, on hold, restart, skip, cancel, force run, daily schedule, operations view, job output, frequency override, schedule build, notifications

**This role does NOT:**
- Build or modify job definitions in the Job Master (that is the Automation Engineer's responsibility)
- Configure agents, machines, or system settings (that is the System Administrator's responsibility)
- Define business automation requirements (that is the Application Owner's responsibility)

**Common overlap:** In smaller organizations, Operations Staff members may also function as Automation Engineers. Documentation written for Operations Staff should focus exclusively on real-time monitoring and response — not on how jobs are designed or how infrastructure is maintained.

**Tone adjustment:** Task-oriented, time-pressured audience. They are often responding to an active problem. Instructions must be fast to scan and clearly stated, focused on the specific action required. Avoid lengthy explanations — they need to know what to do right now, not the design philosophy behind it.

**Assume they understand:** What automation is and why it matters, basic OpCon navigation, how to read a job status list, and who to escalate to when they cannot resolve an issue. Do not assume they understand job configuration, frequency design, or infrastructure-level troubleshooting.

---

## 4. Application Owner

**Who they are:** The business-side owners of the processes being automated. They know what the automation is supposed to accomplish, can define requirements, validate results, and escalate when an automated process fails to deliver the expected outcome. They typically do not configure OpCon directly.

**Why they matter:** They define what "success" looks like for a given automation workflow. Their requirements drive what Automation Engineers build, and their confirmation validates that automation behaves correctly. Without clear ownership, automation becomes unaccountable.

**Knowledge domains:**
- Understanding which schedules and jobs support their business process
- Reading job execution history reports to confirm automated results
- Communicating failures, changes, and requirements to the Automation Engineering team
- Understanding the business impact when a job fails or runs outside its expected window
- Reviewing and approving automation changes that affect their processes

**Key terminology:** schedule, job, job status, execution history, report, job output, frequency

**This role does NOT:**
- Configure jobs, schedules, or frequencies in OpCon
- Install or maintain OpCon infrastructure
- Monitor the daily schedule in real time
- Resolve technical job failures directly

**Common overlap:** Application Owners may work closely with Automation Engineers when validating requirements or reviewing proposed changes. Documentation written for Application Owners should focus on understanding outcomes and communicating requirements — not on configuring the system.

**Tone adjustment:** Business-focused, non-technical audience. Avoid OpCon-specific jargon. Focus on outcomes and business impact rather than system mechanics. Use plain language and concrete examples from their business domain.

**Assume they understand:** Their own business processes and the expected result of the automation they own. Do not assume they understand OpCon configuration, job types, frequency design, or technical failure diagnostics.

---

## 5. Business Analyst

**Who they are:** The people who document automation requirements, map business processes to OpCon workflows, and bridge communication between Application Owners and Automation Engineers. They typically do not configure OpCon directly, but need a deep enough understanding of how OpCon works to write accurate and buildable specifications.

**Why they matter:** Clear, accurate requirements prevent rework. Business Analysts translate what the business needs into documentation that Automation Engineers can implement correctly the first time, reducing miscommunication and configuration errors.

**Knowledge domains:**
- Understanding the OpCon job and schedule model well enough to write accurate requirements
- Reading and interpreting job execution history and reports
- Documenting process dependencies, timing requirements, and exception handling
- Mapping business processes to OpCon concepts (schedules, jobs, frequencies, dependencies, thresholds)
- Reviewing proposed automation designs for accuracy and completeness relative to requirements

**Key terminology:** schedule, job, frequency, dependency, threshold, event, job type, execution history, sub-schedule

**This role does NOT:**
- Configure jobs or schedules in OpCon
- Monitor daily operations
- Resolve technical job failures
- Make infrastructure decisions

**Common overlap:** Business Analysts often work closely with both Application Owners (gathering requirements) and Automation Engineers (validating designs). Documentation for Business Analysts should provide enough conceptual depth to write accurate specifications without diving into step-by-step configuration procedures.

**Tone adjustment:** Analytical and process-oriented audience. Comfortable with structured thinking and documentation but may not be deeply technical. Explain how OpCon concepts map to process concepts they already understand (e.g., "a frequency in OpCon is analogous to a recurrence rule for a calendar event"). Documentation should be thorough and precise.

**Assume they understand:** Business process mapping, requirements documentation, workflow concepts, and a general understanding of what automation is and why it exists. Do not assume deep technical knowledge of OpCon configuration, job types, or scripting.

---

## 6. Compliance Team

**Who they are:** Auditors, compliance officers, examiners, or information security staff who need visibility into OpCon's job execution history, audit logs, and reports to verify that automated processes are operating as documented and within regulatory requirements. They do not configure OpCon.

**Why they matter:** In regulated financial institutions, automated job processing must be demonstrably reliable, controlled, and auditable. The Compliance Team verifies that automation is operating within documented controls and can produce evidence for internal and external auditors.

**Knowledge domains:**
- Reading and exporting job execution history reports for specified time periods
- Understanding job audit logs and what they prove from a controls perspective
- Generating and downloading schedule activity reports
- Interpreting job statuses, failure codes, and manual overrides
- Understanding what controls exist around who can modify automation (role-based access in OpCon)
- Reviewing user access and role assignments within OpCon
- Generating and presenting audit artifacts to internal or external reviewers

**Key terminology:** job execution history, audit log, report, schedule activity, job status, exit code, role, user access, manual override, schedule build

**This role does NOT:**
- Configure jobs, schedules, or system settings
- Monitor the daily schedule in real time
- Resolve job failures
- Approve or design automation workflows

**Common overlap:** Compliance Team members may also be Application Owners in some organizations. Documentation written for the Compliance Team should connect reports and logs directly to regulatory controls — not explain how the automation was built or how OpCon is configured internally.

**Tone adjustment:** Evidence-focused audience. They care about what the system can prove, not how it works. Connect every report or log to what it demonstrates from a compliance standpoint. Use plain language and avoid internal OpCon jargon. Precision matters — document exactly what each report contains and what it does and does not show.

**Assume they understand:** The regulatory landscape for financial institutions (FFIEC, FDICIA, NCUA, SOX), what an audit trail is and why it matters, and the general concepts of operational risk and control frameworks. Do not assume they understand OpCon configuration, job type specifics, or automation design principles.
