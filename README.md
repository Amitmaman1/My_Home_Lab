# Raspberry Pi Home Server & Media Management with Monitoring

## Overview
This Raspberry Pi setup is designed to serve as a versatile home server, combining media management, secure remote access, network-wide ad-blocking, and system health monitoring. The system integrates several services, such as file sharing, media streaming, and real-time system health checks, all running in Docker containers to ensure modularity, portability, and scalability.

By using Docker for all services, orchestrated with Docker Compose, the setup showcases an efficient approach to managing complex systems. This containerized architecture ensures that each service is isolated, easily deployable, and can be scaled or modified without affecting the rest of the system.

---

## 1. **Samba - File Sharing Server**
- **Description**: Samba is configured to share files across the local network.
- **Configuration**: The media library for Plex is stored in the `cloud` directory, which is shared via Samba.

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
- **Description**: Prometheus collects system metrics, Alertmanager handles alerts, and Grafana provides real-time dashboards for monitoring the health and performance of the system.
- **Configuration**:
  - **Prometheus** collects system data and metrics from various services running on the Raspberry Pi.
  - **Alertmanager** sends alerts (e.g., high CPU usage, disk issues) via email or messaging services.
  - **Grafana** visualizes the data collected by Prometheus using custom dashboards.
  - All tools run in Docker containers.

## 6. **Immich - Media Backup and Management**
- **Description**: Immich is used for managing and backing up media files (images and videos).
- **Configuration**: Immich runs inside a Docker container for managing mobile and local media libraries.

---

## Setup Details
- **Samba**: Shared access via the `cloud` folder.
- **Plex**: Uses the `cloud` folder from Samba as its media library.
- **Tailscale**: Provides encrypted remote access.
- **Pi-hole**: Blocks ads network-wide.
- **Prometheus, Alertmanager, Grafana**: Used for system metrics, alerts, and dashboards.
- **Immich**: Backs up and organizes media files.

---

## Access Details

| Service       | URL or Path                                     |
|---------------|-------------------------------------------------|
| Samba         | `\\<raspberry-pi-ip>\cloud`                     |
| Plex          | `http://<raspberry-pi-ip>:32400`                |
| Tailscale     | Access via [Tailscale Client](https://tailscale.com/) |
| Pi-hole       | `http://<raspberry-pi-ip>/admin`                |
| Grafana       | `http://<raspberry-pi-ip>:3000`                 |
| Prometheus    | `http://<raspberry-pi-ip>:9090`                 |
| Alertmanager  | `http://<raspberry-pi-ip>:9093`                 |
| Immich        | `http://<raspberry-pi-ip>:3001`                 |

---

## Requirements
- Raspberry Pi running Raspberry Pi OS
- Docker and Docker Compose installed and configured

---

## Automation with Docker Compose
All services are managed via `docker-compose.yml`, allowing:
- One-command deployment and teardown
- Easy maintenance
- Scalability for future services

---

## System Architecture
Each service runs in its own Docker container. This ensures:
- Clean modularity
- Easier updates and upgrades
- Reduced conflict between services
- Full control via Docker Compose
