FROM alpine:latest

RUN apk update

RUN apk add python3

RUN apk add py3-pip

RUN pip3 install flask pyjwt pysqlite3

RUN mkdir /app

COPY server.py ./app/server.py

COPY /html ./app/html

COPY db.sqlite ./app/db.sqlite

WORKDIR /app

CMD python3 server.py
