FROM registry.gitlab.com/pages/hugo:latest
MAINTAINER bsamadi@nubonetics.com
RUN apt-get update
RUN apt-get install -y apt-utils curl gnupg2 git
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get -y install nodejs
RUN npm install -g postcss-cli
RUN npm install -g autoprefixer
