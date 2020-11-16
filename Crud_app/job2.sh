#!/bin/bash
#Backup directory
BACKUP_DIR=/var/backups/mongobackups
#backup date variable =dd-mm-yyyy
BACKUP_DATE=01-03-2020
#log into master mongodb container and
#execute the backup command
MASTER_DB=localmongo1
DATABASE_NAME=CrudDB
docker exec $MASTER_DB /bin/bash -c \
"mongorestore --db $DATABASE_NAME --drop \
$BACKUP_DIR/$BACKUP_DATE/$DATABASE_NAME"
