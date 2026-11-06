# Mission 10: The Enterprise Cloud Architect

**CCM101 – Cloud Computing**  
**Project:** CloudNova Technologies — Nextcloud File Sharing System

## Project Overview

CloudNova is a virtualized cloud infrastructure developed using Ubuntu Server, Docker Compose, Nextcloud, and MariaDB. The project demonstrates how to deploy a multi-tier application with persistent storage, firewall security, and automated database backups.

The system runs inside an Ubuntu Server virtual machine hosted on Oracle VirtualBox and can be accessed through the Windows host browser.

## Project Objectives

- Deploy a working Ubuntu Server virtual machine.
- Run Nextcloud and MariaDB using Docker Compose.
- Maintain application data through persistent Docker volumes.
- Secure the server using UFW firewall rules.
- Automate database backups using Bash scripting and Cron.
- Document the system configuration and maintenance procedures.

## Technologies Used

| Technology | Purpose |
|---|---|
| Windows 11 | Physical host operating system |
| Oracle VirtualBox | Virtual machine management |
| Ubuntu Server 24.04.5 LTS | Server operating system |
| Docker Engine | Container platform |
| Docker Compose | Multi-container deployment |
| Nextcloud | File-sharing web application |
| MariaDB 11 | Database management |
| UFW | Firewall security |
| Bash and Cron | Automated database backups |
| GitHub | Source code and documentation |

## System Architecture

The infrastructure consists of a Windows host, VirtualBox, an Ubuntu Server virtual machine, and two connected Docker containers.

Nextcloud is accessible through port **8080**, while MariaDB communicates internally through the Docker network. Docker volumes preserve application and database data.

The complete architecture is shown in `architecture-diagram.png`.

## Deployment and Access

The Docker Compose project is stored in `/opt/nextcloud` on Ubuntu Server.

To start and verify the application:

```bash
cd /opt/nextcloud
docker compose up -d
docker compose ps
```

Nextcloud was previously accessed using:

`http://192.168.1.78:8080`

The server IP address may change depending on the local network. Database credentials are stored separately in a private `.env` file.

## Security and Automation

The server uses UFW with a default-deny incoming policy. SSH port 22 and Nextcloud port 8080 are allowed.

A custom Bash script generates compressed MariaDB database backups. Cron schedules the script to run daily at **2:00 AM Philippine time**.

The system was tested for container deployment, application accessibility, file persistence after reboot, and backup generation.

## Project Files

| File | Description |
|---|---|
| `README.md` | Project overview and information |
| `architecture-diagram.png` | Infrastructure architecture |
| `docker-compose.yml` | Nextcloud and MariaDB configuration |
| `automation-script.sh` | Database backup automation |
| `operational-manual.md` | Deployment, security, and maintenance guide |
| `final-reflection.md` | Learning experiences and project reflection |

## Team Members and Responsibilities

| Member | Responsibility |
|---|---|
| Diana | Architecture planning and firewall security |
| Geron | Architecture diagram |
| Grace | Ubuntu Server setup and firewall configuration |
| Jhuniel | Docker, Nextcloud, and MariaDB deployment |
| Chynna | Backup automation and GitHub compilation |
| Steph | Operational manual and documentation |

## Conclusion

CloudNova demonstrates the integration of virtualization, containerization, networking, security, and automation into a working cloud computing laboratory environment.

The project provided hands-on experience in deploying, managing, securing, and documenting a multi-tier application.

## References

- [Docker Documentation](https://docs.docker.com/)
- [Nextcloud Administration Manual](https://docs.nextcloud.com/server/latest/admin_manual/)
- [Ubuntu Server Documentation](https://documentation.ubuntu.com/server/)
- [Oracle VirtualBox Documentation](https://www.virtualbox.org/wiki/Documentation)
