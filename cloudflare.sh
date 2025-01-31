#!/bin/bash
while :
do
pgrep -f cloudflared | xargs kill
sleep 300
nohup cloudflared tunnel run > /dev/null 2>&1&
done