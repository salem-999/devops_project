#!/bin/bash
#create backups directory
BACKUP_DIR=/var/backups/mongobackups
mkdir BACKUP_DIR
#log into master mongodb container and
#execute the backup command
MASTER_DB=localmongo1
DATABASE_NAME=CrudDB
docker exec $MASTER_DB /bin/bash -c \
"echo "* 3 * * 4 mongodump --db $DATABASE_NAME \
--out $BACKUP_DIR/'date +"%m-%d-%y"'" \
>> /var/spool/cron/root"
