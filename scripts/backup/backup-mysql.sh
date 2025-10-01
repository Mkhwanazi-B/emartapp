'EOF'
#!/bin/bash
BACKUP_DIR="/home/ubuntu/backups/mysql"
DATE=$(date +%Y%m%d-%H%M%S)

mkdir -p $BACKUP_DIR
docker exec emartdb mysqldump -u root -pemartdbpass books > $BACKUP_DIR/backup-$DATE.sql
echo "✓ Backup completed: $BACKUP_DIR/backup-$DATE.sql"

find $BACKUP_DIR -type f -mtime +7 -delete
EOF