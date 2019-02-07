# plumberAPI


```
sudo apt update
sudo apt install nginx
sudo ufw allow 'Nginx HTTP'
```

https://docs.docker.com/install/linux/docker-ce/ubuntu/
```
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
    
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
   
sudo usermod -aG docker ubuntu
```

