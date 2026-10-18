# Backup Script Guide

## 1. Purpose

The Bash backup script automates the process of backing up application data. It compresses the `app-data` directory into a `.tar.gz` file and saves it inside the `backups` directory.

## 2. Backup Script

```bash
#!/bin/bash
# Automated Backup Script for CloudNova Technologies

SOURCE_DIR="app-data"
BACKUP_DIR="backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

echo "Initiating automated backup..."

# Create the backup directory if it does not exist
mkdir -p $BACKUP_DIR

# Compress the source directory into a tarball (.tar.gz)
tar -czf $BACKUP_DIR/backup_$TIMESTAMP.tar.gz $SOURCE_DIR

echo "Backup completed successfully at $TIMESTAMP!"
```

## 3. Making the Script Executable

Command used:

```bash
chmod +x backup.sh
```

The `chmod +x` command gives the script permission to execute. Without this permission, Linux may display a "Permission denied" error when running the script with `./backup.sh`.

## 4. Running the Script

Command used:

```bash
./backup.sh
```

This executes the script, creates the `backups` directory if needed, and compresses the application data into a timestamped archive.

To check the backup files, use:

```bash
ls -l backups/
```

## 5. Cron Schedule

Cron entry:

```bash
0 2 * * * /root/backup.sh
```

This schedules the script to run every day at 2:00 AM, provided the script is located at `/root/backup.sh` and the Cron service is running.

The five Cron fields mean:

- Minute: `0`
- Hour: `2`
- Day of Month: `*`
- Month: `*`
- Day of Week: `*`

Cron allows repetitive tasks, such as backups, to run automatically without manually executing the script each time.
