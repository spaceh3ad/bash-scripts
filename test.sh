#!/bin/bash

echo "testujemy network"
pinga=$(ping 8.8.8.8)
if [ "$pinga"="connect: Network is unreachable" ]
then
  echo "not wired"
else
  echo "wired"

fi
