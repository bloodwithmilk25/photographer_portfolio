FROM python:3.7
MAINTAINER Nikita

ENV PYTHONBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN apt-get build-dep python-imaging && apt-get install libjpeg62 libjpeg62-dev && pip install PIL
RUN pip install -r requirements.txt

RUN mkdir /app
WORKDIR /app
COPY . /app

RUN adduser -D user
USER user