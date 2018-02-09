# Blockshell in a docker
# Copyright (C) 2018 Mateusz Pawlowski <mateusz@generik.co.uk>
FROM python:2.7-wheezy

MAINTAINER agentcobra <agentcobra@free.fr>
LABEL maintainer="agentcobra@free.fr"

RUN apt-get update
RUN apt-get install -y git screen vim

WORKDIR /opt/

ADD . /app
WORKDIR /app

RUN pip install --editable .

RUN blockshell --help

EXPOSE 5000

RUN python web.py
CMD blockshell init

#vim: syntax=Dockerfile

