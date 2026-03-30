---
title: SAP Job Menu Options
description: "SAP jobs include right-click menu options to monitor and restart SAP Child Processes and view SAP Job Spools from within the Enterprise Manager."
product_area: Operations
audience: Operations Staff, System Administrator
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Operations Staff
  - System Administrator
  - Schedules
last_updated: 2026-03-18
doc_type: conceptual
---

# SAP Job Menu Options

**Theme:** Configure  
**Who Is It For?** Operations Staff, System Administrator

## What Is It?

SAP jobs include right-click menu options to monitor and restart SAP Child Processes and view SAP Job Spools from within the Enterprise Manager. Access these features using the **SAP Child Processes** and **SAP Job Spools** menu options from a job in Operations.

## When Would You Use It?

- SAP jobs include right-click menu options to monitor and restart SAP Child Processes and view SAP Job Spools from within the Enterprise Manager

## Why Would You Use It?

- **SAP Job**: SAP jobs include right-click menu options to monitor and restart SAP Child Processes and view SAP Job Spools from within the Enterprise Manager

## SAP Child Processes

Use **SAP Child Processes** to monitor and restart child processes.

- **Released**: Displays jobs with a Released status
- **Active**: Displays jobs with an Active status
- **Finished**: Displays jobs with a Finished status
- **Failed**: Displays jobs with a Failed status
- **Restarting**: Displays jobs with a Restarting status
- **Type Filter Text**: Filters child processes by partial or full name
- **Process**: Identifies the child process
- **Status**: Shows the status of the child process
- **Check All**: Selects all child processes listed
- **Clear All**: Clears all child process selections
- **Refresh**: Refreshes the list
- **Restart**: Restarts the selected child process(es)
- **Close**: Closes the dialog

## SAP Job Spools

Use **SAP Job Spools** to view individual spool files for an SAP job.

- **View SAP Job's Spools**: Displays the list of SAP spools
- **Refresh**: Refreshes the spool list
- **SAP Spool Details**: Displays spool details
- **Copy To Clipboard**: Copies highlighted log lines to the clipboard
- **Open external editor**: Opens the file in an external editor (e.g., Notepad)
- **Close**: Closes the dialog

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Released | Displays jobs with a Released status | — | — |
| Active | Displays jobs with an Active status | — | — |
| Finished | Displays jobs with a Finished status | — | — |
| Failed | Displays jobs with a Failed status | — | — |
| Restarting | Displays jobs with a Restarting status | — | — |
| Type Filter Text | Filters child processes by partial or full name | — | — |
| Process | Identifies the child process | — | — |
| Status | Shows the status of the child process | — | — |
| Check All | Selects all child processes listed | — | — |
| Clear All | Clears all child process selections | — | — |
| Restart | Restarts the selected child process(es) | — | — |
| View SAP Job's Spools | Displays the list of SAP spools | — | — |
| SAP Spool Details | Displays spool details | — | — |
| Copy To Clipboard | Copies highlighted log lines to the clipboard | — | — |
| Open external editor | Opens the file in an external editor (e.g., Notepad) | — | — |
## FAQs

**Q: What are the SAP Job Menu Options used for?**

The SAP Job Menu Options allow operations staff to monitor and restart SAP Child Processes and view SAP Job Spools directly from within the Enterprise Manager Operation views.

**Q: How do you filter SAP Child Processes by name?**

Use the **Type Filter Text** field to filter child processes by partial or full name in the SAP Child Processes dialog.

**Q: Can spool details be opened in an external editor?**

Yes. From the SAP Job Spools dialog, select **Open external editor** to open the spool file in an external application such as Notepad.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
