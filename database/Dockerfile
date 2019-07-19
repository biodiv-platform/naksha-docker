FROM mdillon/postgis:11-alpine

LABEL maintainer="Harsh Zalavadiya<harsh@strandls.com>"

COPY ./initdb.sh /docker-entrypoint-initdb.d/
COPY ./db.skeleton /docker-entrypoint-initdb.d/