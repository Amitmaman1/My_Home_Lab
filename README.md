# Raspberry Pi Home Server & Media Management with Monitoring

## Overview
This Raspberry Pi setup is designed to function as a comprehensive home server, combining media management, secure remote access, network-wide ad-blocking, and system health monitoring. The system integrates several services to provide a seamless, efficient, and secure home server experience. Key features include file sharing, media streaming, real-time system monitoring, and health checks.

## 1. **Samba - File Sharing Server**
- **Description**: Samba is configured to share files across the local network.
- **Configuration**: The media library for Plex is stored in the `cloud` directory, which is shared via Samba for network access.

## 2. **Plex - Media Management and Streaming**
- **Description**: Plex is used for organizing and streaming media content.
- **Configuration**: Plex is deployed in a Docker container, with the media directory located in the `cloud` folder shared via Samba.

## 3. **Tailscale - Secure Remote Access**
- **Description**: Tailscale provides secure remote access to the Raspberry Pi, ensuring encrypted connections over the internet.
- **Configuration**: Tailscale is set up for safe, VPN-like access to the device from anywhere.

## 4. **Pi-hole - Network-Wide Ad & Tracker Blocking**
- **Description**: Pi-hole is a network-wide ad blocker that prevents unwanted advertisements and tracking.
- **Configuration**: Pi-hole runs inside a Docker container, blocking ads across the entire network.

## 5. **Prometheus, Alertmanager, and Grafana - System Monitoring & Alerts**
- **Description**: Prometheus is used to collect system metrics, Alertmanager handles alerts, and Grafana provides real-time dashboards for monitoring the health and performance of the system.
- **Configuration**: All components are running inside Docker containers to provide a comprehensive monitoring solution.

## Setup Details
- **Samba**: Shared file access is configured, with the Plex media directory stored in the `cloud` folder.
- **Plex**: The Plex server is running in a Docker container, connected to the Samba shared `cloud` folder for media storage.
- **Tailscale**: Secure remote access to the Raspberry Pi is configured through Tailscale, providing encrypted connections.
- **Pi-hole**: Pi-hole blocks advertisements and tracking at the network level, running in a Docker container.
- **Prometheus, Alertmanager, and Grafana**: These monitoring tools collect real-time metrics, handle alerts, and visualize system performance via Grafana dashboards.

## Access Details
- **Samba**: Access shared files via `\\<raspberry-pi-ip>\cloud`.
- **Plex**: Access the Plex media server through its web interface at `http://<raspberry-pi-ip>:32400`.
- **Tailscale**: Connect securely to the Raspberry Pi using the Tailscale client.
- **Pi-hole**: Manage Pi-hole settings via its web interface at `http://<raspberry-pi-ip>/admin`.
- **Grafana**: View real-time monitoring dashboards at `http://<raspberry-pi-ip>:3000`.

## Requirements
- Raspberry Pi running Raspberry Pi OS.
- Docker installed and configured.
