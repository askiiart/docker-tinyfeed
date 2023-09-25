#!/bin/sh
set -e
while :
do
    cat /data/feeds.txt | tinyfeed > /tmp/index.html && mv /tmp/index.html /html/index.html
    sleep $INTERVAL
done