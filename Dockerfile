FROM ubuntu
MAINTAINER bsamadi@nubonetics.com
ENV SNAPCRAFT_SETUP_CORE 1
RUN apt-get update
RUN apt-get install -y apt-utils curl gnupg2 git docker.io
RUN curl -sL https://raw.githubusercontent.com/ogra1/snapd-docker/master/build.sh | bash -
RUN snap version
RUN snap find hugo
RUN snap install hugo
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get -y install nodejs
RUN npm install -g postcss-cli
RUN npm install -g autoprefixer
