# Configuration file for jupyter-notebook.
# Set options for certfile, ip, password, and toggle off browser auto-opening
c.NotebookApp.certfile = u'/home/ubuntu/.certs/mycert.pem'
c.NotebookApp.keyfile = u'/home/ubuntu/.certs/mycert.pem'
# Set ip to '*' to bind on all interfaces (ips) for the public server
c.NotebookApp.ip = 'localhost'
c.NotebookApp.password = u'sha1:595b5d7e957a:11f1ecb802491da644e7fa966de4a7b218ade5ba'
c.NotebookApp.open_browser = False

# It is a good idea to set a known, fixed port for server access
c.NotebookApp.port = 9999
c.NotebookApp.base_url = '/notebook'