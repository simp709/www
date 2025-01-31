#!/bin/bash
while :
do
pgrep -f cloudflared | xargs kill
sleep 5m
nohup cloudflared tunnel run > /dev/null 2>&1&
done
