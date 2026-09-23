---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Automatic Certificate Management for Agents
description: "Agents can request, receive, and automatically renew their own TLS certificates, so a certificate no longer expires unexpectedly or needs to be manually reissued and installed."
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

# Automatic Certificate Management for Agents

OpCon Agents communicate with OpCon over TLS, which requires each agent to have a certificate. Previously, an administrator had to manually create and install that certificate on every agent, then repeat the process before each certificate expired. Automatic Certificate Management lets an agent request, receive, and renew its own certificate automatically, so a certificate no longer expires unexpectedly and never needs to be manually reissued.

This page describes Automatic Certificate Management using the Windows Agent as the reference platform, since it has the most complete user interface for the feature. For platform-specific behavior, see the related topics at the end of this page.

## Turning it on

Automatic Certificate Management is configured in Solution Manager under **Library** > **Server Options**, on the **Agents** tab.

:::note
Configuring the **Agents** tab requires the **Maintain Server Options** function privilege, the same privilege required for every other Server Options tab.
:::

<!--
![Agents tab in Server Options](../../../Resources/Images/SM/Library/ServerOptions/Agents-Tab.png "Agents tab in Server Options")
-->

The **Agents** tab includes the following settings.

| Setting | Default | Description |
|---|---|---|
| **Automatically Provision TLS Certificates** | Off | When selected, OpCon automatically issues a certificate to any participating agent that connects without one. |
| **Automatically Renew Agent Certificates** | Off | When selected, OpCon automatically renews a participating agent's certificate before it expires. |
| **Manage Existing Manually-Installed Certificates** | Off | When selected, OpCon brings agents that already have a manually installed certificate under automatic management. |
| **Certificate Mode** | Self-Signed | The only available mode today. OpCon signs and issues Self-Signed certificates itself, with no outside certificate authority involved. Support for other certificate authorities is planned for a future release. |
| **Provisioning Approval** | Automatic | The only available option today. Every certificate request is issued automatically; approving a request manually is not yet available. |
| **Require Manual Enrollment Secret** | None | When set to **Manual**, a never-before-provisioned agent's first certificate request is rejected unless an administrator has already generated an enrollment secret for that agent. See [Enrollment Secret](#enrollment-secret-manual-enrollment-mode) below. |
| **Certificate Validity (days)** | 90 | How many days an issued certificate remains valid. |
| **Renewal Threshold (days before expiry)** | 30 | How many days before expiration OpCon begins renewing a certificate. |
| **Maximum Concurrent Renewals** | 10 | The maximum number of certificate renewals OpCon processes at the same time. |
| **Monitor Scan Interval (hours)** | 24 | How often OpCon scans for certificates approaching expiration. |
| **Certificate Common Name / SAN Pattern** | `<AGENT_HOSTNAME>` | The pattern OpCon uses for the certificate's common name and subject alternative name. |
| **ACME Directory URL**, **AD CS Enrollment URL**, **AD CS Certificate Template** | Blank; not editable | Reserved for a future release, for use once certificate modes other than Self-Signed become available. |

:::note
**Automatically Provision TLS Certificates** and **Automatically Renew Agent Certificates** both default to **Off**. Automatic Certificate Management takes no action on any agent until an administrator selects these options.
:::

## Agent-side configuration

No agent-side setup is required to participate in Automatic Certificate Management. Once an administrator selects **Automatically Provision TLS Certificates** and **Automatically Renew Agent Certificates** in Solution Manager, every OpCon Agent participates automatically the next time it connects.

If you need to exclude one specific agent — for example, an agent whose certificate you continue to manage manually — set that agent's local certificate-management setting to disabled. The exact setting name and file depend on the agent platform; see the related topics at the end of this page.

### What happens the first time an agent connects

The first time a participating agent connects without an installed certificate, it automatically:

1. Generates its own private key and a certificate request.
2. Sends the request to OpCon to be signed.
3. Installs the signed certificate that OpCon returns.

