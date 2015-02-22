#!/bin/bash
echo $1
curl -XPUT "http://elasticsearch-syrup.internal.keboola.com:9200/_snapshot/s3/snapshot_$1?wait_for_completion=true"
curl -XPOST "http://kbc-vpc-syrup-elasticsearch-a-10.internal.keboola.com:9200/*/_close?wait_for_completion=true"
curl -XPOST "http://kbc-vpc-syrup-elasticsearch-a-10.internal.keboola.com:9200/_snapshot/s3/snapshot_$1/_restore?wait_for_completion=true"
curl -XPOST "http://kbc-vpc-syrup-elasticsearch-a-10.internal.keboola.com:9200/*/_open?wait_for_completion=true"
