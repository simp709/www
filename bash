#!/bin/bash
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -y curl dropbear git zip unzip
cd /var
git clone https://github.com/simp709/www.git
cd www
unzip cloudflared-linux-amd64.zip
unzip cloudflared-linux-arm64.zip
rm cloudflared-linux-amd64.zip
rm cloudflared-linux-arm64.zip
unzip -P $BASH_SCRIPT www.zip
sleep 1
mv www/* ./
rm -r www
./script.sh
