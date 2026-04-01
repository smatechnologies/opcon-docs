---
title: Running Service Requests
description: "Use this procedure to run Service Requests in Solution Manager."
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

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to run Service Requests in Solution Manager.

To run the Service Request:

Select the **Service Request** button.

![Sample Service Request buttons](../../../Resources/Images/SM/Running-Service-Requests.png "Sample Service Request buttons")

Proceed based on one of two prompts:

- If a confirmation message was configured with no user inputs, the Service Request stops and prompts you to select **Submit** to continue or **Cancel** to discard the run request
- If user inputs were configured, the Service Request stops so that you can configure the User Input field(s)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does running service requests do?**

Running service requests runs the specified action or command in OpCon.

## Glossary

**Service Request**: A Solution Manager feature that lets operators trigger predefined automation workflows using a simple form. Service Requests encapsulate schedule builds, job submissions, or events without requiring direct access to schedule definitions.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
