FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y git build-essential sudo python-pip python-termcolor python-pyinotify python-pytest-xdist

RUN mkdir -p /workdir/qsym

WORKDIR /workdir/qsym
COPY . /workdir/qsym

RUN ./setup.sh
RUN pip install .
