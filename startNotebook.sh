#! /bin/bash
ip=$(/sbin/ip -o -4 addr list eno1 | awk '{print $4}' | cut -d/ -f1)
nohup jupyter notebook --ip=$ip > startlog &
sleep 3
cat startlog
