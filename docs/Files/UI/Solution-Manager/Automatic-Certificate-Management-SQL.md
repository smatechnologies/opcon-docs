---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: "Automatic Certificate Management: SQL Agent"
description: "How Automatic Certificate Management works on the SQL Agent, including zero-downtime certificate apply and the reversible TLS setting."
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

# Automatic Certificate Management: SQL Agent

This page covers what is specific to the SQL Agent for [Automatic Certificate Management](Automatic-Certificate-Management.md). Read that page first for the concepts, Server Options settings, Agent Configuration view, Enrollment Secret, and troubleshooting steps shared across all agent platforms — this page only covers what differs for the SQL Agent.

## Provisioning and renewal

The SQL Agent supports the same automatic certificate provisioning and renewal described in the main guide. There is no separate opt-in for the SQL Agent — the same **Automatically Provision TLS Certificates** and **Automatically Renew Agent Certificates** settings on the **Agent Management** tab in Server Options apply to it.

## Certificate apply with no interruption

The SQL Agent applies a new or renewed certificate to its running listener immediately, with no restart and no interruption at all — the simplest of the agent platforms covered in this guide. Unlike the Windows, SAP, and SAP BW Agents, the SQL Agent does not need to restart itself to put a new certificate into effect.

## TLS can now be turned on and back off

The SQL Agent's `UseSecureSocket` setting — the same setting name already used by the Windows, SAP, and SAP BW Agents — now works both ways. Previously, once you turned TLS on for the SQL Agent, there was no supported way to turn it back off again. That has been fixed: enabling and disabling TLS on the SQL Agent now behaves the same way you already know from the other agent platforms.

## SQL-specific configuration

The SQL Agent uses the same certificate-related settings as the Windows Agent, in its own local configuration file, under **[General Settings]**:

- `UseSecureSocket` — turns TLS on or off for the agent's own communication; can now be turned back off after being turned on.
- `TLSCertificateSerial` — the serial number of the certificate currently in use.
- `TLSClientValidation` — turns client certificate validation on or off.
- `TLSCheckCertificateRevocation` — turns certificate revocation checking on or off.
- `TlsCertManagement` — set to `FALSE` to exclude this specific agent from Automatic Certificate Management; defaults to enabled.
- `EnrollmentSecret` — where an administrator-generated enrollment secret is entered when **Require Manual Enrollment Secret** is set to **Manual**.

No additional installation steps are required — the components Automatic Certificate Management needs are included automatically in the SQL Agent installer.

## Agent Configuration view and troubleshooting

Use the shared [Agent Configuration view](Automatic-Certificate-Management.md#agent-configuration-view) and [troubleshooting steps](Automatic-Certificate-Management.md#troubleshooting-a-failed-certificate-request) in the main guide — they apply to the SQL Agent without any platform-specific differences.

## Related topics

- [Automatic Certificate Management for Agents](Automatic-Certificate-Management.md)
- [Automatic Certificate Management: Unix Agent](Automatic-Certificate-Management-Unix.md)
