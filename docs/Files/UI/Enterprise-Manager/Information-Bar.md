---
title: Information Bar
description: "The Information Bar is located at the bottom of the Enterprise Manager screen and is always visible when working with editors or views."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Information Bar

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The Information Bar is located at the bottom of the Enterprise Manager screen and is always visible when working with editors or views. It displays the SAM last pulse message, user information, and database connection details, reading left to right.

The Information Bar displays the following:

- **Escalation Acknowledgment**: Appears only when escalations require acknowledgment. Shows the count of pending acknowledgments and flashes a yellow pop-up. Selecting the icon opens the **[Escalation Acknowledgment](Using-Escalation-Acknowlegement.md)** screen
- **Status Line**: Blank until status information is available. When a job is selected in List view, displays the date, schedule, and job name
- **SAM Pulse**: A green color circles the icon when SAM is running. If SAM stops, the color turns red and a red dot appears in the center. When SAM restarts, the indicator returns to green. Hover over the icon to see the SAM pulse date and time
- **Connection Information**: Shows the logged-in user, SAM server name, and database name
- **Activity Information**: Flashes brief status messages on the right (e.g., *fetching bar chart data*)
- **Notifications**: License-related or other notifications appear above the Information Bar at login and require acknowledgment. An x in a red circle in the bar indicates an unacknowledged notification. Hover over the red circle to redisplay the notification

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Escalation Acknowledgment | Appears only when escalations require acknowledgment. | — | — |
| Status Line | Blank until status information is available. | — | — |
| SAM Pulse | A green color circles the icon when SAM is running. | — | — |
| Connection Information | Shows the logged-in user, SAM server name, and database name | — | — |
| Activity Information | Flashes brief status messages on the right (e.g., *fetching bar chart data*) | — | — |
| Notifications | License-related or other notifications appear above the Information Bar at login and require acknowledgment. | — | — |
## FAQs

**Q: What does Information Bar do?**

The Information Bar is located at the bottom of the Enterprise Manager screen and is always visible when working with editors or views. It displays the SAM last pulse message, user information, and da

**Q: Where can you find Information Bar in OpCon?**

Access Information Bar through the appropriate section in the Enterprise Manager or Solution Manager navigation.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
