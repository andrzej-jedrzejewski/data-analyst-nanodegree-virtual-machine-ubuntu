cd
wget https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda2-4.0.0-Linux-x86_64.sh
bash Anaconda2-4.0.0-Linux-x86_64.sh -b -p $HOME/anaconda
echo 'export PATH="$HOME/anaconda/bin:$PATH"' >> ~/.bashrc
/home/ubuntu/anaconda/bin/conda install pandasql -y