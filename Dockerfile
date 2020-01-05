FROM debian:stable-slim

LABEL "com.github.actions.name"="Action debian utils"
LABEL "com.github.actions.description"="Command line utils on debian"
LABEL "com.github.actions.icon"="folder-plus"
LABEL "com.github.actions.color"="black"
LABEL "maintainer"="Edgar Carvalho <edgarrc@gmail.com>"
LABEL "repository"="https://github.com/edgarrc/action-debian-utils"
LABEL "homepage"="https://github.com/edgarrc/action-debian-utils"
LABEL "version"="1.0.0"

RUN apt-get update && apt-get install -y p7zip-full lftp
RUN	apt-get clean -y
RUN rm -rf /var/lib/apt/lists/*
