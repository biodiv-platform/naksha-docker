#!/bin/bash

echo "------------Init Script-------------"

if [ "$( psql -U $POSTGRES_USER -tAc "SELECT 1 FROM pg_database WHERE datname='$DB_NAME'" )" = '0' ]; then
    createdb -h $DB_HOST -U $POSTGRES_USER -O $POSTGRES_USER $DB_NAME
fi

psql -U $POSTGRES_USER $DB_NAME < "/docker-entrypoint-initdb.d/db.skeleton" || exit 1

echo "------------Init Script End-------------"