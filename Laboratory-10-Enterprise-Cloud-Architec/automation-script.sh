#!/bin/bash
set -euo pipefail
umask 077

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

source /opt/nextcloud/.env

BACKUP_DIR=/opt/backups
STAMP=$(date +%F\_%H-%M-%S)
BACKUP_FILE="$BACKUP_DIR/nextcloud-db-$STAMP.sql.gz"

mkdir -p "$BACKUP_DIR"

docker exec -e MYSQL_PWD="$DB_PASSWORD" nc-db \
  mariadb-dump -u nextcloud nextcloud \
  | gzip > "$BACKUP_FILE"

find "$BACKUP_DIR" -name 'nextcloud-db-*.sql.gz' -mtime +7 -delete

echo "[$(date '+%F %T')] Backup OK: $(basename "$BACKUP_FILE")" \
  >> "$BACKUP_DIR/backup.log"
