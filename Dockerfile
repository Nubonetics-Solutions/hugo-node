FROM ubuntu:latest
MAINTAINER bsamadi@nubonetics.com
RUN apt-get update
RUN apt-get install apt-utils curl hugo
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install nodejs
RUN npm install -g postcss-cli
RUN npm install -g autoprefixer
