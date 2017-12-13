#!/bin/bash

DIR=$(dirname $0)
source "$DIR/../paths.sh"
source "$DIR/paths.sh"

"$OMM_CLI" build-model \
    --input-format pbf --input "$FILTERED" --output "$MODEL"
