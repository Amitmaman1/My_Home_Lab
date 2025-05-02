# Raspberry Pi Home Server & Media Management with Monitoring

## Overview
This Raspberry Pi setup is designed to serve as a versatile home server, combining media management, secure remote access, network-wide ad-blocking, and system health monitoring. The system integrates several services, such as file sharing, media streaming, and real-time system health checks, all running in Docker containers to ensure modularity, portability, and scalability.

By using Docker for all services, orchestrated with Docker Compose, the setup showcases an efficient approach to managing complex systems. This containerized architecture ensures that each service is isolated, easily deployable, and can be scaled or modified without affecting the rest of the system. Docker Compose automates the deployment and management of all containers, making the entire setup easy to configure, maintain, and scale, while reducing manual intervention.

This approach highlights the ability to design and maintain systems that are both reliable and adaptable to evolving needs.

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

## 6. **Immich - Media Backup and Management**
- **Description**: Immich is used for managing and backing up media files (images and videos).
- **Configuration**: Immich is running inside a Docker container, helping to manage media storage efficiently.

## Setup Details
- **Samba**: Shared file access is configured, with the Plex media directory stored in the `cloud` folder.
- **Plex**: The Plex server is running in a Docker container, connected to the Samba shared `cloud` folder for media storage.
- **Tailscale**: Secure remote access to the Raspberry Pi is configured through Tailscale, providing encrypted connections.
- **Pi-hole**: Pi-hole blocks advertisements and tracking at the network level, running in a Docker container.
- **Prometheus, Alertmanager, and Grafana**: These monitoring tools collect real-time metrics, handle alerts, and visualize system performance via Grafana dashboards.
- **Immich**: Immich runs inside Docker, allowing efficient media backup and management.

## Automation with Docker Compose
All services in this project are managed through Docker Compose, allowing for seamless deployment, configuration, and scaling. The use of Docker Compose automates the setup and orchestration of all containers, ensuring a consistent and reliable deployment process. With a single `docker-compose.yml` file, the entire system can be spun up or brought down with ease, making it a fully automated and manageable solution.

## Access Details
- **Samba**: Access shared files via `\\<raspberry-pi-ip>\cloud`.
- **Plex**: Access the Plex media server through its web interface at `http://<raspberry-pi-ip>:32400`.
- **Tailscale**: Connect securely to the Raspberry Pi using the Tailscale client.
- **Pi-hole**: Manage Pi-hole settings via its web interface at `http://<raspberry-pi-ip>/admin`.
- **Grafana**: View real-time monitoring dashboards at `http://<raspberry-pi-ip>:3000`.
- **Immich**: Access Immich for media management and backup via its web interface at `http://<raspberry-pi-ip>:3001`.

## Requirements
- Raspberry Pi running Raspberry Pi OS.
- Docker and Docker Compose installed and configured.

## System Architecture
This project leverages Docker for all key services, ensuring a clean, modular, and containerized setup. By running each service in isolation, the system is not only more reliable but also scalable and flexible, making it easier to update, maintain, and manage. The use of Docker Compose for automation further enhances the system's maintainability, reducing the need for manual intervention and providing a streamlined process for deployment and updates.
