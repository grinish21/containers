#!/usr/bin/env bash

set -m

./bin/elasticsearch &> /tmp/tmp-log.txt &
sleep 1
while ! grep -m1 'Active' < /tmp/tmp-log.txt; do
    sleep 1
done
echo 'Elastic is running now !!!'
ls
curl -v -X PUT "http://0.0.0.0:9200/twitter?pretty"

fg 1