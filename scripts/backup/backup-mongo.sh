'EOF'
#!/bin/bash
BACKUP_DIR="/home/ubuntu/backups/mongo"
DATE=$(date +%Y%m%d-%H%M%S)

mkdir -p $BACKUP_DIR
docker exec emongo mongodump --out /data/backup-$DATE
docker cp emongo:/data/backup-$DATE $BACKUP_DIR/
echo "✓ Backup completed: $BACKUP_DIR/backup-$DATE"

find $BACKUP_DIR -type d -mtime +7 -exec rm -rf {} +
EOF