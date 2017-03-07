#!/bin/bash
docker \
  run \
  --rm \
  -it \
  -v $(pwd):/share \
  --workdir=/share \
  koash/mothur:0.3.1 \
  mothur $@
