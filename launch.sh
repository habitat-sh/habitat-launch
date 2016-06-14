#!/bin/bash
launching=1;

cd /Users/adam/Documents/habitat-launch

while [ $launching = 1 ]; do
  if docker-compose run -e HAB_AUTH_TOKEN=$HAB_AUTH_TOKEN -e HAB_ORIGIN=adam --rm shell 2> /dev/null; then
    launching=0
  else
    time=$(($RANDOM % 10))
    sleep $time
  fi
done
