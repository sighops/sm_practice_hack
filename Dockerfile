FROM python:3.14-slim-trixie AS build-stage

WORKDIR /app
RUN apt-get update -yq \
 && apt-get install -yq build-essential wget gtk+3.0 git

RUN python -m pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

ARG now

WORKDIR /app

ENTRYPOINT /app/entrypoint.sh

