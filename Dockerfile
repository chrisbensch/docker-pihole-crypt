FROM pihole/pihole:latest

LABEL maintainer="Chris Bensch <chris.bensch@gmail.com>"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
  apt -y dist-upgrade && \
  apt -y autoclean && \
  apt -y autoremove && \
  rm -rf /var/lib/apt/lists/*

#RUN mkdir -p /etc/unbound/unbound.conf.d/ && mkdir -p /etc/services.d/unbound
#COPY pi-hole.conf /etc/unbound/unbound.conf.d/pi-hole.conf
#COPY setupVars.conf /etc/pihole/setupVars.conf

#COPY unbound/ /etc/services.d/unbound/
