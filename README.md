##This repo contains scripts that help you to create virtual machine for Udacity Data Analyst Nanodegree Course.

Basic info
------------
* All passwords are set to `nanodegree`
* User set to `ubuntu`
* HardDisk set to 30GB

Requirements
* Packer v0.8.6:[download](http://www.packer.io/downloads.html) and follow installation guide http://www.packer.io/intro/getting-started/setup.html.
* Virtualbox v5.0.14 [download](https://www.virtualbox.org/wiki/Downloads).
* AWS tools (only if you want to create your own AMI on AWS):
  + CLI [installation](http://docs.aws.amazon.com/cli/latest/userguide/installing.html)
  + VM import specification [website](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/VMImportPrerequisites.html)
  + Create your own S3 bucket (through website or [CLI](http://docs.aws.amazon.com/cli/latest/reference/s3api/create-bucket.htm)
  + Do not forget about export AWS env:
      'export AWS_ACCESS_KEY=$AWS_ACCESS_KEY_ID
       export AWS_SECRET_KEY=$AWS_SECRET_ACCESS_KEY'


#AMI specifications

Pre-installed software:
------------
* ipython/jupyter 4.1.0
* anaconda 2-4.0.0
* java version 1.8.0_77
* R 3.2.5
* rstudio-server 0.98.1103
* shiny-server 1.3.0.403


Access:
------------
* rstudio-server: yourDomain.com/shiny/ or ipAddress/rstudio/
* shiny-server: yourDomain.com/shiny/ or ipAddress/shiny/

To run notebook, log in your VM as a ubuntu user, go to selected directory and enter

`jupyter notebook`

thereafter, notebook is available to you on following url:

https://yourDomain.com/notebook/ or https://ipAddress/notebook/

Amazon AMI:
-------------
* ami-66f47815

#Settings for VirtualBox (to only generate .ovf file for your VB use this instruction):

* in variables.json change '"output_format"' to 'ovf'
* run script './packer.sh'


