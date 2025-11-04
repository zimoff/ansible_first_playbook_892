#!/bin/bash
while [ 1 ]
do
echo "$(ps -e -o pid,comm,%cpu | awk 'NR > 1 {print "cpu_usage_1{process=\""$2"\", pid=\""$1"\"}", $3}')" | curl --data-binary @- http://localhost:9091/metrics/job/top/instance/machine
done
