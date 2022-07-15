## How to setup

 - Install bitping one time to your linux installed computer and login to your account (https://www.bitping.com/node#downloads)
 - GO to **~/.bitping** folder and copy **credentials.json**
 - Install docker (curl -sSL https://get.docker.com/ | CHANNEL=stable bash)
 - Download repository (git clone https://github.com/Theyka/bitping-linux-docker-image.git)
 - Open **startup.sh** change **line 7** with your **credentials.json** information  
 - Build docker image

## How to build docker image
- Open terminal in same folder repository installed
- Use ``sudo docker build -t bitping -f Dockerfile .`` command
- Wait for build end

## How to use docker image
- Attach Mode: `sudo docker run -it --name BP bitping`
- Detach Mode: `sudo docker run -d --name BP  bitping`
