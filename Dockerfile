FROM ubuntu:18.04
MAINTAINER bsamadi@nubonetics.com
RUN apt-get update
RUN apt-get install hugo
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install nodejs
RUN npm install -g postcss-cli
RUN npm install -g autoprefixer
