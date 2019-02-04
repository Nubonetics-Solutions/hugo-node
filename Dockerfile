FROM ubuntu:latest
MAINTAINER bsamadi@nubonetics.com
RUN apt-get update
RUN apt-get install -y apt-utils curl gnupg2 git snapd snapd-login-service
RUN snap version
RUN snap find hugo
RUN snap install hugo
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get -y install nodejs
RUN npm install -g postcss-cli
RUN npm install -g autoprefixer
