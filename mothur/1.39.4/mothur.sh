#!/bin/bash
docker \
  run \
  --rm \
  -it \
  -v $(pwd):/share \
  --workdir=/share \
  koash/mothur-1.39.4:0.1.0 \
  mothur $@
