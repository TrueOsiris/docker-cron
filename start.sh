#!/bin/sh
echo "creating crond.d folders ..."
mkdir -p /etc/crond.d/min 2>&1
mkdir -p /etc/crond.d/15min 2>&1
mkdir -p /etc/crond.d/hourly 2>&1
mkdir -p /etc/crond.d/daily 2>&1
mkdir -p /etc/crond.d/weekly 2>&1
mkdir -p /etc/crond.d/monthly 2>&1
echo "starting crond ..."
crond -f -l 8
