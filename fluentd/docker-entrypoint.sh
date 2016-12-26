#!/bin/sh

sleep 10

nginx &
td-agent -c /etc/td-agent/td-agent.conf -o /var/log/td-agent/td-agent.log &

while true; do
  curl -sSL http://localhost > /dev/null
  sleep 1
done
