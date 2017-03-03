#!/bin/bash
docker \
  run \
  --rm \
  -it \
  -v $(pwd):/share \
  --workdir=/share \
  koash/mothur-1.38.1-centos:0.1.0 \
  mothur $@
