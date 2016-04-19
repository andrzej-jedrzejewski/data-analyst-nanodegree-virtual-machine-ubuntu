cd

apt-get -y install libapparmor1 gdebi-core

wget http://download2.rstudio.org/rstudio-server-0.98.1103-amd64.deb
sudo gdebi -n rstudio-server-0.98.1103-amd64.deb

cp /tmp/rserver.conf /etc/rstudio/