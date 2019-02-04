FROM snapcore/snapcraft
MAINTAINER bsamadi@nubonetics.com
ENV SNAPCRAFT_SETUP_CORE 1
RUN apt-get update
RUN apt-get install -y snapd
RUN apt-get install -y apt-utils curl gnupg2 git
RUN systemctl status snapd
RUN snap refresh core --beta
RUN snap version
RUN snap find hugo
RUN snap install hugo
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get -y install nodejs
RUN npm install -g postcss-cli
RUN npm install -g autoprefixer
