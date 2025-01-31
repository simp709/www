#!/bin/bash
apt-get update
DEBIAN_FRONTEND=noninteractive apt install curl dropbear git -y
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