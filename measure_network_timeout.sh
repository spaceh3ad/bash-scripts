#!/bin/bash

connection=false

while [[ "$connection" = false ]]
do
  if ping -w 2 8.8.8.8 | grep -o '2 received'
  then
    connection=true
    echo "connection established"
  else
    echo "no connection"
    sleep 10s
  fi
  trap 'exit 130' INT
done
echo "Connection established at: $(date +%H:%M:%S)" > ethernet.log
