#!/bin/bash
MASTER_DB=localmongo1
DATABASE_NAME=CrudDB
#maximum days for inserted data
DATA_AGE=7
#log into container shell and
#delete the data older than DATA_AGE days
docker exec $MASTER_DB /bin/bash -c \
"mongo;db.log_events.createIndex({"createdAt" : 1}, \
{expireAfterSeconds: $((3600*24*$(DATA_AGE)))})"
