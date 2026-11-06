# Operational Manual
## CloudNova Technologies — Enterprise Cloud Architect

**Course:** CCM101 – Cloud Computing  
**Laboratory Activity:** Mission 10  
**Project:** Nextcloud File Sharing System

---

## 1. System Overview

CloudNova is a file-sharing system hosted on Ubuntu Server using Oracle VirtualBox. The system uses Docker Compose to run Nextcloud and MariaDB, with persistent storage, firewall protection, and automated database backups.

### System Specifications

| Component | Configuration |
|---|---|
| Host Machine | ASUS TUF Gaming A15 |
| Host OS | Windows 11 Home Single Language |
| Host RAM | 8 GB |
| Hypervisor | Oracle VM VirtualBox |
| Virtual Machine | Ubuntu Server 24.04.5 LTS |
| Hostname | cloudnova |
| Username | cloudadmin |
| VM Resources | 3 vCPUs, 2304 MB RAM, 25 GB disk |
| Network Mode | Bridged Adapter |
| Server IP | 192.168.1.78 |
| Application | Nextcloud |
| Database | MariaDB 11 |
| Application Port | 8080 |
| SSH Port | 22 |

The IP address may change when connecting to another network. Check the current address before accessing the server.

## 2. Ubuntu Server Configuration

Ubuntu Server was installed in VirtualBox with 3 virtual CPUs, 2304 MB RAM, and a 25 GB virtual disk. The network adapter was configured in Bridged Mode to allow communication between the Ubuntu VM and Windows host.

OpenSSH Server was enabled for remote administration.

To verify the server information, open the Ubuntu terminal and run:

```bash
hostnamectl
hostname -I
free -h
```

To connect from Windows PowerShell:

```powershell
ssh cloudadmin@192.168.1.78
```

If the SSH service is inactive, start it using:

```bash
sudo systemctl enable --now ssh
```

Replace the IP address in the SSH command if the Ubuntu VM receives a new address.

## 3. Docker and Application Deployment

Docker Engine and Docker Compose were installed on Ubuntu Server to manage the application containers.

For a fresh installation, follow the official Docker installation instructions:

https://docs.docker.com/engine/install/ubuntu/

Check the installed versions:

```bash
docker --version
docker compose version
```

The application files are stored in `/opt/nextcloud`. The `docker-compose.yml` file contains the configuration for the two containers, while the private `.env` file stores database credentials and the VM IP address.

### Start the Application

Open the Ubuntu terminal and run:

```bash
cd /opt/nextcloud
docker compose config --quiet
docker compose up -d
docker compose ps
```

The system uses two containers:

| Container | Purpose |
|---|---|
| nc-app | Runs the Nextcloud application |
| nc-db | Runs the MariaDB database |

The Nextcloud application is accessible through the Windows browser at:

http://192.168.1.78:8080

MariaDB communicates with Nextcloud through the internal Docker network. Its database port is not published directly to the host.

Actual passwords and the `.env` file must be kept private.

## 4. Persistent Storage

Docker volumes are used to store the application and database information.

| Volume | Purpose |
|---|---|
| nc_data | Nextcloud application files |
| db_data | MariaDB database files |

Check the available volumes:

```bash
docker volume ls
```

### Persistence Test

The team tested persistent storage by uploading a file named `before-reboot.txt` to Nextcloud and restarting Ubuntu Server.

After the server restarted, the containers were running again, and the uploaded file was still available.

This confirmed that the uploaded file was retained after a server reboot.

To repeat the test, upload a file, restart Ubuntu using `sudo reboot`, reconnect to the server, and check that the same file remains in Nextcloud.

**Reminder:** Avoid running `docker compose down -v` because it can remove persistent volumes.

## 5. Firewall Security

The server uses UFW to control incoming connections.

The firewall was configured to deny incoming traffic by default while allowing SSH and Nextcloud connections.

### Firewall Configuration

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 22/tcp
sudo ufw allow 8080/tcp
sudo ufw enable
```

SSH must be allowed before enabling UFW to prevent losing remote access.

To check the firewall:

```bash
sudo ufw status verbose
```

The configured ports are:

| Port | Service |
|---|---|
| 22 | SSH remote administration |
| 8080 | Nextcloud web application |
| 3306 | MariaDB internal database communication |

Previous connectivity tests confirmed that SSH and Nextcloud were accessible from Windows. MariaDB port 3306 is configured without an external host port mapping.

Docker also manages network rules, so firewall status and Docker port mappings should both be checked when reviewing security.

## 6. Database Backup and Automation

A Bash script was created to back up the MariaDB database automatically.

**Script location:** `/opt/nextcloud/automation-script.sh`  
**Backup directory:** `/opt/backups`

The script generates compressed SQL backup files, records successful operations, and deletes matching backups older than seven days.

### Run the Backup Script

```bash
bash -n /opt/nextcloud/automation-script.sh
chmod +x /opt/nextcloud/automation-script.sh
/opt/nextcloud/automation-script.sh
```

Check the backup files and logs:

```bash
ls -lht /opt/backups | head
tail -n 5 /opt/backups/backup.log
```

### Cron Job Configuration

The backup script is scheduled to run daily at **2:00 AM Philippine time**.

To configure the schedule:

```bash
crontab -e
```

Add the following line:

```cron
0 2 * * * /bin/bash /opt/nextcloud/automation-script.sh >> /opt/backups/cron.log 2>&1
```

Verify the schedule and service:

```bash
crontab -l
systemctl is-active cron
timedatectl
```

The backup script was tested manually and through Cron scheduling. A complete database restoration test has not yet been performed.

## 7. System Maintenance

The following commands can be used to monitor the system:

| Task | Command |
|---|---|
| Check server IP | `hostname -I` |
| Check containers | `docker compose ps` |
| Check disk space | `df -h` |
| Check volumes | `docker volume ls` |
| Check firewall | `sudo ufw status verbose` |
| Check backups | `ls -lh /opt/backups` |
| Check Cron | `crontab -l` |
| Check Nextcloud logs | `docker compose logs --tail=50 app` |

Docker Compose commands should be run from `/opt/nextcloud`.

For Ubuntu updates:

```bash
sudo apt update
sudo apt upgrade
```

Review system updates before applying changes that may affect the running application.

## 8. Troubleshooting

| Problem | Solution |
|---|---|
| SSH connection fails | Check if the Ubuntu VM is running, verify its IP address, and check the SSH service. |
| Nextcloud cannot be accessed | Check the containers, server IP, application logs, and port 8080. |
| Database connection fails | Check the MariaDB container and database configuration. |
| Backup is not generated | Check the backup script, available storage, and backup logs. |
| Cron Job is not working | Verify the schedule, Cron service, and Bash script permissions. |
| IP address changes | Run `hostname -I` and use the updated address. |
| Storage is nearly full | Check disk usage with `df -h` and review unnecessary files without deleting persistent volumes. |

## 9. Conclusion

The CloudNova project uses Ubuntu Server, Docker Compose, Nextcloud, and MariaDB to provide a virtualized file-sharing system.

The application deployment, persistent storage, firewall configuration, and database backup automation were tested during development. These components demonstrate the use of virtualization, Linux server administration, containerization, security, and automation in cloud computing.

## 10. References

1. Docker Documentation. https://docs.docker.com/
2. Nextcloud Administration Manual. https://docs.nextcloud.com/server/latest/admin_manual/
3. Ubuntu Server Documentation. https://documentation.ubuntu.com/server/
4. Oracle VirtualBox Documentation. https://www.virtualbox.org/wiki/Documentation
