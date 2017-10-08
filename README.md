[![Docker Automated buil](https://img.shields.io/docker/automated/m3hran/letsencrypt.svg?style=flat-square)]()
[![Docker Build Statu](https://img.shields.io/docker/build/m3hran/letsencrypt.svg?style=flat-square)]()
[![](https://images.microbadger.com/badges/image/m3hran/letsencrypt.svg)](https://microbadger.com/images/m3hran/letsencrypt)

# Automated SAN SSL registeration & renewal
- mount /etc/letsencrypt inside the container
- point webservers SSL to sym-linked live certs in the mounted folder

- cron.d script every 90 days
##
      ID=`docker ps | grep letsencrypt | awk '{print $1;}'`
      docker exec -ti $ID su -c "/u/apps/letsencrypt/letsencrypt-auto certonly --webroot --webroot-path /var/www/html --manual-public-ip-logging-ok --agree-tos --email your@email.com --no-eff-email --force-renewal -d site1.mydoamin.com -d site2.mydomain.com > /dev/null 2>&1

- #freeSSLforLife #secureWeb

## Pass ACME Verification behind Proxy 
- read https://arrfab.net/posts/2016/May/03/generating-multiple-certificates-with-letsencrypt-from-a-single-instance/
