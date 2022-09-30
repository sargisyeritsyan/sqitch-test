#!/bin/bash

# credentials to connect to the database
server=$PG_HOST
database=$PG_DB
user=$PG_USER
pass=$PG_PASSWORD

app_connection_string="postgres://$user:$pass@$server:5432/$database"

if [ ! -z $REVERT_TO ]; then
  /bin/sqitch revert -t "$app_connection_string" --to-change "$REVERT_TO"
else
  /bin/sqitch deploy -t "$app_connection_string"
fi
