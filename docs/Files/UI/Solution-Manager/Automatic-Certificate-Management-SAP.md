---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: "Automatic Certificate Management: SAP Agent"
description: "How Automatic Certificate Management works on the SAP Agent, including how the JORS process picks up a new certificate."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
  - Agents
last_updated: 2026-09-22
doc_type: conceptual
---

# Automatic Certificate Management: SAP Agent

This page covers what is specific to the SAP Agent for [Automatic Certificate Management](Automatic-Certificate-Management.md). Read that page first for the concepts, Server Options settings, Agent Configuration view, Enrollment Secret, and troubleshooting steps shared across all agent platforms — this page only covers what differs for the SAP Agent.

## Provisioning and renewal

The SAP Agent supports the same automatic certificate provisioning and renewal described in the main guide. There is no separate opt-in for the SAP Agent — the same **Automatically Provision TLS Certificates** and **Automatically Renew Agent Certificates** settings on the **Agents** tab in Server Options apply to it.

## Certificate pickup and the JORS process

The SAP Agent's JORS process shares the same agent installation as the rest of the SAP Agent. When a new or renewed certificate is installed, the SAP Agent automatically restarts itself to put it into effect — this also brings the JORS process back up serving the new certificate. The restart is triggered automatically; no administrator action is required.

:::note
Because this is a brief restart of the agent rather than a live update, expect a short gap (typically only a few seconds) in the SAP Agent's availability while it restarts to apply a new certificate.
:::

## SAP-specific configuration

The SAP Agent uses the same certificate-related settings as the Windows Agent, in its own local configuration file, under **[General Settings]**:

- `UseSecureSocket` — turns TLS on or off for the agent's own communication.
- `TLSCertificateSerial` — the serial number of the certificate currently in use.
- `TLSClientValidation` — turns client certificate validation on or off.
- `TLSCheckCertificateRevocation` — turns certificate revocation checking on or off.
- `TlsCertManagement` — set to `FALSE` to exclude this specific agent from Automatic Certificate Management; defaults to enabled.
- `EnrollmentSecret` — where an administrator-generated enrollment secret is entered when **Require Manual Enrollment Secret** is set to **Manual**.

No additional installation steps are required — the components Automatic Certificate Management needs are included automatically in the SAP Agent installer.

## Agent Configuration view and troubleshooting

Use the shared [Agent Configuration view](Automatic-Certificate-Management.md#agent-configuration-view) and [troubleshooting steps](Automatic-Certificate-Management.md#troubleshooting-a-failed-certificate-request) in the main guide — they apply to the SAP Agent without any platform-specific differences.

## Related topics

- [Automatic Certificate Management for Agents](Automatic-Certificate-Management.md)
- [Automatic Certificate Management: SAP BW Agent](Automatic-Certificate-Management-SAPBW.md)