No administrator action is required after that point, except when **Require Manual Enrollment Secret** is set to **Manual** — see [Enrollment Secret](#enrollment-secret-manual-enrollment-mode) below.

Applying a new certificate changes how an agent listens for connections. Most agent platforms restart automatically to apply it; see the related topics at the end of this page for what to expect on your platform.

### Automatic renewal

OpCon renews a participating agent's certificate automatically before it expires — by default, an agent begins renewing its own certificate starting 30 days before the current certificate expires. No administrator action is required for renewal to happen.

## Agent Configuration view

The Agent Details page for an agent includes an **Agent Configuration** tab. It compares a small set of TLS-related communication settings — the JORS port, and the non-TLS and TLS file transfer ports — between what is configured in Solution Manager and what the agent itself most recently reported.

<!--
![Agent Configuration tab on the Agent Details page](../../../Resources/Images/SM/Agent-Configuration-View.png "Agent Configuration tab on the Agent Details page")
-->

If the values match, the tab displays only the agent's reported configuration.

If a value differs, OpCon displays a warning above the comparison table, **Configuration mismatch between Solution Manager and the agent:**, listing each mismatched setting alongside its Solution Manager value and its Agent value.

:::note
A configuration mismatch does not stop an agent from working. It means Solution Manager's configured value for one of these ports no longer matches what the agent is actually using — for example, if someone changed the agent's local configuration file directly. Compare the two values and update whichever one is out of date so they match again.
:::

If an agent has never reported its configuration, the tab displays **This agent has not reported its configuration yet.** instead.

## Enrollment Secret (Manual enrollment mode)

By default (**Require Manual Enrollment Secret** set to **None**), OpCon accepts a certificate request from any agent that does not have one yet. Selecting **Manual** instead means a never-before-provisioned agent's first certificate request is rejected unless an administrator has already generated an enrollment secret for that specific agent. Manual mode only affects an agent's first request — it does not affect certificate renewals.

Use Manual mode when you want to control exactly which new agents are allowed to receive a certificate automatically, rather than trusting any agent that can reach OpCon.

Selecting **Manual** makes an **Enrollment Secret** tab available on the Agent Details page for every agent that has already been saved.

To generate an enrollment secret, complete the following steps:

1. On the agent's Agent Details page, select the **Enrollment Secret** tab.
2. Select the **Generate Secret** button. If a secret was already generated for this agent, select **Generate New Secret** instead.
3. Copy the secret immediately. Solution Manager displays it once, with the warning **Copy this now - it will not be shown again.**, and does not display it again.
4. Provide the secret to whoever is configuring that agent, so it can be entered in the agent's local configuration before the agent's first certificate request.

**Result:** The **Enrollment Secret** tab shows **A secret is pinned for this machine, awaiting the agent's first request.**

To remove a secret before it is used, select the **Clear Pinned Secret** button. The tab returns to showing **No secret is currently pinned for this machine.**

## Certificate status and expiry

Each agent's certificate status appears on its Agent Details page, under **Communication Settings**, alongside its other communication settings.

| Field | Description |
|---|---|
| **Certificate Renewal Status** | The certificate's current state, as reported by OpCon: **Idle**, **Pending**, **CSR Requested**, **Cert Sent**, **Provisioning**, **Failed**, or **Manual Override**. |
| **Certificate Expiry Date** | The date the agent's current certificate expires. |

:::note
These two fields display plain status text. OpCon does not currently distinguish a certificate that is about to expire or has failed with a color or symbol — review **Certificate Expiry Date** directly, and check for a **Failed** status combined with the agent's log (see Troubleshooting below).
:::

## Troubleshooting a failed certificate request

If **Certificate Renewal Status** shows **Failed**, or an agent never receives a certificate, check the following:

- The agent's own log for certificate- or TLS-related entries. See the related topics at the end of this page for the exact log file and platform-specific detail.
- The **Agent Configuration** tab for a configuration mismatch that could be preventing the agent from communicating its status correctly.
- If **Require Manual Enrollment Secret** is set to **Manual**, confirm an enrollment secret was generated and entered into the agent's local configuration before its first certificate request. A missing or incorrect secret causes OpCon to reject the request.

## Related topics

- [Managing Agents](Managing-Agents.md)
- [Automatic Certificate Management: SAP Agent](Automatic-Certificate-Management-SAP.md)
- [Automatic Certificate Management: SAP BW Agent](Automatic-Certificate-Management-SAPBW.md)
- [Automatic Certificate Management: SQL Agent](Automatic-Certificate-Management-SQL.md)
- [Automatic Certificate Management: Unix Agent](Automatic-Certificate-Management-Unix.md)
