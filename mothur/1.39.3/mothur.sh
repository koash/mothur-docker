#!/bin/bash
docker \
  run \
  --rm \
  -it \
  -v $(pwd):/share \
  --workdir=/share \
  koash/mothur-1.39.3:0.3.0 \
  mothur $@
