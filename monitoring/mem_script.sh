#!/bin/bash
while [ 1 ]
do
echo "$(ps -e -o pid,comm,%mem | awk 'NR > 1 {print "mem_usage_1{process=\""$2"\", pid=\""$1"\"}", $3}')" | curl --data-binary @- http://localhost:9091/metrics/job/top/instance/machine
done
