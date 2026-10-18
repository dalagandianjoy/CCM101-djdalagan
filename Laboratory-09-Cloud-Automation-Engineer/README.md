# Laboratory 09: Cloud Automation Engineer

## Mission Overview
In this laboratory, I learned how to automate tasks using Bash scripting, file permissions, and Cron scheduling.

## Objectives
- Understand Bash scripts, shebangs, and variables.
- Create and execute a backup script.
- Use chmod to make a script executable.
- Schedule automatic backups using Cron.

## Commands Executed

```bash
mkdir app-data
echo "This is critical client data." > app-data/data.txt
cat app-data/data.txt
nano backup.sh
cat backup.sh
./backup.sh
chmod +x backup.sh
ls -l backups/
crontab -l
env EDITOR=nano crontab -e
```

## Skills Learned
I learned how to write a Bash script to back up application data, create compressed backup files, change file permissions, and schedule tasks using Cron. I also learned how automation can reduce repetitive manual work.
