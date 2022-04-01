FROM nginx:alpine

RUN apk update

RUN apk add openssl fail2ban

COPY ./conf/fail2ban.conf /etc/fail2ban/fail2ban.conf

COPY certs /etc/certs

COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

