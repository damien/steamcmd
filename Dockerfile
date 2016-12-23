FROM ubuntu:16.04

MAINTAINER Damien Wilson <damien@mindglob.com>

ENV DEBIAN_FRONTEND noninteractive

# Install dependencies
RUN apt-get update
RUN apt-get install -y lib32gcc1 curl

# Create a dedicated user for steam, execute as that user
RUN useradd --create-home steam
USER steam

# Install SteamCMD from source
WORKDIR /home/steam
RUN curl -sqL 'https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz' | tar zxvf -

# This container will be executable
ENTRYPOINT ["./steamcmd.sh"]
