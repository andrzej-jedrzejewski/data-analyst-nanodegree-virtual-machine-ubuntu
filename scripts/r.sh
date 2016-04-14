sudo sh -c 'echo "deb http://cran.rstudio.com/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list'
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -

apt-get update

sudo apt-get -y install r-base


echo "Installing Shiny in progress............"
sudo su - -c "R -e \"install.packages('shiny', repos = 'http://cran.rstudio.com/')\""


apt-get install gdebi-core -y
