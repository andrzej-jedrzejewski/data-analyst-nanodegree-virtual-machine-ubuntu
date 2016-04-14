apt-get install apache2
apt-get install libapache2-mod-proxy-html
apt-get install libxml2-dev

a2enmod ssl proxy_ajp access_compat alias status negotiation autoindex proxy authz_user rewrite authz_core
a2enmod proxy_wstunnel authn_file headers mpm_event proxy_html setenvif proxy_http dir mime env filter authz_host
a2enmod auth_basic xml2enc authn_core info deflate socache_shmcb

cp /tmp/notebook.conf /etc/apache2/sites-available/
cp /tmp/rstudioserver.conf /etc/apache2/sites-available/

a2ensite /etc/apache2/sites-available/notebook.conf
a2ensite /etc/apache2/sites-available/rstudioserver.conf

service apache reload