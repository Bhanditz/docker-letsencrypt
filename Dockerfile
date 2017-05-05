FROM m3hran/base.nginx
MAINTAINER Martin Taheri <m3hran@gmail.com>
LABEL Description="LetsEncrypt Image"

# Install packages
#RUN clean_install.sh --no-install-recommends \
    
RUN mkdir -p /u/apps && cd /u/apps && \
    git clone https://github.com/letsencrypt/letsencrypt

# Config nginx service
#ADD bin/service /etc/service

#EXPOSE 80 443

WORKDIR /u/apps
