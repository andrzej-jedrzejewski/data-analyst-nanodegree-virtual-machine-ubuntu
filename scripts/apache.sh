apt-get install -y apache2
apt-get install -y libapache2-mod-proxy-html
apt-get install -y libxml2-dev

/usr/sbin/a2enmod ssl proxy_ajp access_compat alias status negotiation autoindex proxy authz_user rewrite authz_core
/usr/sbin/a2enmod proxy_wstunnel authn_file headers mpm_event proxy_html setenvif proxy_http dir mime env filter authz_host
/usr/sbin/a2enmod auth_basic xml2enc authn_core info deflate socache_shmcb

cp /tmp/notebook.conf /etc/apache2/sites-available/
cp /tmp/rstudioserver.conf /etc/apache2/sites-available/


cd /etc/apache2/sites-available/

/usr/sbin/a2ensite notebook.conf
/usr/sbin/a2ensite rstudioserver.conf

service rstudio-server restart
service shiny-server restart
service apache2 reload

