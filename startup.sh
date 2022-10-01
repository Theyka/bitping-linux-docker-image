#!/bin/sh


#Create credentials.json
cd 
mkdir .bitping
echo '{
 "id": "$ID",
 "name": "$NAME",
 "email": "$EMAIL",
 "token": "$TOKEN",
 "error": ""
}' > .bitping/credentials.json

#Download and start bitping
wget https://downloads.bitping.com/node/linux.zip
unzip linux.zip
cd release
./bitping-node-amd64-linux --server
