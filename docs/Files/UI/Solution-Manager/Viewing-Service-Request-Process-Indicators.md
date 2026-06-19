---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Viewing Service Request Process Indicators
description: "After you submit a Service Request, Solution Manager displays an running status page with a progress bar and running indicators that track concurrent and historical runs."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: reference
---

# Viewing Service Request Process Indicators

After you submit a Service Request and form validation succeeds, Solution Manager displays an running status page. The page shows a progress bar and a status label that update automatically as the Service Request runs.

## Running Status Page

The running status page appears immediately after a successful Service Request submission. It contains:

- A status label that identifies the Service Request name, submission time, and date.
- A progress bar that reflects how many steps have completed relative to the total.
- An **OK** button that returns you to the Service Request list.

The page refreshes on a periodic schedule until the running reaches a terminal state.

<!--
![Service Request running Status Waiting](../../../Resources/Images/SM/Service-Request-Process-Indicators.png "Service Request running Status Waiting")

![Service Request running Status In Process](../../../Resources/Images/SM/Service-Request-Process-Indicators_1.png "Service Request running Status In Process")
-->

### Running States

The status label and progress bar reflect the current running state. The following states are possible:

| State | Description |
|---|---|
| Waiting | The Service Request has been submitted and is queued. |
| In Process | The Service Request is running with no errors. |
| In Process with Error | The Service Request is running but one or more steps have encountered an error. |
| Completed | The Service Request finished successfully. |
| Completed with Error | The Service Request finished but one or more steps failed. |
| Zombified | The Service Request reached an unrecoverable state. |

When the running reaches **Completed** or **Completed with Error**, the progress bar is replaced by a status icon. A check-circle icon indicates success; an exclamation-circle icon indicates failure. A bomb icon indicates the **Zombified** state.

Select **OK** to return to the Service Request list.

## running Indicator on the Service Request Button

After a Service Request has been submitted at least once, an **running** indicator appears in the top-left corner of its button on the Service Request list.

<!--
![running Indicator on Service Request Button](../../../Resources/Images/SM/Service-Request-Indicator.png "running Indicator on Service Request Button")
-->

The indicator has two forms:

<!--
- ![running Indicator Concurrent](../../../Resources/Images/SM/Service-Request-Indicator_1.png "running Indicator Concurrent") — A number badge showing how many concurrent executions of this Service Request are still in progress (not yet in a terminal state).
- ![running Indicator Previous History](../../../Resources/Images/SM/Service-Request-Indicator_2.png "running Indicator Previous History") — A history marker indicating that the Service Request has at least one completed running record.
-->

Select the **running** indicator to open the running history for that Service Request.

## running History

The running history displays all processing and processed instances for the selected Service Request in a sortable table. The table includes the following columns:

| Column | Description |
|---|---|
| (Status icon) | A visual indicator of the overall running result: check-circle for success, exclamation-circle for failure, or bomb for zombified. No icon appears for executions still in progress. |
| Date | The date and time at which the Service Request was submitted. |
| State | The current or final running state. |
| Progress | A progress bar showing completed steps relative to the total. |
| User | The login name of the user who submitted the Service Request. |

The table defaults to sort by **Date** in descending order.

<!--
![Service Request running History Record](../../../Resources/Images/SM/Service-Request-Indicator_3.png "Service Request running History Record")
-->

Select **OK** to return to the Service Request list.
