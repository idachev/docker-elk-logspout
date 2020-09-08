#!/bin/bash
[ "$1" = -x ] && shift && set -x
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "${DIR}"

mkdir -p "${DIR}/data"

docker-compose -p elk \
  -f "${DIR}"/docker-compose-elk.yml \
  -f "${DIR}"/docker-compose-elk-ports.yml \
  $*
