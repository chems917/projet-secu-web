FROM alpine:latest

RUN apk update

RUN apk add python3

RUN apk add py3-pip

CMD pip3 install flask pyjwt sqlite3

RUN mkdir /app

COPY server.py /app/server.py

WORKDIR /app

CMD python3 server.py
