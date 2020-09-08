#!/bin/bash
[ "$1" = -x ] && shift && set -x
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

INDEX=${1}

if [[ "${INDEX}" = "" ]]; then
  2>&1 echo "Requrie elasticsearch index name"
  exit 1
fi

curl -s \
 --user "elastic:changeme" \
 --request GET \
 -H "Content-Type: application/json" \
  "http://localhost:9200/${INDEX}" | jq .
