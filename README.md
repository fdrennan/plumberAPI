# plumberAPI

Get your public ip address from the EC2 server you created. 

Update your password
```
sudo passwd ubuntu
```

Check to see if git is installed
```
sudo apt-get install git
```

Install nginx
```
sudo apt update
sudo apt install nginx
sudo ufw allow 'Nginx HTTP'
```

Install docker
```
sudo apt-get install -y \
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

sudo apt-get install docker-ce docker-ce-cli containerd.io -y

sudo usermod -aG docker ubuntu

sudo apt  install docker-compose
```

# >>>> Log out and log in now to update docker to use without sudo. 


Update this repo with your cloned repo. 
```
git clone https://github.com/fdrennan/plumberAPI.git
```

# >>>>  UPDATE THE NGINX.CONF FILE WITH YOUR PUBLIC IP ADDRESS
```
vim /home/ubuntu/plumberAPI/misc/nginx.conf
sudo cp /home/ubuntu/plumberAPI/misc/nginx.conf /etc/nginx/conf.d/nginx.conf
sudo /etc/init.d/nginx restart
```

cd into the misc folder and run the following commands. To kill the api use docker-compose down. 
```
cd /home/ubuntu/plumberAPI/misc
docker build -t dockerfile .
docker-compose up -d
# to kill 
docker-compose down
```

Try and siege it. Replace with your IP. 
```
siege -t10s http://3.16.48.38/wait
siege -t10s http://3.16.48.38:8003/wait
```
