---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: "Automatic Certificate Management: Unix Agent"
description: "How Automatic Certificate Management works on the Unix Agent, including background certificate reload and full renewal parity with the other agent platforms."
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

# Automatic Certificate Management: Unix Agent

This page covers what is specific to the Unix Agent for **Automatic Certificate Management**. Read that page first for the concepts, Server Options settings, Agent Configuration view, Enrollment Secret, and troubleshooting steps shared across all agent platforms — this page only covers what differs for the Unix Agent.

## Provisioning and renewal

The Unix Agent supports the same automatic certificate provisioning and renewal described in the main guide, including renewing a certificate automatically ahead of its expiration date — the Unix Agent has full parity with the Windows, SAP, SAP BW, and SQL Agents for this feature. There is no separate opt-in for the Unix Agent — the same **Automatically Provision TLS Certificates** and **Automatically Renew Agent Certificates** settings on the **Agent Management** tab in Server Options apply to it.

## Certificate apply with no restart

The Unix Agent applies a new or renewed certificate to its already-running processes automatically, in the background, without restarting the agent. No administrator action and no service interruption is required.

## Unix-specific configuration

The Unix Agent uses its own configuration file, **`lsam.conf`**, with the following certificate-related settings:

- `use_TLS_SAM` — turns TLS on or off for the agent's communication with OpCon.
- `tls_cert_management` — set to `0` to exclude this specific agent from Automatic Certificate Management; defaults to enabled (`1`).
- `EnrollmentSecret` — where an administrator-generated enrollment secret is entered when **Require Manual Enrollment Secret** is set to **Manual**.

:::note
On the Unix Agent, `EnrollmentSecret` in `lsam.conf` is protected only by the file's own file-system permissions, the same protection already used for the agent's private key file. Restrict access to `lsam.conf` accordingly.
:::

## Installation

The Unix Agent requires OpenSSL to build and run — this is already a standard requirement for installing the Unix Agent, and no additional distro-specific packaging steps are required for Automatic Certificate Management.

## Agent Configuration view and troubleshooting

Use the shared **Agent Configuration view** and **troubleshooting steps** in the main guide — they apply to the Unix Agent without any platform-specific differences.

## Related topics

- **Automatic Certificate Management for Agents** *(publishing alongside this page — not yet linkable)*
- **Automatic Certificate Management: SQL Agent** *(publishing alongside this page — not yet linkable)*
