# Firewall Configuration

## 1. Allow SSH

```bash
sudo ufw allow ssh
```

This command allows SSH traffic on port 22 so administrators can remotely manage the server.

## 2. Configure the Default Firewall Policies

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
```

The first command blocks incoming traffic by default, while the second allows outgoing traffic.

## 3. Enable the Firewall

```bash
sudo ufw enable
sudo ufw status verbose
```

These commands activate the firewall and display its current status and configuration.

## 4. Allow Port 8080

```bash
sudo ufw allow 8080/tcp
sudo ufw status numbered
```

These commands allow incoming TCP traffic on port 8080 for the Nginx web application and display the numbered firewall rules.

## 5. SSH Security Warning

If `sudo ufw enable` is executed before `sudo ufw allow ssh`, incoming SSH connections may be blocked, potentially preventing remote administrators from accessing the server.
