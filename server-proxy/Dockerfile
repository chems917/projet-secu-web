FROM nginx:alpine

RUN apk update

RUN apk add openssl fail2ban

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/bin/sh", "/entrypoint.sh" ]

COPY ./conf/fail2ban.conf /etc/fail2ban/fail2ban.conf

COPY ./fail2ban-rules/* /etc/fail2ban/filter.d/

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

COPY certs /etc/certs

COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

