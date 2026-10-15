# Laboratory 08: The Cloud Security Engineer

## Mission Overview

This laboratory activity focuses on securing an Ubuntu server using the Uncomplicated Firewall (UFW). The task involves deploying an Nginx web application, configuring firewall rules, and allowing only the required network traffic.

## Objectives

- Understand the Principle of Least Privilege.
- Identify the attack surface of a virtual machine.
- Configure a Default Deny firewall policy.
- Allow SSH and TCP port 8080.
- Document firewall commands and security practices.
- Maintain a GitHub Cloud Computing portfolio.

## Commands Executed

### Deploy the Web Application

```bash
docker --version
docker run -d --name secure-web-app -p 8080:80 nginx
docker ps
curl http://localhost:8080
```

### Configure the Firewall

```bash
sudo ufw allow ssh
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
sudo ufw status verbose
sudo ufw allow 8080/tcp
sudo ufw status numbered
```

## Skills Learned

- Running an Nginx web server using Docker.
- Testing an application using curl.
- Configuring a Linux firewall using UFW.
- Managing incoming network traffic and open ports.
- Applying cloud security principles.
- Writing technical documentation in Markdown.
- Organizing project files in GitHub.

## Screenshots

The `screenshots/` folder contains evidence of the Nginx deployment, firewall activation, and port configuration.
