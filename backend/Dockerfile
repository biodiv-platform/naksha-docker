FROM gradle:jdk8

MAINTAINER "Harsh Zalavadiya<harsh@strandls.com>"

WORKDIR /

ADD web.xml .
ADD backend-build.sh .

RUN chmod +x *.sh
RUN sh ./backend-build.sh


FROM tomcat:8-jre8

LABEL maintainer="Harsh Zalavadiya<harsh@strandls.com>"

WORKDIR /

RUN apt-get update
RUN apt-get -y install curl postgis postgresql-client

RUN mkdir -p /apps
ADD config.properties /apps/config.properties
ADD backend-init.sh .

COPY --from=0 /geoserver.war /usr/local/tomcat/webapps/
COPY --from=0 /naksha/build/libs/naksha.war /naksha.war

CMD sh /backend-init.sh
