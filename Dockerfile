FROM m3hran/base.nginx
MAINTAINER Martin Taheri <m3hran@gmail.com>
LABEL Description="LetsEncrypt Image"

    
RUN mkdir -p /u/apps && cd /u/apps && \
    git clone https://github.com/letsencrypt/letsencrypt

WORKDIR /u/apps
