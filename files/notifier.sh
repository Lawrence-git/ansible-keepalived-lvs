#!/bin/bash

my_host=`hostname`
current_date=`/bin/date +"%b %d %H:%M:%S"`

Msgboday="$current_date : MariadbDB on $my_host turned into $2"
echo "$Msgboday"

./etc/keepalived/iptables.sh $1 $2