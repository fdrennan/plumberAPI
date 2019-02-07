# plumberAPI

```
sudo passwd ubuntu
```

```
sudo apt-get install git
```

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

sudo apt-key fingerprint 0EBFCD88

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo usermod -aG docker ubuntu

sudo apt  install docker-compose
```

Log out and log in now to update docker to allow sudo. 

```
git clone https://github.com/fdrennan/plumberAPI.git
```
IMPORTANT
#######
# UPDATE THE NGINX.CONF FILE WITH YOUR PUBLIC IP ADDRESS
#####
```
vim /home/ubuntu/plumberAPI/misc/nginx.conf
sudo cp /home/ubuntu/plumberAPI/misc/nginx.conf /etc/nginx/conf.d/nginx.conf
sudo /etc/init.d/nginx restart
```

```
cd /home/ubuntu/plumberAPI/misc
docker build -t dockerfile .
docker-compose up -d
```

```
siege -t 10 http://18.223.159.111/wait
siege -t 10 http://18.223.159.111:8003/wait
```
