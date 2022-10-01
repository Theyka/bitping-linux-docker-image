## How to setup

 - Install bitping one time to your linux installed computer and login to your account (https://www.bitping.com/node#downloads)
 - GO to **~/.bitping** folder and look in it **credentials.json** (`cat credentials.json`)
 - Install docker (`curl -sSL https://get.docker.com/ | CHANNEL=stable bash`)
 - Download repository (`git clone https://github.com/Theyka/bitping-linux-docker-image.git`)
 - Build docker image

## How to build docker image
- Open terminal in same folder repository installed
- Use ``sudo docker build -t bitping -f Dockerfile .`` command
- Wait for build end

## How to use docker image
- Attach Mode: `sudo docker run -it --name BP -e ID="a2d9cbe9-xxxxx" -e NAME="bitping" -e EMAIL="mail@example.com" -e TOKEN="a long token you got from credentials.json" bitping`
- Detach Mode: `sudo docker run -d --name BP -e ID="a2d9cbe9-xxxxx" -e NAME="bitping" -e EMAIL="mail@example.com" -e TOKEN="a long token you got from credentials.json" bitping`
