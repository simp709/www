#!/bin/bash
while :
do
pgrep -f cloudflared | xargs kill
python3 sleep.py
nohup cloudflared tunnel run > /dev/null 2>&1&
done
