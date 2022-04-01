FROM nginx:alpine

RUN apk add openssl

COPY certs /etc/certs

COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

