---
title: Performing Agent Status Updates
description: "Update the communication status of one or more Agents from the Operations module in Solution Manager."
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

# Performing Agent Status Updates

The **Operations** module in Solution Manager lets you change the communication status of one or more Agents. You can enable full communication, restrict new job starts, or disable communication entirely.

## Update Agent communication status

To update Agent communication status, complete the following steps:

1. On the **Operations Summary** page, select one of the five status cards — **Not Responding**, **Limited**, **Stopped**, **Waiting Response**, or **Communicating** — or enter a name in the **Quick Search** field in the **Agents** section.

   ![Agent Operation Dials](../../../Resources/Images/SM/Agent-Operation-Dials.png "Agent Operation Dials")

   The **Agents** page opens.

2. (Optional) Use the **Filter Bar** to narrow the list by status, name, platform, group, socket, version, or TLS setting.

   ![Agent Filter Bar](../../../Resources/Images/SM/Agent-Filter-Bar.png "Agent Filter Bar")

   :::note
   You can also select a segment on the color-coded **Statistics Bar** above the list to filter by status. For more information, see [Managing Daily Processes](Managing-Daily-Processes.md#Interactive).
   :::

   :::note
   Select a column heading to sort the list in ascending or descending order.
   :::

3. Select one or more Agents from the list. Your selection appears in the [status bar](SM-UI-Layout.md#Status) at the bottom of the page as a breadcrumb.

   ![Agent Processes](../../../Resources/Images/SM/Agent-Processes.png "Agent Processes")

4. Select the Agent entry in the status bar to open the **Action** panel.

   ![Agent Status Update Panel](../../../Resources/Images/SM/Agent-Status-Update-Panel.png "Agent Status Update Panel")

   :::note
   You can also right-click any selected Agent in the list to open the **Action** panel.
   :::

5. (Optional) Select **Refresh available actions** to verify which status updates are valid for the current selection. This is useful when more than one Agent is selected, because all status update buttons are enabled by default regardless of the actual Agent states.

6. Select one of the following actions:

   | Action | Behavior |
   |---|---|
   | **Enable Full Comm. (Job Start Enabled)** | Allows the Agent to send job results to OpCon and allows OpCon to send job start requests to the Agent. |
   | **Enable Limited Comm. (Job Start Disabled)** | Prevents OpCon from sending new job start requests to the Agent. Jobs already running on the Agent continue to report completion status to OpCon. |
   | **Disable Communication** | Stops all communication between the Agent and OpCon in both directions. |

   If the selected action cannot be applied to the current selection, Solution Manager displays the message: *Cannot apply this action to the current selection.*

7. (Optional) When a single Agent is selected, select **View Active Jobs** to go to the **Processes** page filtered to show jobs in a Waiting, Held, or Running status for that Agent.

8. Close the **Action** panel when finished.

**Result:** The selected Agent(s) move to the requested communication state. A confirmation message appears when the update succeeds. If one or more updates fail, a warning or error notification identifies the affected Agents.

## Related topics

- [Performing Schedule Status Changes](Performing-Schedule-Status-Changes.md)
- [Performing Job Status Changes](Performing-Job-Status-Changes.md)
- [Performing Bulk Status Job Updates (Schedule Level)](Performing-Bulk-Job-Status-Updates-Schedule-Level.md)
- [Viewing Job Output](Viewing-Job-Output.md)
- [Viewing Job Configuration](Viewing-Job-Configuration.md)
- [Using PERT View](Using-PERT-View.md)
- [Managing Daily Processes](Managing-Daily-Processes.md)
