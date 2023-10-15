FROM cm2network/steamcmd:latest

USER root

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install wine \
  gettext-base \
  xvfb \
  x11-utils \
  procps \
  tini -y

RUN dpkg --add-architecture i386 && apt-get update && apt-get install wine32 -y

ENV DISPLAY=:99

RUN winecfg
