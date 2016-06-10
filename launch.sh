#!/bin/bash
cd ~/src/habitat
launching=1;

while [ $launching = 1 ]; do
  if env HAB_ORIGIN=adam make -s shell 2>/dev/null; then
    launching=0
  else
    time=$(($RANDOM % 10))
    sleep $time
  fi
done
