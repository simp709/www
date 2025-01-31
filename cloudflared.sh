#!/bin/bash
while :
do
pgrep -f cloudflared | xargs kill
sleep 300
done