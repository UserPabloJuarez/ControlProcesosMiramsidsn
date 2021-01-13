#!/bin/bash


IDS="`ps eaxo etime,pid,comm | egrep "miramsisdn" | grep "[0-9\{1,2}:[0-9\{1,2}:[0-9\{1,2}]" | awk '{print $2}'`"

for i in ${PIDS}; do
  echo "ingreso a realizar proceso"
	echo "Killing $i"
	echo $i | xargs kill -9
done
