# 🏠 My Home Lab – Raspberry Pi DevOps Playground

## 🧠 Overview
This is my personal home-lab project, designed to simulate a real-world DevOps environment using a Raspberry Pi 5.  
It includes file sharing, media streaming, network-wide ad blocking, secure remote access, monitoring, and automation – all running in Docker containers.

The system is modular, automated, and monitored – reflecting key DevOps principles like containerization, observability, and IaC (Infrastructure as Code).

---

## 🎯 Goals
- Gain hands-on experience with production-grade DevOps tools
- Build and manage infrastructure on a low-power ARM device (Raspberry Pi 5)
- Secure remote access to home services via Tailscale
- Automate media sync and service health checks
- Track metrics and alerts using Prometheus, Grafana, and Alertmanager
- Centralize media and file sharing for personal use

---

## 🧰 Tech Stack

| Tool           | Purpose                               |
|----------------|----------------------------------------|
| **Raspberry Pi 5** | Physical host for all services     |
| **Docker Compose** | Container orchestration           |
| **Samba**       | File sharing (cloud folder)           |
| **Plex**        | Media streaming platform              |
| **Tailscale**   | Secure VPN access                     |
| **Pi-hole**     | Network-wide DNS-based ad blocking    |
| **Prometheus**  | System metrics collection             |
| **Grafana**     | Visual dashboards                     |
| **Alertmanager**| Alerting system                       |
| **Immich**      | Self-hosted photo backup system       |


---

## 🚀 Setup & Run

1. **Clone the repository**
```bash
git clone https://github.com/Amitmaman1/My_Home_Lab.git
cd My_Home_Lab
```
2. **Activate samba:**
Change the script to fit your needs and then run
```bash
./samba.sh
```
3. **Install Tailscale**
```bash
curl -fsSL https://tailscale.com/install.sh | sh
sudo tailscale up
```
> You'll be prompted to authenticate via browser. Once authenticated, your Pi will be accessible via Tailscale IP.

4. **Make sure Docker & Docker Compose are installed**

5. **Start services**
```bash
docker-compose up -d
```

6. **Access services**
- **Plex**: `http://<ip>:32400/web`
- **Grafana**: `http://<ip>:3000`
- **Pi-hole**: `http://<ip>`
- **Immich**: `http://<ip>:2283`

Access can also be done remotely via **Tailscale IP**


---

## 📈 Monitoring Stack

| Component      | Role                                   |
|----------------|----------------------------------------|
| Prometheus     | Scrapes metrics from containers         |
| Grafana        | Displays dashboards                    |
| Alertmanager   | Sends alerts based on Prometheus rules |

---

## 🧪 Automation & Features

- Media folder (`cloud`) is shared via **Samba**
- **Plex** is configured to index the same folder for streaming
- **Tailscale** provides secure remote access without public IP
- **Pi-hole** filters ads and trackers on the home network
- Monitoring dashboard with **Grafana + Prometheus**
- Infrastructure is fully containerized and reproducible


---

## 💬 Interview Notes

If you're reading this as a recruiter or engineer:

- This project demonstrates my initiative and ability to self-learn full DevOps practices.
- I used containers, secure access, monitoring, automation, and storage – on constrained hardware.
- Everything is documented, reproducible, and running in production at home.
- I'm excited to bring this mindset and technical approach into a real DevOps team.

---

## 📸 Screenshots (coming soon)
_Adding screenshots of dashboards, Plex, Pi-hole UI, and folder structure._

---

## 🙌 Author

Built by [Amit Maman](https://github.com/Amitmaman1)

