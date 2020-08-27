#! /bin/sh
while read line; do
  name=$(echo $line | awk '{ print $2 }')
  cp /etc/hosts hosts.tmp
  sed -i -n -e "/$name\$/!p" -e '$a'"$line" hosts.tmp
  cat hosts.tmp > /etc/hosts
done </etc/rancher-conf/sidekicks.txt
