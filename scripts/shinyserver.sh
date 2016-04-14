cd

echo "Installing Shiny in progress............"
sudo su - -c "R -e \"install.packages('shiny', repos = 'http://cran.rstudio.com/')\""

echo "Installing gdebi-core in progress............"
apt-get install gdebi-core -y

echo "Installing ShinyServer in progress............"
wget -O shiny-server.deb http://download3.rstudio.org/ubuntu-12.04/x86_64/shiny-server-1.3.0.403-amd64.deb
gdebi -n shiny-server.deb