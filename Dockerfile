FROM python:3.8.4-slim-buster
LABEL maintainer="robertrahardja@gmail.com"

ENV PYTHONUNBUFFERED=1

COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser --disabled-password --disabled-login --debug --gecos "Robert Rahardja,1,90693236,90693236" robert
USER robert
