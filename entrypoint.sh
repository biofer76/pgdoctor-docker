#!/bin/bash

set -xe

# Replace values in config files
CONFIG_FILE=/etc/pgdoctor.cfg
sed -i -e "s/^pg_host =.*/pg_host = $POSTGRES_HOST/g" $CONFIG_FILE
sed -i -e "s/^pg_port =.*/pg_port = $POSTGRES_PORT/g" $CONFIG_FILE
sed -i -e "s/^pg_user =.*/pg_user = $POSTGRES_USER/g" $CONFIG_FILE
sed -i -e "s/^pg_password =.*/pg_password = $POSTGRES_PASS/g" $CONFIG_FILE
sed -i -e "s/^pg_database =.*/pg_database = $POSTGRES_DBNAME/g" $CONFIG_FILE
sed -i -e "s/^pg_connection_timeout =.*/pg_connection_timeout = $POSTGRES_CONNECTION_TIMEOUT/g" $CONFIG_FILE
sed -i -e "s/^pg_max_replication_lag =.*/pg_max_replication_lag = $POSTGRES_MAX_REPLICATION_LAG/g" $CONFIG_FILE

/usr/bin/pgdoctor