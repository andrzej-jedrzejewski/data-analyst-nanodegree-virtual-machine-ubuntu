/home/ubuntu/anaconda/bin/jupyter notebook --generate-config
mkdir .certs
openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout .certs/mycert.pem -out .certs/mycert.pem -subj "/C=GB/ST=London/L=London/O=Global Security/OU=IT Department/CN=example.com"

#ipython /tmp/script.py andrzejj
cd /home/ubuntu/.jupyter
cp /tmp/jupyter_notebook_config.py  .
sed -i 's/c.NotebookApp.password/c.NotebookApp.password=u'sha1:71a548cfd2de:dbdcba524cd309d34f4fb2d07fbee041c5acefd3'/g' jupyter_notebook_config.py 