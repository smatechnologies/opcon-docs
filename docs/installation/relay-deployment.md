---
sidebar_label: 'Relay on Docker / Linux'
title: Relay Deployment on Docker and Linux
description: "Deploy the OpCon Relay as a native Linux systemd service or in a Docker container, as an alternative to the Windows Service deployment."
product_area: Installation
audience: System Administrator
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Installation
last_updated: 2026-09-22
doc_type: procedural
---

# Relay Deployment on Docker and Linux

**Theme:** Configure  
**Who Is It For?** System Administrator

## What Is It?

The Relay routes communication between the OpCon server and agents when OpCon is hosted in the cloud and the agents remain on your organization's own network. For background on relay architecture, primary/standby failover, and the **Relays / NetComs** page in Solution Manager, see [Relays overview](../Files/UI/Solution-Manager/Library/Relays/Relays-Overview.md).

In addition to the Windows Service deployment, the Relay can run:

- As a native Linux service managed by **systemd**
- In a **Docker** container

Both deployment types run the same relay software and read the same settings from a `SMANetComRelay.ini` configuration file as the Windows Service deployment. The file location and how you edit it are different — see [Configuration file](#configuration-file). For other differences, see [Behavior differences from the Windows Service deployment](#behavior-differences-from-the-windows-service-deployment).

:::note
Contact Continuous for the Relay container image reference and registry access appropriate for your environment before beginning a Docker deployment.
:::

## Prerequisites

Both the native Linux and Docker deployments require the following:

- A reachable **NetCommApi** endpoint URI for your OpCon environment. This is not the same endpoint as the main OpCon REST API.
- An **External Token** for a Super Admin user (for example, `ocadm`). See [Generating External Tokens](../Files/UI/Solution-Manager/Generating-External-Tokens.md).
- A **Client Name** and a relay **Name** to register the relay under. These correspond to the **Client Name** and **Name** columns on the **Relays / NetComs** page in Solution Manager. See [Relays reference](../Files/UI/Solution-Manager/Library/Relays/Relays-Reference.md).

For the native Linux deployment, you also need:

- A Linux machine (or WSL2 distribution) on the `linux-x64` architecture.
- Root or sudo access, to create the configuration and log directories.
- `systemd`, if you want the relay managed as a system service. Run `systemctl --version` to confirm systemd is available. Some WSL2 configurations do not include systemd — if yours does not, skip the systemd steps and run the relay directly. See [Running the relay without systemd](#running-the-relay-without-systemd).

For the Docker deployment, you also need:

- Docker installed and running.
- A persistent volume (a named volume or a bind mount) to preserve the relay's registration across container recreation. See [Persistent configuration volume is required](#persistent-configuration-volume-is-required).

## Installing the relay as a native Linux service

### Install the relay binary

The Linux relay binary is a self-contained, single-file executable — the target machine does not need .NET installed separately.

To install the relay binary, complete the following steps:

1. Copy the `SMANetcomRelay` binary for `linux-x64` to the target machine.
2. Create an installation directory and copy the binary into it:

   ```sh
   sudo mkdir -p /opt/opcon/relay
   sudo cp SMANetcomRelay /opt/opcon/relay/
   sudo chmod +x /opt/opcon/relay/SMANetcomRelay
   ```

3. Create the configuration and log directories, and a dedicated service account to own them:

   :::note
   The relay's configuration and log directories are fixed at `/app/config` and `/app/log`. These paths are not configurable and do not depend on where you installed the binary in the previous step.
   :::

   ```sh
   sudo mkdir -p /app/config /app/log
   sudo useradd -r opcon
   sudo chown -R opcon:opcon /app/config /app/log /opt/opcon/relay
   ```

**Result:** The relay binary is installed, and the fixed configuration and log directories exist and are owned by the service account.

### Register the relay

Registration links the relay to your OpCon environment and stores the resulting connection token in `SMANetComRelay.ini`. Registration only needs to run once — running it again is safe and has no effect once the relay is already registered.

To register the relay, complete the following steps:

1. Run the relay with the `register` command and your registration values:

   ```sh
   sudo -u opcon /opt/opcon/relay/SMANetcomRelay -m register \
     -c <ClientName> -n <RelayName> \
     -r <NetCommApiUri> -t <ExternalToken>
   ```

   | Flag | Value |
   |---|---|
   | `-m` | The setup command. Use `register`. |
   | `-c` | The **Client Name** to register the relay under. |
   | `-n` | The relay **Name**. |
   | `-r` | The NetCommApi endpoint URI. |
   | `-t` | The External Token for a Super Admin user. |
   | `-i` | (Optional) A machine ID for the relay. If omitted, the relay uses this machine's hostname. |

2. Confirm the command output shows a successful registration:

   ```text
   Netcom Relay is not registered. Attempting registration for <RelayName>....
   Netcom Relay registered successfully with Name <RelayName> and MachineId <hostname>
   NetcomRelay registered successfully. Start it with 'SMANetcomRelay action:run'.
   ```

   If registration fails, the command exits with a non-zero exit code and does not write a token to `SMANetComRelay.ini`.

**Result:** `SMANetComRelay.ini` contains a connection token for your OpCon environment, and the relay is ready to run.

### Install and start the systemd service

To install the systemd unit and start the relay as a service, complete the following steps:

1. Copy the unit file from the relay's packaging folder to the systemd directory:

   ```sh
   sudo cp smanetcomrelay.service /etc/systemd/system/
   ```

2. Reload the systemd unit files and enable and start the relay:

   ```sh
   sudo systemctl daemon-reload
   sudo systemctl enable --now smanetcomrelay
   ```

3. Confirm the service is running:

   ```sh
   sudo systemctl status smanetcomrelay
   ```

   The status shows `active (running)`.

**Result:** The relay starts automatically on boot and runs under systemd, which restarts it automatically if it fails.

:::note
The unit file gives the relay 60 seconds to shut down gracefully (`TimeoutStopSec=60`) before systemd force-stops it. A graceful shutdown drains in-flight communication and normally completes in a few seconds.
:::

### Running the relay without systemd

If your Linux machine or distribution does not have systemd available, run the relay directly instead of installing it as a service:

```sh
sudo -u opcon /opt/opcon/relay/SMANetcomRelay action:run
```

Stop the relay with `Ctrl+C`. This sends a termination signal that the relay handles the same way it handles `systemctl stop` — it drains its connections and exits promptly rather than exiting immediately or hanging.

## Deploying the relay in Docker

### Persistent configuration volume is required

The relay's registration (its connection token, Name, and machine ID) is written to `/app/config/SMANetComRelay.ini` inside the container. If `/app/config` is not backed by a persistent volume, that registration is lost every time the container is recreated, and the relay silently registers as a new relay identity each time.

To prevent this, the container checks whether `/app/config` is a separate mounted volume before starting. If it detects that `/app/config` is not mounted — for example, because you ran the container without a `-v` or `--mount` option — it refuses to start and reports an error instead of registering into a filesystem layer that will be discarded.

For a genuinely temporary or throwaway container, you can bypass this check by setting the `RELAY_ALLOW_EPHEMERAL_CONFIG` environment variable to `true`. Do not use this option for any relay you intend to keep.

### Environment variables

The container maps the following environment variables to the relay's registration flags. Set them when you start the container.

| Variable | Required | Description |
|---|---|---|
| `RELAY_CLIENT_NAME` | Yes | The **Client Name** to register the relay under. |
| `RELAY_NAME` | Yes | The relay **Name**. |
| `OPCON_API_URI` | Yes | The NetCommApi endpoint URI. |
| `OPCON_EXTERNAL_TOKEN` | Yes | The External Token for a Super Admin user. |
| `RELAY_MACHINE_ID` | No | A machine ID for the relay. If omitted, the relay uses the container's hostname. |
| `RELAY_ALLOW_EPHEMERAL_CONFIG` | No | Set to `true` to start the container without a persistent configuration volume. See [Persistent configuration volume is required](#persistent-configuration-volume-is-required). Do not use this for a relay you intend to keep. |

The container re-checks registration every time it starts. Once `SMANetComRelay.ini` already contains a connection token — because the configuration volume persisted it from a previous start — the container does not register again; it starts the relay directly.

### Run the relay container

To run the relay container against an existing OpCon environment, complete the following steps:

1. Run the container with a persistent volume for `/app/config` and the required environment variables:

   ```sh
   docker run -d --name relay \
     -v relay_config:/app/config \
     -v ./relay-log:/app/log \
     -e RELAY_CLIENT_NAME=<ClientName> \
     -e RELAY_NAME=<RelayName> \
     -e OPCON_API_URI=<NetCommApiUri> \
     -e OPCON_EXTERNAL_TOKEN=<ExternalToken> \
     <relay-image-reference>
   ```

2. Confirm registration succeeded:

   ```sh
   docker logs relay
   ```

   Expect the same success messages shown in [Register the relay](#register-the-relay).

**Result:** The relay container is running, registered against your OpCon environment, and its registration will survive container recreation because it is stored on the persistent volume.

### Docker Compose example

The following minimal Docker Compose service definition deploys the relay against an existing NetCommApi endpoint. Replace `<relay-image-reference>` with the image reference provided by Continuous for your environment, and set the environment variables shown for your OpCon environment (for example, in a `.env` file or your shell environment).

```yaml
services:
  relay:
    image: <relay-image-reference>
    volumes:
      - relay_config:/app/config
      - ./log:/app/log
    environment:
      - RELAY_CLIENT_NAME=${RELAY_CLIENT_NAME}
      - RELAY_NAME=${RELAY_NAME}
      - OPCON_API_URI=${OPCON_API_URI}
      - OPCON_EXTERNAL_TOKEN=${OPCON_EXTERNAL_TOKEN}
    stop_grace_period: 60s

volumes:
  relay_config:
```

:::note
This example does not include the network ports the relay uses to communicate with agents on your network. Those ports depend on your environment and agent configuration — contact Continuous for the port requirements for your deployment before exposing this service to your network.
:::

## Configuration file

Both the native Linux and Docker deployments read and write the same `SMANetComRelay.ini` file and the same settings as the Windows Service deployment. Only the file's location and how you edit it are different:

- **Location:** On Linux (native or Docker), the file is always at `/app/config/SMANetComRelay.ini`. This location is fixed and does not change based on where you installed the relay binary or where the container's working directory is set.
- **Editing:** Edit the file directly with a text editor. There is no installer-driven configuration step and no Windows registry equivalent on Linux. Some dynamic settings can also be viewed and updated from the **Configuration** tab on the **Relays / NetComs** page in Solution Manager — see [Managing relays](../Files/UI/Solution-Manager/Library/Relays/Managing-Relays.md#configuring-a-relay) — without requiring file access to the relay machine.

A freshly installed relay's `SMANetComRelay.ini` looks like this before registration:

```ini
[Service Settings]
ShortServiceName=SMA_NetCom
DisplayServiceName=SMA NetCom               # Name displayed in Services applet
SMANetComName=<Default>
RunMode=Managed                             # Must be Managed or Service

[SAM Database Communication Parameters]
SAMDBLoginTimeoutInSeconds=5
SAMCheckMsgsFromSAMInMilliseconds=500
SAMCheckLSAMConfigurationInMilliseconds=1000

[General Settings]
InitializationScript=""
TerminationScript=""
AllowUntrustedIntegrations=                 # Must be either ON or OFF

[Debug Options]
MaximumLogFileSize=150000
TraceSAMMessages=ON                         # MUST be either ON or OFF

[Service Start]
Msg=$SERVICENAME started.
Type=4

[Service Stop]
Msg=$SERVICENAME stopped.
Type=4
```

:::caution
On Linux and in Docker, `RunMode` under `[Service Settings]` must be set to `Service`. `RunMode=Managed` assumes a Solution Manager process on the same machine supervising the relay, which only applies to the Windows Service deployment. Registration sets `RunMode=Service` automatically; you would only see `Managed` here if the file was hand-edited or copied from a Windows installation. See [Exception Handling](#exception-handling) below if the relay exits immediately at startup with a `RunMode` error.
:::

## Behavior differences from the Windows Service deployment

| Area | Windows Service | Linux (systemd) and Docker |
|---|---|---|
| Self-registration | Registration and service installation happen together, either interactively or with the `install` command. | Registration is a separate step using the `register` command, independent of whether the relay runs under systemd or Docker. |
| `RunMode` | Supports `Managed` (supervised by Solution Manager) or `Service`. | Only `Service` is supported. The relay exits immediately with an error at startup if `RunMode=Managed` is set. |
| Startup and shutdown | Controlled by the Windows Service Control Manager. | Controlled by `systemd` (native Linux) or by the container runtime (Docker). Both send a termination signal that the relay uses to drain in-flight communication before exiting. |
| Uninstalling | An **uninstall** command removes the Windows service. | There is no uninstall command. Stop and disable the systemd unit (`systemctl disable --now smanetcomrelay`) or remove the container instead. |
| Configuration file location | Under the relay's installation directory. | Fixed at `/app/config/SMANetComRelay.ini`. |
| Log file location | Under the relay's output directory. | Fixed at `/app/log/`. |

## Operations

### Monitoring

- Confirm the relay is running with `systemctl status smanetcomrelay` (native Linux) or `docker ps` / `docker logs <container>` (Docker). A relay that registered successfully but is not communicating shows no exceptions in `SMANetComRelay.log` but also does not appear as **Communicating** on the **Relays / NetComs** page in Solution Manager — see [Relays reference](../Files/UI/Solution-Manager/Library/Relays/Relays-Reference.md#status-values).
- A relay that keeps re-registering on every restart, instead of reusing its stored connection token, almost always indicates that `/app/config` is not actually persisted — check the volume or bind mount configuration.

### Common Tasks

- **Restart the relay:** `systemctl restart smanetcomrelay` (native Linux) or `docker restart <container>` (Docker). A restart should not trigger a new registration — see [Persistent configuration volume is required](#persistent-configuration-volume-is-required).
- **View relay logs from the command line:** Read the log files directly at `/app/log/` (native Linux or inside the Docker container), or use `journalctl -u smanetcomrelay` for the systemd service's own output. You can also view the same log files from the **Relays / NetComs** page in Solution Manager — see [Viewing relay logs](../Files/UI/Solution-Manager/Library/Relays/Managing-Relays.md#viewing-relay-logs).
- **Change a dynamic setting:** Either edit `/app/config/SMANetComRelay.ini` directly, or use the **Configuration** tab on the **Relays / NetComs** page in Solution Manager. See [Configuring a relay](../Files/UI/Solution-Manager/Library/Relays/Managing-Relays.md#configuring-a-relay).

### Alerts and Log Files

The relay writes to the same three log files on every platform, all under `/app/log/` on Linux and Docker:

| Log file | Description |
|---|---|
| `SMANetComRelay.log` | Main relay log with configuration and communication information |
| `SMANetComRelayAPI.log` | NetCom API communication log |
| `SMANetComTrace.log` | Detailed trace log with TCP/IP and socket connection information |

## Exception Handling

**Startup fails immediately with a `RunMode` error** — On Linux or in Docker, the relay exits immediately at startup with an error stating that `RunMode=Managed` is not supported on non-Windows platforms — Open `SMANetComRelay.ini` and set `RunMode=Service` under `[Service Settings]`, then start the relay again.

**Docker container exits immediately with a persistent-volume error** — The container refuses to start and reports that `/app/config` does not appear to be a mounted volume — Mount a named volume or bind mount at `/app/config` and restart the container, or set `RELAY_ALLOW_EPHEMERAL_CONFIG=true` if the container is intentionally temporary.

**Registration fails with a missing-parameters message** — The `register` command reports missing required parameters instead of attempting registration — Confirm the Client Name, relay Name, NetCommApi URI, and External Token are all supplied (via CLI flags on Linux, or the corresponding environment variables in Docker), and that the External Token has not expired.

**The relay keeps re-registering on every restart** — Each restart produces a new registration instead of reusing the existing one — Confirm `/app/config` is backed by a persistent volume or bind mount, not just a directory inside the container's own writable layer; a lost or ephemeral configuration volume causes the relay to treat itself as unregistered on every restart.

**Relay does not appear as Communicating in Solution Manager** — The relay process is running and its log shows no exceptions, but it never reaches a Communicating status on the **Relays / NetComs** page — Confirm `OPCON_API_URI` (Docker) or the `-r` value used during registration (native Linux) points at the NetCommApi endpoint and not the main OpCon REST API endpoint, and confirm that endpoint is reachable from the relay's network.

## FAQs

**Q: Do I need .NET installed on the Linux machine to run the relay?**

No. The Linux relay binary is a self-contained, single-file executable that includes everything it needs to run.

**Q: Are the configuration settings different on Linux than on Windows?**

No. The Linux and Docker deployments read and write the same settings in the same `SMANetComRelay.ini` format as the Windows Service deployment. Only the file's location (fixed at `/app/config/SMANetComRelay.ini`) and how you edit it (directly, with a text editor) are different.

**Q: Can I run the relay on Linux without systemd?**

Yes. Run the relay binary directly with the `action:run` argument. You lose systemd's automatic restart-on-failure behavior, so consider another process supervisor if you need that on a non-systemd system.

**Q: What happens if I recreate a Docker container without a persistent volume for `/app/config`?**

The relay's registration is lost, and the relay registers as a new relay identity the next time the container starts. The container detects this common mistake and refuses to start unless you explicitly set `RELAY_ALLOW_EPHEMERAL_CONFIG=true`.

## Glossary

**Relay**: A communication component that routes messages between the OpCon server and agents when OpCon is hosted in the cloud and agents are on a customer's network premises.

**NetCom (SMA Network Communications Module)**: The communication component that handles the direct connection between OpCon and its agents when both are within the same infrastructure. A relay is not required in these configurations.

**External Token**: A credential generated for an OpCon user in Solution Manager, required to run an external event or, in this context, to register a relay against an OpCon environment.

**RunMode**: A relay configuration setting that determines how its lifecycle is managed. `Managed` is supervised by Solution Manager and applies only to the Windows Service deployment; `Service` runs the relay as an independent process and is required on Linux and in Docker.

**systemd**: The service manager used by most modern Linux distributions to start, stop, and supervise background services, including the native Linux relay deployment.

## Related topics

- [Relays overview](../Files/UI/Solution-Manager/Library/Relays/Relays-Overview.md)
- [Managing relays](../Files/UI/Solution-Manager/Library/Relays/Managing-Relays.md)
- [Relays reference](../Files/UI/Solution-Manager/Library/Relays/Relays-Reference.md)
- [SMA Network Communications Module](../server-programs/network-communications.md)
- [Generating External Tokens](../Files/UI/Solution-Manager/Generating-External-Tokens.md)
