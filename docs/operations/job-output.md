---
title: Viewing a Job Output File
description: "When OpCon runs a job, the Agent on the target machine captures job output and saves it to one or more files that you can view through Solution Manager or Enterprise Manager."
tags:
  - Procedural
  - Operations Staff
  - System Administrator
  - Operations
last_updated: 2026-06-01
doc_type: procedural
---

# Viewing a Job Output File

When OpCon runs a job, the Agent on the target machine captures the output and saves it to one or more files. The files vary by platform based on operating system behavior — for example, UNIX saves standard out and standard error as separate files. OpCon retrieves these files using the Job Output Retrieval System (JORS), which is accessible through both Solution Manager and Enterprise Manager.

Job output is not available for Null Jobs, Container jobs, or jobs with an Unknown job type. The job must have run at least once — its status must be Running, Held, or a completed (Ended) state — before output is accessible.

:::note
Configuring TLS Security for job scheduling also secures JORS communications using the same digital certificate configuration. For details, refer to [TLS Security](../server-programs/network-communications.md#tls) in the **Server Programs** documentation.
:::

## Prerequisites

Before you can view job output, verify that all of the following conditions are met:

- The Agent is running on the target machine.
- The JORS component is running on the target machine.
- The Agent configuration file has job output capture enabled.
- The **JORS Port Number** in Enterprise Manager **Advanced Machine Properties** matches the JORS port configured in the Agent's configuration file.

For instructions on setting the JORS port in Enterprise Manager, refer to [Set JORS Port Number for the Machine](../Files/UI/Enterprise-Manager/Configuring-Advanced-Machine-Properties.md#Set_JORS_Port_Number_for_the_Machine).

## View job output in Solution Manager

To view job output in Solution Manager, complete the following steps:

1. Go to **Operations**.
2. Select the job whose output you want to view. The job must have a status of Running, Held, or a completed state.
3. In the right panel, select the **Job Output** tab.
4. Select **Refresh** to request the list of output files from the Agent.
5. Select the file you want to open.

**Result:** The **Job Output** dialog opens and displays the file content. From this dialog, you can select **Refresh** to reload the file, select **Export** to download the file as a `.log` file, or select **Close** to dismiss the dialog.

## View job output in Enterprise Manager

To view job output in Enterprise Manager, complete the following steps:

1. In the Operations views, right-click the job whose output you want to view and select **View Job Output**. The job must have run at least once.

**Result:** The **Job Output Retriever** dialog opens and displays a list of available output files. Double-click a file name to view its content. Select **Refresh** to request an updated file list, or select **Close** to dismiss the dialog.
