#!/bin/bash

num=($(/sbin/iptables -t nat -L PREROUTING --line-numbers | grep "$1" | awk '{print $1}'))

case $2 in
  backup)
    if [ ${#num[@]} -lt 1 ];then
      /sbin/iptables -t nat -A PREROUTING -d $1 -p tcp -j REDIRECT
    fi
    ;;
  master)
    for i in "${num[@]}"
    do
      /sbin/iptables -t nat -D PREROUTING 1
    done
    ;;
esac