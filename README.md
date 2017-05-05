# 
- mount /etc/letsencrypt inside the container
- point webservers SSL to sym-linked live certs in the mounted folder

- cron.d script every 90 days
##
      ID=`docker ps | grep letsencrypt | awk '{print $1;}'`
      docker exec -ti $ID su -c "/u/apps/letsencrypt/letsencrypt-auto certonly --webroot --webroot-path /var/www/html --manual-public-ip-logging-ok --agree-tos --email your@email.com --no-eff-email --force-renewal -d site1.mydoamin.com -d site2.mydomain.com > /dev/null 2>&1

- #freeSSLforLife #secureWeb
