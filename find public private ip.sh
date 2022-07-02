#! /bin/bash

# first check the network connection usig ping cmd
# use any open api to get public ip address of machine
# supresses the output >> ping -c 2 8.8.8.8 2>&1 >/dev/null

if ping -c 2 8.8.8.8 2>&1 >/dev/null; then
  echo "Private IP: $(hostname -I)"
  echo "Public IP: $(curl --silent https://api.ipify.org?format=text)" 
else
  echo 'Offline.'
fi

