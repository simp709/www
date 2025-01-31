#!/bin/bash
while :
do
pgrep -f cloudflared | xargs kill
nohup cloudflared tunnel run > /dev/null 2>&1&
python3 sleep.py
done
