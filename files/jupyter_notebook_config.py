# Configuration file for jupyter-notebook.
# Set options for certfile, ip, password, and toggle off browser auto-opening
c.NotebookApp.certfile = u'/home/vagrant/.certs/mycert.pem'
c.NotebookApp.keyfile = u'/home/vagrant/.certs/mycert.pem'
# Set ip to '*' to bind on all interfaces (ips) for the public server
c.NotebookApp.ip = 'localhost'
c.NotebookApp.password = u'sha1:3412de933a35:433e6f271a4c53917b6f3419acb655a6f4d01c5f'
c.NotebookApp.open_browser = False

# It is a good idea to set a known, fixed port for server access
c.NotebookApp.port = 9999
c.NotebookApp.base_url = '/notebook'