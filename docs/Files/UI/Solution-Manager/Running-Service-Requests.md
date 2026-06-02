---
title: Running Service Requests
description: "Run a Service Request in Solution Manager's Self Service module to trigger an OpCon automation workflow."
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

# Running Service Requests

Use this page to run a Service Request from the Self Service module in Solution Manager. Running a Service Request triggers the automation workflow associated with that request — for example, a schedule build, job submission, or OpCon event.

## Before You Begin

To run a Service Request, your OpCon role must have the **View Service Requests** function privilege and your license must include the Self Service feature.

## Running a Service Request

To run a Service Request, complete the following steps:

1. Go to **Self Service** in Solution Manager.

2. Select the button for the Service Request you want to run.

   ![Sample Service Request buttons](../../../Resources/Images/SM/Running-Service-Requests.png "Sample Service Request buttons")

3. Proceed based on how the Service Request is configured:

   - If the Service Request has no user inputs and no confirmation prompt configured, it runs immediately and you are taken to the running status page. No further action is required.
   - If a confirmation prompt is configured with no user inputs, a confirmation page appears with no input fields. Select **Submit** to proceed or **Cancel** to discard the run request.
   - If user inputs are configured, a form appears. Complete the required input fields, then select **Submit** to run the request or **Cancel** to discard it.

**Result:** After you select **Submit**, a confirmation message displays the request name, submission time, and submission date. The running status panel shows the progress of the request.

## running Status

After submission, the running status panel tracks the request through the following states:

| Status | Description |
|---|---|
| Waiting | The request has been submitted and is queued for processing. |
| In Process | The request is actively running. |
| In Process (With error) | The request is running but one or more actions have encountered an error. |
| Completed | The request finished successfully. |
| Completed (With error) | The request finished but one or more actions encountered an error. |
| Zombified | The request entered an unrecoverable state and did not complete normally. |
| Submit Rejected | The request could not be submitted due to an error. |
| Unknown | The running status cannot be determined. |

Select **OK** to return to the Self Service page when you are finished reviewing the status.

## Disabled Service Requests

If you select a Service Request that has been disabled by an administrator, the form does not appear and a "Service Request disabled" message is displayed. Contact your administrator to enable the request before running it.

## Related Topics

- [Working in User Mode](Working-in-User-Mode.md)
- [Filtering Service Requests](Filtering-Service-Requests.md)
- [Self Service Overview](Self-Service-Section-Overview.md)
