FROM python:3.8

RUN apt-get update \
  && apt-get install -y git libpq-dev python-dev python3-pip \
  && pip3 install --upgrade pip \
  && pip3 install --upgrade cffi cryptography~=3.4 dbt

WORKDIR /usr/src/app