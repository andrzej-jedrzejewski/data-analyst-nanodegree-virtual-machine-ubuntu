cd

wget -O shiny-server.deb http://download3.rstudio.org/ubuntu-12.04/x86_64/shiny-server-1.3.0.403-amd64.deb
gdebi shiny-server.deb

cp /tmp/rserver.conf /etc/rstudio/