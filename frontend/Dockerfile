FROM node:10-jessie

LABEL maintainer="Harsh Zalavadiya<harsh@strandls.com>"

RUN apt-get update
RUN apt-get -y install git

WORKDIR /
ADD .env.production .
ADD frontend-build.sh .

RUN chmod +x *.sh
RUN /frontend-build.sh

FROM nginx:1.17-alpine
ADD default.conf /etc/nginx/conf.d/default.conf
COPY --from=0 /app/build /usr/share/nginx/html
