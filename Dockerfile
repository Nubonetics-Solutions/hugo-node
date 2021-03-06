FROM golang
MAINTAINER bsamadi@nubonetics.com
RUN apt update && \
    apt install -y apt-utils curl gnupg2 git && \
    curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash && \
    curl -L https://npmjs.org/install.sh | sh && \
    sh /root/.bashrc && \
    nvm install v12.13.1 && \
    npm install -g postcss-cli autoprefixer && \
    go get --tags extended  github.com/spf13/hugo
